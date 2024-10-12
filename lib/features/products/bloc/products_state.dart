part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object?> get props => [];
}

final class ProductsInitialState extends ProductsState {}

final class ProductsLoadingState extends ProductsState {}

final class ProductsListLoadedState extends ProductsState {
  const ProductsListLoadedState({
    required this.products,
  });

  final List<ProductsResponseModel> products;

  @override
  List<Object?> get props => [products];
}

final class ProductsFailureState extends ProductsState {
  const ProductsFailureState(
    this.error,
  );

  final Object error;

  @override
  List<Object?> get props => [error];
}
