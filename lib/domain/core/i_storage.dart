import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum StorageConstants { base, articles, user, security, cache }

abstract class IStorage<T> {
  // Future close();
  Future<void> init({
    IList<TypeAdapter<T>>? adapters,
    String? subdir,
  });
  Future<void> openBox(
    StorageConstants boxName,
  );
  bool isOpen();
  Future<void> putData({
    required Map<dynamic, T> data,
  });
  Future<void> putDanum({
    required String key,
    required T value,
  });
  Future<void> putListData({
    required IList<T> dataList,
  });

  Future<T?> getData({
    required String key,
  });
  Future<IList<T>?> getListData();
  Future<void> clear();
  Future<void> delete({
    required String key,
  });
  Future<void> deleteList({
    required Iterable<dynamic> key,
  });
  ValueListenable<LazyBox> listenable({
    List? keys,
  });
}
