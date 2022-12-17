import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset('assets/images/menu_cliente.png'),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Clientes',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset('assets/images/cliente1.png'),
            ),
            Text('Empresa de software'),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset('assets/images/cliente2.png'),
            ),
            Text('Emprea de auditoria'),
          ],
        ),
      )),
    );
  }
}
