part of 'calculator_bloc.dart';
//Son los eventos que el bloc va a esperar
//El bloc solo va a esperar los eventos que extiendan CalculatorEvent

//Clase inmutable abstracta
//Sirve para extenderla de ahí
@immutable
abstract class CalculatorEvent {}

//Evento al presionar AC
class ResetAC extends CalculatorEvent{}

//Evento al presionar DEL
class ResetDEL extends CalculatorEvent{
  final String operation;
  ResetDEL(this.operation);
}

//Evento al presionar algún caracter
class AddCharacter extends CalculatorEvent{
  final String character;
  AddCharacter(this.character);
}

//Evento al presionar igual, calcular el resultado
class Result extends CalculatorEvent{}