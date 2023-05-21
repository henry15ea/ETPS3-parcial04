import 'package:flutter/material.dart';

import '../services/mdClienteServices.dart';

class ListaClientes extends StatefulWidget {
  //ListaClientes({Key? key}) : super(key: key);

  var contexto = null;
  @override
  _ListaClientesState createState() => _ListaClientesState();
}

class _ListaClientesState extends State<ListaClientes> {
  @override
  Widget build(BuildContext context) {
    
    return fn_listadoCliente(context);

  }
}

Scaffold fn_listadoCliente(BuildContext dataContex){
  return Scaffold(
    body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: FutureBuilder(
              future: getClientesList(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: ((context, index) {
                        //return Text(snapshot.data?[index]['nombre']);
                        return Dismissible(
                          key:Key(snapshot.data?[index]['ID_Cliente']),//UniqueKey(),
                          child: ListTile(
                            title: Text(snapshot.data?[index]['sNombreCliente']+" "+snapshot.data?[index]['sApellidosCliente']),
                            /* onTap: (() async {
                              print(Text(snapshot.data?[index]['nombre']));
                              print(context);
                              Navigator.pushNamed(context, '/edit',
                                  arguments:/* {
                                    "nombre":snapshot.data?[index]['nombre']
                                  }*/
                                 // ArgumentoEditar()
                                  );
                            }),*/
                        
                            onTap: (() async {
                              await Navigator.pushNamed(context, '/editCliente',
                                  arguments: {
                                    'id':snapshot.data?[index]['ID_Cliente'],
                                    'nombre':snapshot.data?[index]['sNombreCliente'],
                                    'apellido':snapshot.data?[index]['sApellidosCliente'],
                                    'dir':snapshot.data?[index]['sDireccionCliente'],
                                    'ciudad':snapshot.data?[index]['sCiudadCliente'],
                                  });
                                
                            }),

                            
                          ),

                          
                        );
                        //print("datos");
                      }));
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
            ),
          ),
          floatingActionButton: Container(
            child: ElevatedButton(
                onPressed: () {
                  // Aquí va la acción que deseas ejecutar al presionar el botón
                 
                  Navigator.pushNamed(dataContex, '/agregar');
                },
                child: Text('Presionar'),
              ),
          ),
  );
}