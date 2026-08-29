import 'package:mtec/features/items/models/item_model.dart';

sealed class ItemsStates {
  final List<ItemModel> listOfItems;

  ItemsStates({required this.listOfItems});
}

class InitialState extends ItemsStates {
  InitialState({required super.listOfItems});
}

class ToggleState extends ItemsStates {
  ToggleState({required super.listOfItems});
}
