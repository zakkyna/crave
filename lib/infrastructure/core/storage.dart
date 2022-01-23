import 'dart:typed_data';
import 'package:crave_app/domain/core/interfaces/i_storage.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStorage)
class StorageImpl<T> implements IStorage<T> {
  final HiveInterface _hive;

  StorageImpl(
    this._hive,
  );

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
  Future<LazyBox> openBox(
    StorageConstants boxName,
  ) async {
    final List<int> hiveKey = await hiveKeys;

    final _box = await _hive.openLazyBox<T>(
      describeEnum(boxName),
      encryptionCipher: HiveAesCipher(hiveKey),
    );
    debugPrint('====================Open Box=================');
    debugPrint('Database $boxName Open');
    debugPrint('=============================================');
    return _box;
  }

  @override
  Future<void> close(
    LazyBox _box,
  ) async {
    await _box.close();
    return;
  }

  @override
  Future<void> putData(
    LazyBox _box, {
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
  Future<void> putDanum(
    LazyBox _box, {
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
  Future<void> putListData(
    LazyBox _box, {
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
  Future<T?> getData(
    LazyBox _box, {
    required dynamic key,
  }) async {
    debugPrint('====================Get Data=================');
    final T? value = await _box.get(key);
    debugPrint('$value');
    debugPrint('=============================================');
    return value;
  }

  @override
  Future<IList<T>?> getListData(
    LazyBox _box,
  ) async {
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
  Future<void> clear(
    LazyBox _box,
  ) async {
    await _box.clear();
    return;
  }

  @override
  Future<void> delete(
    LazyBox _box, {
    required String key,
  }) async {
    await _box.delete(key);

    return;
  }

  @override
  Future<void> deleteList(
    LazyBox _box, {
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
  bool isOpen(
    LazyBox _box,
  ) {
    return _box.isOpen;
  }

  @override
  ValueListenable<LazyBox> listenable(
    LazyBox _box, {
    List? keys,
  }) =>
      _box.listenable(
        keys: keys,
      );
}
