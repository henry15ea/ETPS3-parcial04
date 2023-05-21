import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/md_clientesModel.dart';

FirebaseFirestore baseD = FirebaseFirestore.instance;
Future<List> getClientesList() async {
  List usuarios = [];
  CollectionReference collectionReferenceUsuarios =
      baseD.collection('MD_Clientes');
  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();
  queryUsuarios.docs.forEach((documento) {
    usuarios.add(documento.data());
  });

  return usuarios;
}
//guardar usuario
Future<void> fn_addClientes(MD_Clientes dataInfo) async {
  await baseD.collection('MD_Clientes').add(
    {
      "ID_Cliente": dataInfo.getIdCliente(),
      "sNombreCliente": dataInfo.getNombre(),
      "sApellidosCliente": dataInfo.getApellidos(),
      "sDireccionCliente": dataInfo.getDireccion(),
      "sCiudadCliente": dataInfo.getCiudad()
    }
    );
}

//actualizar 
Future<void> fn_updateClientes(MD_Clientes dataInfo,String id) async {

  final clientCollection = FirebaseFirestore.instance.collection('MD_Clientes');
final querySnapshot = await clientCollection.where('ID_Cliente', isEqualTo: id).get();
final clientData = querySnapshot.docs[0].data();
await querySnapshot.docs[0].reference.update(
        {
          "ID_Cliente": dataInfo.getIdCliente(),
          "sNombreCliente": dataInfo.getNombre(),
          "sApellidosCliente": dataInfo.getApellidos(),
          "sDireccionCliente": dataInfo.getDireccion(),
          "sCiudadCliente": dataInfo.getCiudad()
        }
        );

/*
 var collection = baseD.collection('MD_Clientes');
Query query = collection.where('ID_Cliente', isEqualTo: id);

query.get().then((querySnapshot) => {
      querySnapshot.docs.forEach((doc) {
        doc.reference.update(
        {
          "ID_Cliente": dataInfo.getIdCliente(),
          "sNombreCliente": dataInfo.getNombre(),
          "sApellidosCliente": dataInfo.getApellidos(),
          "sDireccionCliente": dataInfo.getDireccion(),
          "sCiudadCliente": dataInfo.getCiudad()
        }
        );
      })
});
*/

/*
  await baseD.collection('MD_Clientes').doc(id).update(
    {
"ID_Cliente": dataInfo.getIdCliente(),
      "sNombreCliente": dataInfo.getNombre(),
      "sApellidosCliente": dataInfo.getApellidos(),
      "sDireccionCliente": dataInfo.getDireccion(),
      "sCiudadCliente": dataInfo.getCiudad()
    }
    );
    */
}

Future<void> fn_deleteClientes(String id) async {
 final clientCollection = FirebaseFirestore.instance.collection('MD_Clientes');
final querySnapshot = await clientCollection.where('ID_Cliente', isEqualTo: id).get();
final clientData = querySnapshot.docs[0].data();
await querySnapshot.docs[0].reference.delete();

 // await baseD.collection('MD_Clientes').doc(id).delete();
}
