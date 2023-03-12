import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:structure/core/widget/body.dart';
import 'package:structure/features/app/presentation/login/bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static Route<dynamic> route() => MaterialPageRoute<dynamic>(
        builder: (_) => const LoginScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Body(
            child: Column(
              children: const [
                Text("data"),
              ],
            ),
          );
        },
      ),
    );
  }
}
