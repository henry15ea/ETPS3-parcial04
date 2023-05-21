import 'package:flutter/material.dart';

import '../../models/md_clientesModel.dart';
import '../../services/mdClienteServices.dart';

class addUser extends StatefulWidget {
  const addUser({super.key});

  @override
  State<addUser> createState() => _addUserState();
}

class _addUserState extends State<addUser> {
  TextEditingController _idController = TextEditingController();
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _apellidosController = TextEditingController();
  TextEditingController _direccionController = TextEditingController();
  TextEditingController _ciudadController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Actualizar Datos Clientes"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Center(
              child: const Text(
                'Datos',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: _idController,
              decoration: InputDecoration(hintText: 'Ingrese id'),
              readOnly: false,
            ),
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(hintText: 'Ingrese nombre'),
            ),
            TextField(
              controller: _apellidosController,
              decoration: InputDecoration(hintText: 'Ingrese apellidos'),
            ),
            TextField(
              controller: _direccionController,
              decoration: InputDecoration(hintText: 'Ingrese direccion'),
            ),
            TextField(
              controller: _ciudadController,
              decoration: InputDecoration(hintText: 'Ingrese ciudad'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  //asignamos los datos del cliente
                  MD_Clientes miCliente = MD_Clientes();
                  miCliente.setIdCliente(_idController.text);
                  miCliente.setNombre(_nombreController.text);
                  miCliente.setApellidos(_apellidosController.text);
                  miCliente.setDireccion(_direccionController.text);
                  miCliente.setCiudad(_ciudadController.text);

                  await fn_addClientes(miCliente).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child: Text("Agregar")),
          ],
        ),
      ),
    );
  }
}
