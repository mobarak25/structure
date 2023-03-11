import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<GetCheck1val>(_getCheck1val);
    on<GetCheck2val>(_getCheck2val);
  }

  FutureOr<void> _getCheck1val(GetCheck1val event, Emitter<HomeState> emit) {
    emit(state.copyWith(check1val: event.value, setState2: true));
    print(state.setState2);
  }

  FutureOr<void> _getCheck2val(GetCheck2val event, Emitter<HomeState> emit) {
    emit(state.copyWith(check2val: event.value));
    print(state.setState2);
    print('////');
  }
}
