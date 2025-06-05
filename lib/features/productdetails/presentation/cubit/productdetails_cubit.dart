import 'package:flutter_bloc/flutter_bloc.dart';
import 'productdetails_state.dart';

class ProductdetailsCubit extends Cubit<ProductdetailsState> {
  ProductdetailsCubit() : super(ProductdetailsInitial());

  Future<void> doSomething() async {
    emit(ProductdetailsLoading());
    try {
      // Call usecase
      // emit(ProductdetailsSuccess(result));
    } catch (e) {
      emit(ProductdetailsFailure(e.toString()));
    }
  }
}
