import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  /* Future<void> viewProducts() async {
    emit(HomeLoading());
    try {
      final List<Product> products = [
        Product(
            id: 1,
            name: "T-shirt",
            imageurl: "assets/images/T-shirt Polo.jpg",
            price: 100,
            description: "This is T-shirt Polo"),
        Product(
            id: 2,
            name: "Casual",
            imageurl: "assets/images/Men-s-Two-Piece-Business-Suit-Bl.jpg",
            price: 1000,
            description: "This is A Men-s-Two-Piece-Business-Suit"),
        Product(
            id: 3,
            name: "T-shirt",
            imageurl: "assets/images/preimum.jpg",
            price: 90,
            description: "This is T-shirt Preimum"),
      ];

      emit(HomeSuccess(products)); // ✅ مرر المنتجات هنا
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }*/
}
