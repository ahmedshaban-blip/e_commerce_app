abstract class CheckoutState {}

class CheckoutInitial extends CheckoutState {}

class CheckoutLoading extends CheckoutState {}

class CheckoutSuccess extends CheckoutState {
  // final result;
  // Success(this.result);
}

class CheckoutFailure extends CheckoutState {
  final String error;
  CheckoutFailure(this.error);
}
