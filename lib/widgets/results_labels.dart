import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculadoramg/bloc/calculator_bloc.dart';

import '../widgets/line_separator.dart';
import '../widgets/main_result.dart';
import '../widgets/sub_result.dart';


class ResultsLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
            children: [
              SubResult(text: state.operationNumbers),
              LineSeparator(),
              MainResultText(text: state.mathResult),
            ]
        );
      },
    );
  }
}