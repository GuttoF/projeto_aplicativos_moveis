import 'package:flutter/material.dart';
import 'package:projeto_aplicacoes_moveis/home.dart';
import 'package:projeto_aplicacoes_moveis/busca_cep.dart';
import 'package:projeto_aplicacoes_moveis/bitcoin.dart';
import 'package:projeto_aplicacoes_moveis/tela_empresa.dart';
import 'package:projeto_aplicacoes_moveis/tela_servicos.dart';
import 'package:projeto_aplicacoes_moveis/tela_clientes.dart';
import 'package:projeto_aplicacoes_moveis/tela_contato.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: AppBarTheme(
        titleSpacing: 0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    routes: {
      '/buscacep': (context) => BuscaCep(),
      '/bitcoin': (context) => Bitcoin(),
      '/empresa': (context) => TelaEmpresa(),
      '/servicos': (context) => TelaServico(),
      '/clientes': (context) => TelaCliente(),
      '/contato': (context) => TelaContato(),
    },
  ));
}