import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cost_calculation_event.dart';
part 'cost_calculation_state.dart';

class CostCalculationBloc
    extends Bloc<CostCalculationEvent, CostCalculationState> {
  CostCalculationBloc() : super(CostCalculationInitial()) {
    on<CostCalculationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
