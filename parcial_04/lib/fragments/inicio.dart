import 'package:flutter/material.dart';
import 'package:parcial_04/modules/appbar.dart';

import 'lst_clientes.dart';

class incio extends StatelessWidget {
  const incio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          initialIndex: 0,
          length: 4,
          child: Scaffold(
            appBar: myAppBar(),
            body: TabBarView(
              children: <Widget>[
                
                Container(
                    child: ListaClientes(),
                ),
                Center(
                  child:Container(
                  color: Colors.black,
                ),
                ),
                Center(
                  child: Container(
                  color: Colors.black,
                ),
                ),
                 Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text("Nombre :", style: TextStyle(fontSize: 20)),
                            Text("Henry Ernesto Aquino Guzma" , style: TextStyle(fontSize: 20)),
                            Text("25-5347-2013" , style: TextStyle(fontSize: 20))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}