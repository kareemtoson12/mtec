import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/items/cubit/states.dart';
import 'package:mtec/features/items/models/item_model.dart';

class ItemCubit extends Cubit<ItemsStates> {
  ItemCubit()
    : super(
        InitialState(
          listOfItems: [
            ItemModel(itemName: 'item one', isFavorite: true),
            ItemModel(itemName: 'item two', isFavorite: false),
            ItemModel(itemName: 'item three', isFavorite: true),
            ItemModel(itemName: 'item four', isFavorite: false),
          ],
        ),
      );
  void toggle(int index) {
    final List<ItemModel> listOfItems = state.listOfItems;
    listOfItems[index].isFavorite = !listOfItems[index].isFavorite;
    emit(ToggleState(listOfItems: listOfItems));
  }
}
