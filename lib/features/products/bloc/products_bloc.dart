import 'dart:async';

import 'package:bake_budget_frontend/data/data.dart';
import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({
    required FlutterSecureStorage storage,
    required ProductsApiClient productsApiClient,
  })  : _storage = storage,
        _productsApiClient = productsApiClient,
        super(ProductsInitialState()) {
    on<FindAllProductsEvent>(_findAllProducts);
  }

  final FlutterSecureStorage _storage;
  final ProductsApiClient _productsApiClient;

  Future<void> _findAllProducts(
    FindAllProductsEvent event,
    Emitter<ProductsState> emit,
  ) async {
    emit(ProductsLoadingState());
    try {
      final products = await _productsApiClient.findAllProducts();
      emit(ProductsListLoadedState(products: products));
    } catch (error) {
      emit(ProductsFailureState(error));
    } finally {
      event.completer?.complete();
    }
  }
}
