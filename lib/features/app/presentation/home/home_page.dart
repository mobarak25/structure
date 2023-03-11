import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:structure/core/widget/body.dart';
import 'package:structure/core/widget/checkbox.dart';
import 'package:structure/features/app/presentation/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static Route<dynamic> route() => MaterialPageRoute<dynamic>(
        builder: (_) => const HomeScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final bloc = context.read<HomeBloc>();
          return Body(
            child: Column(
              children: [
                Text(state.name),
                CheckBoxB(
                  label: "Checkbox 1",
                  intialValue: state.check1val,
                  press: (bool val) {
                    bloc.add(GetCheck1val(value: val));
                  },
                ),
                const SizedBox(height: 10),
                CheckBoxB(
                  label: "Checkbox 2",
                  intialValue: state.check2val,
                  setState: state.setState2,
                  press: (bool val) {
                    bloc.add(GetCheck2val(value: val));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
