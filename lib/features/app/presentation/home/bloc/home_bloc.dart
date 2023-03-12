import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:structure/core/navigator/iflutter_navigator.dart';
import 'package:structure/features/app/presentation/login/view/login_screen.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._iFlutterNavigator) : super(HomeInitial()) {
    on<GetCheck1val>(_getCheck1val);
    on<GetCheck2val>(_getCheck2val);
    on<GoToLoginScreen>(_goToLoginScreen);
  }

  final IFlutterNavigator _iFlutterNavigator;

  FutureOr<void> _getCheck1val(GetCheck1val event, Emitter<HomeState> emit) {
    emit(state.copyWith(check1val: event.value, setState2: true));
    print(state.setState2);
  }

  FutureOr<void> _getCheck2val(GetCheck2val event, Emitter<HomeState> emit) {
    emit(state.copyWith(check2val: event.value));
    print(state.setState2);
    print('////');
  }

  FutureOr<void> _goToLoginScreen(
      GoToLoginScreen event, Emitter<HomeState> emit) {
    _iFlutterNavigator.push(LoginScreen.route());
    // _iFlutterNavigator.push(NewPasswordScreen.route());
  }
}
