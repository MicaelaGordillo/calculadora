import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculadoramg/screens/calculator_screen.dart';
import 'bloc/calculator_bloc.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => CalculatorBloc())
        ],
        child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CalculatorScreen(),
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black
      ),
    );
  }
}