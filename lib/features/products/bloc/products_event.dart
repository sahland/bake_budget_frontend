part of 'products_bloc.dart';

sealed class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object?> get props => [];
}

class FindAllProductsEvent extends ProductsEvent {
  const FindAllProductsEvent({
    this.completer,
  });

  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        completer,
      ];
}
