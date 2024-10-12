part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object?> get props => [];
}

final class ProductInitialState extends ProductState {}

final class ProductLoadingState extends ProductState {}

final class ProductResponseLoadedState extends ProductState {
  const ProductResponseLoadedState({
    required this.productsResponseModel,
  });

  final ProductsResponseModel productsResponseModel;

  @override
  List<Object?> get props => [
        productsResponseModel,
      ];
}

final class ProductRequestLoadedState extends ProductState {
  const ProductRequestLoadedState({
    required this.productsRequestModel,
  });

  final ProductsRequestModel productsRequestModel;

  @override
  List<Object?> get props => [
        productsRequestModel,
      ];
}

final class ProductFailureState extends ProductState {
  const ProductFailureState(
    this.error,
  );

  final Object error;

  @override
  List<Object?> get props => [error];
}
