import 'dart:typed_data';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:crave_app/domain/core/i_storage.dart';

class StorageImpl<T> implements IStorage<T> {
  late LazyBox<T> _box;

  late HiveInterface _hive;

  StorageImpl() {
    _hive = Hive;
  }

  @override
  Future<void> init({
    IList<TypeAdapter<T>>? adapters,
    String? subdir,
  }) async {
    await _hive.initFlutter(subdir);
    if (adapters != null) {
      for (final adapter in adapters) {
        _hive.registerAdapter(adapter);
      }
    }
  }

  @override
  Future<void> openBox(
    StorageConstants boxName,
  ) async {
    final List<int> hiveKey = await hiveKeys;

    _box = await _hive.openLazyBox<T>(
      describeEnum(boxName),
      encryptionCipher: HiveAesCipher(hiveKey),
    );
    debugPrint('====================Open Box=================');
    debugPrint('Database $boxName Open');
    debugPrint('=============================================');
  }

  Future close() async {
    await _box.close();
    return;
  }

  @override
  Future<void> putData({
    required Map<dynamic, T> data,
  }) async {
    try {
      debugPrint('====================Put Data=================');
      debugPrint('$data');
      debugPrint('=============================================');
      await _box.putAll(data);
      debugPrint('================Put Data Success=============');
    } catch (e) {
      debugPrint('================Put Data Failed==============');
      debugPrint(e.toString());
      debugPrint('=============================================');
    }
    return;
  }

  @override
  Future<void> putDanum({
    required dynamic key,
    required T value,
  }) async {
    try {
      debugPrint('====================Put Data=================');
      debugPrint('$value');
      debugPrint('=============================================');
      await _box.put(key, value);
      debugPrint('================Put Data Success=============');
    } catch (e) {
      debugPrint('================Put Data Failed==============');
      debugPrint(e.toString());
      debugPrint('=============================================');
    }
    return;
  }

  @override
  Future<void> putListData({
    required IList<T> dataList,
  }) async {
    try {
      debugPrint('====================Put Data=================');
      dataList.map((val) async {
        debugPrint('$val');
        await _box.add(val);
      });
      debugPrint('=============================================');
    } catch (e) {
      debugPrint('================Put Data Failed==============');
      debugPrint(e.toString());
      debugPrint('=============================================');
    }

    return;
  }

  @override
  Future<T?> getData({
    required dynamic key,
  }) async {
    debugPrint('====================Get Data=================');
    final T? value = await _box.get(key);
    debugPrint('$value');
    debugPrint('=============================================');
    return value;
  }

  @override
  Future<IList<T>?> getListData() async {
    IList<T> data = <T>[].lock;
    for (int x = 0; x < _box.length; x++) {
      final T? item = await _box.getAt(x);
      if (item != null) {
        data = data.add(item);
      }
    }

    return data;
  }

  @override
  Future<void> clear() async {
    await _box.clear();
    return;
  }

  @override
  Future<void> delete({
    required String key,
  }) async {
    await _box.delete(key);

    return;
  }

  @override
  Future<void> deleteList({
    required Iterable<dynamic> key,
  }) async {
    await _box.deleteAll(key);

    return;
  }

  Future<List<int>> get hiveKeys async {
    const FlutterSecureStorage ss = FlutterSecureStorage();
    String? stringKey = await ss.read(key: 'boxKey');
    List<int> hiveKey;
    if (stringKey != null) {
      hiveKey = stringKey.codeUnits;
    } else {
      hiveKey = Hive.generateSecureKey();
      final Uint8List bytes = Uint8List.fromList(hiveKey);
      stringKey = String.fromCharCodes(bytes);
      await ss.write(key: 'boxKey', value: stringKey);
    }
    return hiveKey;
  }

  @override
  bool isOpen() {
    return _box.isOpen;
  }

  @override
  ValueListenable<LazyBox> listenable({
    List? keys,
  }) =>
      _box.listenable(
        keys: keys,
      );
}
