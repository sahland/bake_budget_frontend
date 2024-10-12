part of 'costs_bloc.dart';

sealed class CostsState extends Equatable {
  const CostsState();

  @override
  List<Object> get props => [];
}

final class CostsInitial extends CostsState {}
