part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _InitialCartState;

  const factory CartState.loading() = LoadingCartState;
  const factory CartState.success({required List<CartItemEntity> cartItems}) = SuccessCartState;
  const factory CartState.failure({required String errorMessage}) = FailureCartState;

  const factory CartState.cartItemAdded() = CartItemAddedState;
  const factory CartState.cartItemRemoved() = CartItemRemovedState;
  const factory CartState.updatedCart() = UpdatedCartState;
}
