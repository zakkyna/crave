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
  Future<LazyBox> openBox(
    StorageConstants boxName,
  );
  bool isOpen(
    LazyBox _box,
  );
  Future<void> putData(
    LazyBox _box, {
    required Map<dynamic, T> data,
  });
  Future<void> putDanum(
    LazyBox _box, {
    required String key,
    required T value,
  });
  Future<void> putListData(
    LazyBox _box, {
    required IList<T> dataList,
  });

  Future<T?> getData(
    LazyBox _box, {
    required String key,
  });
  Future<IList<T>?> getListData(
    LazyBox _box,
  );
  Future<void> clear(
    LazyBox _box,
  );
  Future<void> delete(
    LazyBox _box, {
    required String key,
  });
  Future<void> deleteList(
    LazyBox _box, {
    required Iterable<dynamic> key,
  });
  ValueListenable<LazyBox> listenable(
    LazyBox _box, {
    List? keys,
  });

  Future<void> close(
    LazyBox _box,
  );
}
