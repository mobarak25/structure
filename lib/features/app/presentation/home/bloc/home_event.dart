part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class GetCheck1val extends HomeEvent {
  const GetCheck1val({required this.value});
  final bool value;
}

class GetCheck2val extends HomeEvent {
  const GetCheck2val({required this.value});
  final bool value;
}

class GoToLoginScreen extends HomeEvent {}
