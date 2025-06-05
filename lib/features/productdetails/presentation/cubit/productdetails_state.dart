abstract class ProductdetailsState {}

class ProductdetailsInitial extends ProductdetailsState {}

class ProductdetailsLoading extends ProductdetailsState {}

class ProductdetailsSuccess extends ProductdetailsState {
  // final result;
  // Success(this.result);
}

class ProductdetailsFailure extends ProductdetailsState {
  final String error;
  ProductdetailsFailure(this.error);
}
