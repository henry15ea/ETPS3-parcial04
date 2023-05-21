import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/md_clienteVehiculo.dart';

FirebaseFirestore baseD = FirebaseFirestore.instance;
Future<List> getUsuarios() async {
  List usuarios = [];
  CollectionReference collectionReferenceUsuarios =
      baseD.collection('MD_ClienteVehiculo');
  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();
  queryUsuarios.docs.forEach((documento) {
    usuarios.add(documento.data());
  });

  return usuarios;
}
//guardar usuario
Future<void> fn_addClienteVehiculo(MD_ClienteVehiculo dataInfo) async {
  await baseD.collection('MD_ClienteVehiculo').add(
    {
      "ID_Cliente": dataInfo.getIdCliente(),
      "ID_Vehiculo": dataInfo.getIdVehiculo(),
      "sKilometros": dataInfo.getSKilometros(),
      "sMatricula": dataInfo.getSMatricula()
    }
    );
}

//actualizar 
Future<void> fn_updateClienteVehiculo(MD_ClienteVehiculo dataInfo,String id) async {
  await baseD.collection('MD_ClienteVehiculo').doc(id).update(
    {
      "ID_Cliente": dataInfo.getIdCliente(),
      "ID_Vehiculo": dataInfo.getIdVehiculo(),
      "sKilometros": dataInfo.getSKilometros(),
      "sMatricula": dataInfo.getSMatricula()
    }
    );
}

Future<void> fn_deleteClienteVehiculo(String id) async {
  await baseD.collection('MD_ClienteVehiculo').doc(id).delete();
}
/**
 * usuario:[{
 * nombre:"Tomas"
 * },
 * {
 * nombre:"Luis"
 * },
 * {
 * nombre:"Maria"
 * }
 * ]
 * 
 */