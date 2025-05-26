import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Bitcoin extends StatefulWidget {
  const Bitcoin({super.key});

  @override
  BitcoinState createState() => BitcoinState();
}

class BitcoinState extends State<Bitcoin> {
  String _preco = "0";

  void _recuperarPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    
    setState(() {
      _preco = retorno["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Bitcoin"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/bitcoin.png",
                width: 200,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "R\$ " + _preco,
                  style: TextStyle(
                    fontSize: 35
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                ),
                onPressed: _recuperarPreco,
                child: Text(
                  "Atualizar",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}