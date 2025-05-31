import 'package:e_commerce/features/home/data/models/home_model.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailure extends HomeState {
  final String error;

  HomeFailure(this.error);

  @override
  List<Object?> get props => [error];
}

class HomeSuccess extends HomeState {
  final List<ProductModel> products;

  HomeSuccess(this.products);

  @override
  List<Object?> get props => [products];
}
