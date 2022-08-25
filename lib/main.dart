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
                '9+5-2*8',
                style: GoogleFonts.rubik(textStyle: const TextStyle(fontSize: 35, color: Colors.black26),),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              alignment: const Alignment(1.0, 1.0),
              child: Text(
                '-2',
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
}

