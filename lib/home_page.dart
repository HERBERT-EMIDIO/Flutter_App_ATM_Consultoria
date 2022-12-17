import 'package:app_atm_consultoria/tela_cliente.dart';
import 'package:app_atm_consultoria/tela_contato.dart';
import 'package:app_atm_consultoria/tela_empresa.dart';
import 'package:app_atm_consultoria/tela_servico.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaEmpresa(),
      ),
    );
  }

  void _abrirServico() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaServico(),
      ),
    );
  }

  void _abrirCliente() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaCliente(),
      ),
    );
  }

  void _abrirContato() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaContato(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset('assets/images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset('assets/images/menu_servico.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset('assets/images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset('assets/images/menu_contato.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
