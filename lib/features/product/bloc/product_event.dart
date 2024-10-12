part of 'product_bloc.dart';

sealed class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object?> get props => [];
}

class CreateProductEvent extends ProductEvent {
  const CreateProductEvent({
    required this.name,
    required this.weight,
    this.completer,
  });

  final String name;
  final double weight;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        name,
        weight,
        completer,
      ];
}

class AddAnIngredientEvent extends ProductEvent {
  const AddAnIngredientEvent({
    required this.ingredientId,
    required this.productId,
    required this.weight,
    this.completer,
  });

  final int ingredientId;
  final int productId;
  final double weight;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        ingredientId,
        productId,
        weight,
        completer,
      ];
}

class GetProductByIdEvent extends ProductEvent {
  const GetProductByIdEvent({
    required this.id,
    required this.completer,
  });

  final int id;
  final Completer<void>? completer;
}

class GetProductPictureEvent extends ProductEvent {
  const GetProductPictureEvent({
    required this.id,
    this.completer,
  });

  final int id;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        id,
        completer,
      ];
}

class DeleteProductPictureEvent extends ProductEvent {
  const DeleteProductPictureEvent({
    required this.id,
    required this.minioPictureName,
    this.completer,
  });

  final int id;
  final String minioPictureName;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        id,
        minioPictureName,
        completer,
      ];
}

class DeleteIngredientInProductEvent extends ProductEvent {
  const DeleteIngredientInProductEvent({
    required this.ingredientId,
    required this.productId,
    this.completer,
  });

  final int ingredientId;
  final int productId;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        ingredientId,
        productId,
        completer,
      ];
}

class DeleteProductEvent extends ProductEvent {
  const DeleteProductEvent({
    required this.id,
    this.completer,
  });

  final int id;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        id,
        completer,
      ];
}

class FindAllIngredientsInProductEvent extends ProductEvent {
  const FindAllIngredientsInProductEvent({
    required this.id,
    this.completer,
  });

  final int id;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        id,
        completer,
      ];
}

class UpdateIngredientInProductEvent extends ProductEvent {
  const UpdateIngredientInProductEvent({
    required this.ingredientId,
    required this.productId,
    required this.weight,
    this.completer,
  });

  final int ingredientId;
  final int productId;
  final double weight;
  final Completer<void>? completer;

  @override
  List<Object?> get props => [
        ingredientId,
        productId,
        weight,
        completer,
      ];
}
