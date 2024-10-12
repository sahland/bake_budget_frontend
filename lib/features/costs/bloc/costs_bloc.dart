import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'costs_event.dart';
part 'costs_state.dart';

class CostsBloc extends Bloc<CostsEvent, CostsState> {
  CostsBloc() : super(CostsInitial()) {
    on<CostsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
