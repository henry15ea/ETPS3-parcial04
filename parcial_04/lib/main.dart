import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'fragments/clientes/addCliente.dart';
import 'fragments/clientes/updateCliente.dart';
import 'fragments/inicio.dart';

// '/': (context) => incio()

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
final List<Tab> tabs = <Tab>[
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
    Tab(text: 'Tab 3'),
    Tab(text: 'Tab 4'),
  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
        '/': (context) => incio(),
        '/editCliente':(context) => UpdateUser(),
        '/agregar':(context) => addUser(),
        // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
        // '/detalle': (context) => detailsgame(),
      },
      
    );
  }
}
