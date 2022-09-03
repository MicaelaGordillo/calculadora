import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:calculadoramg/bloc/calculator_bloc.dart';
import 'package:calculadoramg/widgets/results_labels.dart';

import '../widgets/calc_button.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(child: Container()),
              ResultsLabels(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: 'C',
                    bgColor: const Color(0xFF39FF14),
                    fColor: const Color(0xFFFFFFFF),
                    onPressed: () => calculatorBloc.add(ResetAC()),
                  ),
                  CalculatorButton(
                    text: 'DEL',
                    bgColor: const Color(0xFFFF8000),
                    fColor: const Color(0xFFFFFFFF),
                    onPressed: () => calculatorBloc.add(ResetDEL(CalculatorState().operationNumbers)),
                  ),
                  CalculatorButton(
                    text: '',
                    bgColor: const Color(0xFFA0025C),
                    onPressed: () => {},
                  ),
                  CalculatorButton(
                    text: '/',
                    bgColor: const Color(0xFFA0025C),
                    fColor: const Color(0xFFFFFFFF),
                    onPressed: () => calculatorBloc.add(AddCharacter("/")),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '7',
                    onPressed: () => calculatorBloc.add(AddCharacter("7")),
                  ),
                  CalculatorButton(
                    text: '8',
                    onPressed: () => calculatorBloc.add(AddCharacter("8")),
                  ),
                  CalculatorButton(
                    text: '9',
                    onPressed: () => calculatorBloc.add(AddCharacter("9")),
                  ),
                  CalculatorButton(
                    text: '*',
                    bgColor: const Color(0xFFA0025C),
                    fColor: const Color(0xFFFFFFFF),
                    onPressed: () => calculatorBloc.add(AddCharacter("*")),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '4',
                    onPressed: () => calculatorBloc.add(AddCharacter("4")),
                  ),
                  CalculatorButton(
                    text: '5',
                    onPressed: () => calculatorBloc.add(AddCharacter("5")),
                  ),
                  CalculatorButton(
                    text: '6',
                    onPressed: () => calculatorBloc.add(AddCharacter("6")),
                  ),
                  CalculatorButton(
                    text: '+',
                    bgColor: const Color(0xFFA0025C),
                    fColor: const Color(0xFFFFFFFF),
                    onPressed: () => calculatorBloc.add(AddCharacter("+")),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '1',
                    onPressed: () => calculatorBloc.add(AddCharacter("1")),
                  ),
                  CalculatorButton(
                    text: '2',
                    onPressed: () => calculatorBloc.add(AddCharacter("2")),
                  ),
                  CalculatorButton(
                    text: '3',
                    onPressed: () => calculatorBloc.add(AddCharacter("3")),
                  ),
                  CalculatorButton(
                    text: '-',
                    bgColor: const Color(0xFFA0025C),
                    fColor: const Color(0xFFFFFFFF),
                    onPressed: () => calculatorBloc.add(AddCharacter("-")),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '0',
                    big: true,
                    onPressed: () => calculatorBloc.add(AddCharacter("0")),
                  ),
                  CalculatorButton(
                    text: '.',
                    onPressed: () => calculatorBloc.add(AddCharacter(".")),
                  ),
                  CalculatorButton(
                    text: '=',
                    bgColor: const Color(0xFFA0025C),
                    fColor: const Color(0xFFFFFFFF),
                    onPressed: () => calculatorBloc.add(Result()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}