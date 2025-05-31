import 'package:flutter_bloc/flutter_bloc.dart';
import 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutInitial());

  Future<void> doSomething() async {
    emit(CheckoutLoading());
    try {
      // Call usecase
      // emit(CheckoutSuccess(result));
    } catch (e) {
      emit(CheckoutFailure(e.toString()));
    }
  }
}
