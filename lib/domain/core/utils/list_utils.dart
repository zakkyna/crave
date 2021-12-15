import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class ListUtil<T> {
  late IList<T> items;
  ListUtil() {
    items = <T>[].lock;
  }
  List<T> addOrReplaceItem(T item, {bool isReplace = false}) {
    List<T> addNewItems = items.unlock;
    if (items.isEmpty) {
      addNewItems.add(item);
    } else {
      if (isReplace && items.length > 1) {
        addNewItems.removeLast();
      }
      addNewItems.add(item);
    }
    return addNewItems;
  }

  IList<T> addOrRenewList(List<T> datas, {int currentPage = 1}) {
    List<T> addNewItems = items.unlock;
    if (currentPage == 1) {
      addNewItems.clear();
    }
    addNewItems.addAll(datas);
    return addNewItems.lock;
  }
}
