part of 'cost_calculation_bloc.dart';

sealed class CostCalculationState extends Equatable {
  const CostCalculationState();

  @override
  List<Object> get props => [];
}

final class CostCalculationInitial extends CostCalculationState {}
