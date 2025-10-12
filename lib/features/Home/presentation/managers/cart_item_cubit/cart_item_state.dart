part of 'cart_item_cubit.dart';

@freezed
class CartItemState with _$CartItemState {
  const factory CartItemState.initial() = _InitialCartItemState;

  const factory CartItemState.updated(CartItemEntity cartItemEntity) = UpdatedCartItemState;

}
