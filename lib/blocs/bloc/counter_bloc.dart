import 'package:counter_app_bloc/blocs/bloc/counter_event.dart';
import 'package:counter_app_bloc/blocs/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(state.counterValue + 1));
    });

    on<DecrementEvent>(
      (event, emit) {
        emit((CounterState(state.counterValue - 1)));
      },
    );
  }
}
