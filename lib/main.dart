import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String operation = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(236, 217, 228, 1), //Cambia el color de fondo
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Iguala los espacios entre elementos de la columna
          mainAxisSize: MainAxisSize.max, //Tome toda la pantalla
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 10, right: 20),
              alignment: const Alignment(1.0, 1.0),
              child: Text(
                operation,
                style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 35, color: Colors.black26),),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              alignment: const Alignment(1.0, 1.0),
              child: Text(
                result,
                style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 40, color: Colors.black),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Iguala los espacios entre elementos de la fila
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "";
                        result = "";
                      });
                    },
                    color: const Color.fromRGBO(0, 187, 45, 1),
                    textColor: Colors.white,
                    child: Text("C", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        int n = operation.length-1;
                        result = "";
                        operation = operation.substring(0, n);
                      });
                    },
                    color: const Color.fromRGBO(247, 94, 37, 1),
                    textColor: Colors.white,
                    child: Text("DEL", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: () {},
                    color: const Color.fromRGBO(160,2,92, 1),
                    textColor: Colors.white,
                    child: Text("", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        int n = operation.length-1;
                        String ant = operation.substring(n, n+1);
                        if (ant != "." && ant != "+" && ant != "*" && ant != "/" && ant != "-"){
                          operation = "$operation/";
                        }
                      });
                    },
                    color: const Color.fromRGBO(160,2,92, 1),
                    textColor: Colors.white,
                    child: Text("/", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Iguala los espacios entre elementos de la fila
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "${operation}7";
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("7", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "${operation}8";
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("8", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "${operation}9";
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("9", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        int n = operation.length-1;
                        String ant = operation.substring(n, n+1);
                        if (ant != "." && ant != "+" && ant != "*" && ant != "/" && ant != "-"){
                          operation = "$operation*";
                        }
                      });
                    },
                    color: const Color.fromRGBO(160,2,92, 1),
                    textColor: Colors.white,
                    child: Text("*", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Iguala los espacios entre elementos de la fila
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      onPressed: (){
                        setState((){
                          operation = "${operation}4";
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.black,
                      child: Text("4", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      onPressed: (){
                        setState((){
                          operation = "${operation}5";
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.black,
                      child: Text("5", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      onPressed: (){
                        setState((){
                          operation = "${operation}6";
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.black,
                      child: Text("6", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      onPressed: (){
                        setState((){
                          int n = operation.length-1;
                          String ant = operation.substring(n, n+1);
                          if (ant != "." && ant != "+" && ant != "*" && ant != "/" && ant != "-"){
                            operation = "$operation+";
                          }
                        });
                      },
                      color: const Color.fromRGBO(160,2,92, 1),
                      textColor: Colors.white,
                      child: Text("+", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Iguala los espacios entre elementos de la fila
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "${operation}1";
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("1", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "${operation}2";
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("2", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "${operation}3";
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("3", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        int n = operation.length-1;
                        if(n==-1) {
                          operation = "$operation-";
                        } else {
                          String ant = operation.substring(n, n+1);
                          if (ant != "." && ant != "+" && ant != "-"){
                            operation = "$operation-";
                          }
                        }
                      });
                    },
                    color: const Color.fromRGBO(160,2,92, 1),
                    textColor: Colors.white,
                    child: Text("-", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Iguala los espacios entre elementos de la fila
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        operation = "${operation}0";
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("0", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: (){
                      setState((){
                        int n = operation.length-1;
                        String ant = operation.substring(n, n+1);
                        if (ant != "." && ant != "+" && ant != "*" && ant != "/" && ant != "-"){
                          if(validarPunto(operation)){
                            operation = "$operation.";
                          }
                        }
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text(".", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    onPressed: () {
                      setState((){
                        result = calculoResultado(operation);
                      });
                    },
                    color: const Color.fromRGBO(160,2,92, 1),
                    textColor: Colors.white,
                    child: Text("=", style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 20))),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

  bool validarPunto(String cadena){
    bool flag = false;
    int aux = 0;
    for(int i = cadena.length-1; i>=0; i--){
      if(cadena[i] == "+" || cadena[i] == "-" || cadena[i] == "*" || cadena[i] == "/"){
        flag = true;
        break;
      } else if (cadena[i] == "."){
        break;
      }
      aux++;
    }
    if(aux==cadena.length){
      flag = true;
    }
    return flag;
  }

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

  String resolverOperacion (String op, String cadena){
    print(cadena);
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
      switch (cadN1[l]){
        case "+": {
          num1 = double.parse(cadena.substring(l+1, cadN1.length));
          parte1 = cadena.substring(0, l+1);
          flag = true; break;
        }
        case "-": {
          num1 = double.parse(cadena.substring(l+1, cadN1.length));
          parte1 = cadena.substring(0, l+1);
          flag = true; break;
        }
        case "*": {
          num1 = double.parse(cadena.substring(l+1, cadN1.length));
          parte1 = cadena.substring(0, l+1);
          flag = true; break;
        }
        case "/": {
          num1 = double.parse(cadena.substring(l+1, cadN1.length));
          parte1 = cadena.substring(0, l+1);
          flag = true; break;
        }
        default: break;
      }
      if(flag){ break;}
      aux1 = l;
    }
    if(aux1==0){ num1 = double.parse(cadN1);}
    print("Numero 1: $num1");
    //------------------------------------------------------------
    String cadN2 = cadena.substring(pos1+1, cadena.length);
    double num2 = 0;
    int aux2 = 0;
    bool flag2 = false;
    for(int m=0; m<cadN2.length; m++){
      switch (cadN2[m]){
        case "+": {
          num2 = double.parse(cadN2.substring(0, m));
          parte2 = cadN2.substring(m, cadN2.length);
          flag2 = true; break;
        }
        case "-": {
          if(m != 0) {
            num2 = double.parse(cadN2.substring(0, m));
            parte2 = cadN2.substring(m, cadN2.length);
            flag2 = true;
          }
          break;
        }
        case "*": {
          num2 = double.parse(cadN2.substring(0, m));
          parte2 = cadN2.substring(m, cadN2.length);
          flag2 = true; break;
        }
        case "/": {
          num2 = double.parse(cadN2.substring(0, m));
          parte2 = cadN2.substring(m, cadN2.length);
          flag2 = true; break;
        }
        default: break;
      }
      if(flag2){ break;}
      aux2 = m;
    }
    if(aux2 == cadN2.length-1){ num2 = double.parse(cadN2);}
    print("Numero 2: $num2");
    double total = 0;
    bool divo = false;
    switch (op){
      case "+": { total = num1 + num2; break;}
      case "-": { total = num1 - num2; break;}
      case "*": { total = num1 * num2; break;}
      case "/": {
        if(num2 == 0) { divo = true;
        } else { total = num1 / num2;
        } break;
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
          parte1 = "${parte1.substring(0, parte1.length-1)}+";
          total = total*(-1);
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

