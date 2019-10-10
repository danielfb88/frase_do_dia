import 'dart:math';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _frases = [
    "Mas, buscai primeiro o reino de Deus, e a sua justiça, e todas estas coisas vos serão acrescentadas.",
    "Não julgueis segundo a aparência, e sim pela reta justiça.",
    "Nem só de pão viverá o homem, mas de toda palavra de Deus!",
    "Tenho-vos dito isto, para que em mim tenhais paz; no mundo tereis aflições, mas tende bom ânimo; eu venci o mundo.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase";

  void _gerarFrase() {
    setState(() {
      _fraseGerada = _frases[Random().nextInt(_frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
         child: Container(
           padding: EdgeInsets.all(16),
           //width: double.infinity,
//           decoration: BoxDecoration(
//               border: Border.all(width: 3, color: Colors.amber)
//           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Image.asset("images/logo.png"),
               Text(
                 _fraseGerada,
                 textAlign: TextAlign.justify,
                 style: TextStyle(
                     fontSize: 17,
                     fontStyle: FontStyle.italic,
                     color: Colors.black
                 ),
               ),
               RaisedButton(
                 child: Text(
                   "Nova frase",
                   style: TextStyle(
                       fontSize: 25,
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                   ),
                 ),
                 color: Colors.green,
                 onPressed: _gerarFrase,
               )
             ],
           ),
         ),
      ),
    );
  }
}
