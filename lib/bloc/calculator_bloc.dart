import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<ResetAC>(_resetAC);
    on<AddCharacter>(_addCharacter);
    on<ResetDEL>(_resetDEL);
    on<Result>(_resultCalculator);
  }
  //Borrar toda la operación
  void _resetAC(ResetAC event, Emitter<CalculatorState> emit) async {
    emit(CalculatorState(
        operationNumbers: "0",
        mathResult: "0"));
  }
  //Borrar el último caracter de la operación
  void _resetDEL(ResetDEL event, Emitter<CalculatorState> emit) async {
    emit(CalculatorState(
        operationNumbers: state.operationNumbers.length > 1
            ? state.operationNumbers.substring(0,state.operationNumbers.length-1)
            : "0",
        mathResult: "0"));
  }
  //-----------------------------------------------------------------------------------------
  //Agregar un caracter -- validaciones
  void _addCharacter(AddCharacter event, Emitter<CalculatorState> emit) async {
    bool aux = false;
    List<String> signos = ["+", "*", "/"];
    if (event.character == "."){
      aux = validarPunto(state.operationNumbers);
    } else if (signos.contains(event.character)){
      aux = validarSigno(state.operationNumbers);
    } else if (event.character == "-") {
      aux = validarNegativo(state.operationNumbers);
    } else {
      aux = true;
    }
    if(aux){
      emit(CalculatorState(
          operationNumbers: (state.operationNumbers == "0")
              ? (event.character == ".") ? "0${event.character}" : event.character
              : state.operationNumbers + event.character,
          mathResult: "0"));
    }
  }
  //Funcion para validar la creacion de un punto.
  bool validarPunto(String operacion){
    bool flag = true;
    List<String> anterior = ["+", "-", "*", "/", "."];
    if(anterior.contains(operacion.substring(operacion.length-1, operacion.length))){
      flag = false;
    }
    return flag;
  }
  //Funcion para validar que no haya choque de signos
  bool validarSigno(String operacion){
    bool flag = true;
    List<String> anterior = ["+", "-", "*", "/", "."];
    if(anterior.contains(operacion.substring(operacion.length-1, operacion.length))){
      flag = false;
    }
    return flag;
  }
  //Funcion para validar el buen uso del negativo
  bool validarNegativo(String operacion){
    bool flag = true;
    List<String> anterior = ["+", "."];
    if(anterior.contains(operacion.substring(operacion.length-1, operacion.length))){
      flag = false;
    }
    return flag;
  }
  //-----------------------------------------------------------------------------------------
  //Calcular el resultado de la operación
  void _resultCalculator (Result event, Emitter<CalculatorState> emit) async {
    emit(CalculatorState(
        operationNumbers: state.operationNumbers,
        mathResult: calculoResultado(state.operationNumbers)));
  }
  //Calculando el resultado de la operacion ingresada.
  String calculoResultado (String cadena){
    while (cadena.contains("*")) {
      cadena = resolverOperacion("*", cadena);
    }
    print("* lista");
    while (cadena.contains("/")) {
      cadena = resolverOperacion("/", cadena);
    }
    print("/ lista");
    if(validarResultado(cadena)){
      while (cadena.contains("+") || cadena.contains("-")) {
        cadena = resolverOperacionSumaResta(cadena);
        if(validarResultadoFinal(cadena)){
          break;
        }
      }
      print("+/- lista");
    } else {
      if(cadena[0] == "+"){
        cadena = cadena.substring(1, cadena.length);
      }
    }
    return cadena;
  }
  //Funcion para resolver las operaciones de multiplicacion y division
  String resolverOperacion (String op, String cadena){
    print(cadena);
    List<String> signos = ["+", "-", "*","/"];
    String aux = "";
    String parte1 = "";
    String parte2 = "";
    int pos1 = 0;
    for(int s=0; s<cadena.length; s++){
      if(cadena[s]==op){
        pos1 = s; break;
      }
    }
    String cadN1 = cadena.substring(0, pos1);
    double num1 = 0;
    int aux1 = 0;
    bool flag = false;
    for(int l=cadN1.length-1; l>=0; l--){
      if(signos.contains(cadN1[l])){
        num1 = double.parse(cadena.substring(l+1, cadN1.length));
        parte1 = cadena.substring(0, l+1);
        flag = true; break;
      }
      aux1 = l;
    }
    if(aux1==0){num1 = double.parse(cadN1);}
    print("Numero 1: $num1");
    String cadN2 = cadena.substring(pos1+1, cadena.length);
    double num2 = 0;
    int aux2 = 0;
    bool flag2 = false;
    for(int m=0; m<cadN2.length; m++){
      if(signos.contains(cadN2[m])){
        if(m!=0){
          num2 = double.parse(cadN2.substring(0, m));
          parte2 = cadN2.substring(m, cadN2.length);
          flag2 = true;
          break;
        }
      }
      aux2 = m;
    }
    if(aux2 == cadN2.length-1){num2 = double.parse(cadN2);}
    print("Numero 2: $num2");
    double total = 0;
    bool divo = false;
    switch (op){
      case "+": { total = num1 + num2; break;}
      case "-": { total = num1 - num2; break;}
      case "*": { total = num1 * num2; break;}
      case "/": {
        if(num2 == 0) {
          divo = true;
        } else {
          total = num1 / num2;
        }
        break;
      }
    }
    if (divo){
      aux = "Error división por 0";
    } else {
      aux = "$total";
    }
    if(parte1 != ""){
      if(parte1[parte1.length-1] == "-"){
        if(total<0){
          total = total*(-1);
          if(parte1.length>1){
            if(!signos.contains(parte1.substring(parte1.length-2, parte1.length-1))){
              parte1 = "${parte1.substring(0, parte1.length-1)}+";
            }
          } else {
            parte1 = parte1.substring(0, parte1.length-1);
          }
        }
      } else {
        if(parte1[parte1.length-1] == "+"){
          if(total<0){
            parte1 = "${parte1.substring(0, parte1.length-1)}-";
            total = total*(-1);
          }
        }
      }
    }
    aux = "$parte1$total$parte2";
    print("$parte1$total$parte2");
    return aux;
  }
  //FUncion para validar que exista alguna operacion de suma o resta.
  bool validarResultado (String cadena){
    bool flag = false;
    for(int p=1; p<cadena.length; p++){
      if(cadena[p]=="+"){
        flag = true;
        break;
      } else {
        if(cadena[p]=="-"){
          flag = true;
          break;
        }
      }
    }
    return flag;
  }
  //Funcion para resolver las operaciones de suma y resta.
  String resolverOperacionSumaResta (String cadena){
    int aux = 0;
    int k = 0;
    if(cadena[0]=="-"){
      k = 1;
    }
    double num1 = 0;
    for(int t=k;t<cadena.length;t++){
      if(cadena[t]=="+" || cadena[t]=="-"){
        aux = t;
        num1 = double.parse(cadena.substring(0, t));
        break;
      }
    }
    int aux2 = 0;
    print("Numero 1: $num1");
    double num2 = 0;
    for(int e=aux+1; e<cadena.length; e++){
      if(cadena[e]=="+"){
        aux2 = e;
        num2 = double.parse(cadena.substring(aux+1, e));
        break;
      } else {
        if(cadena[e]=="-"){
          aux2 = e;
          num2 = double.parse(cadena.substring(aux+1, e));
          break;
        }
      }
      aux2 = e;
    }
    String parte2 = "";
    if(aux2 == (cadena.length-1)){
      num2 = double.parse(cadena.substring(aux+1, cadena.length));
    } else {
      parte2 = cadena.substring(aux2, cadena.length);
    }
    print("Numero 2: $num2");
    double total = 0;
    if(cadena[aux]=="+"){
      total = num1 + num2;
    } else {
      total = num1 - num2;
    }
    cadena = "$total$parte2";
    print("Cadena nueva: $cadena");
    return cadena;
  }
  //Funcion para validar que se haya llegado al ultimo resultado.
  bool validarResultadoFinal (String cadena){
    bool flag = false;
    int n = 0, m = 0;
    if(cadena[0]=="-"){
      m = 1;
    }
    for(int p=m; p<cadena.length; p++){
      if(cadena[p]=="+" || cadena[p]=="-"){
        n++;
      }
    }
    if(n==0){
      flag = true;
    }
    return flag;
  }
}
