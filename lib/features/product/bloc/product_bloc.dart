import 'dart:async';

import 'package:bake_budget_frontend/data/data.dart';
import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({
    required FlutterSecureStorage storage,
    required ProductsApiClient productsApiClient,
  })  : _storage = storage,
        _productsApiClient = productsApiClient,
        super(ProductInitialState()) {
    on<GetProductByIdEvent>(_getProductById);
    on<DeleteProductEvent>(_deleteProduct);
  }

  final FlutterSecureStorage _storage;
  final ProductsApiClient _productsApiClient;

  Future<void> _createProduct(
    CreateProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(ProductLoadingState());
    try {
      final product = await _productsApiClient.createProduct(
        event.name,
        event.weight,
      );
      emit(ProductRequestLoadedState(productsRequestModel: product));
    } catch (error) {
      emit(ProductFailureState(error));
    } finally {
      event.completer?.complete();
    }
  }

  Future<void> _getProductById(
    GetProductByIdEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(ProductLoadingState());
    try {
      final product = await _productsApiClient.getProductByID(event.id);
      emit(ProductResponseLoadedState(productsResponseModel: product));
    } catch (error) {
      emit(ProductFailureState(error));
    } finally {
      event.completer?.complete();
    }
  }

  Future<void> _deleteProduct(
    DeleteProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(ProductLoadingState());
    try {
      final product = await _productsApiClient.deleteProduct(event.id);
      emit(ProductResponseLoadedState(productsResponseModel: product));
    } catch (error) {
      emit(ProductFailureState(error));
    } finally {
      event.completer?.complete();
    }
  }

  // Future<void> _getProductPicture(GetProductPictureEvent event, Emitter<ProductState> emit,) async {
  //   emit(ProductLoadingState());
  //   try {
  //     final product = await _productsApiClient.getProductPicture(event.id);
  //     emit(ProductResponseLoadedState(productsResponseModel: product));
  //   } catch (error) {
  //     emit(ProductFailureState(error));
  //   } finally {
  //     event.completer?.complete();
  //   }
  // }
}
