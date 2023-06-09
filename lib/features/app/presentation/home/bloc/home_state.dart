part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.name = "ali",
    this.isHide = true,
    this.check1val = false,
    this.check2val = false,
    this.setState2 = false,
  });

  final String name;
  final bool isHide;
  final bool check1val;
  final bool check2val;
  final bool setState2;

  HomeState copyWith({
    String? name,
    bool? isHide,
    bool? check1val,
    bool? check2val,
    bool? setState2,
  }) {
    return HomeState(
      name: name ?? this.name,
      isHide: isHide ?? false,
      check1val: check1val ?? this.check1val,
      check2val: check2val ?? this.check2val,
      setState2: setState2 ?? false,
    );
  }

  @override
  List<Object> get props => [name, isHide, check1val, check2val, setState2];
}

class HomeInitial extends HomeState {}
