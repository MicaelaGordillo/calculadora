part of 'calculator_bloc.dart';

//Como va a lucir nuestro estado
//En una clase en la cual se almacena la infomación que no
//se quiere cambiar.


//En esta clase es en donde se va a manejar la información.
class CalculatorState {

  final String mathResult;//Resultado de la operación
  final String operationNumbers;//Cadena que contiene la operación

  //Valores inicializados
  CalculatorState({
    this.mathResult = "30",
    this.operationNumbers = "20+10"
  });

}