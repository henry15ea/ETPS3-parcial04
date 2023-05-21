import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(60.0), // Altura preferida de la AppBar
    child: AppBar(
              title: const Text(
                'Vehiculos',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 239, 243, 242),
                 
                ),
              ),
              backgroundColor: Color.fromARGB(255, 18, 67, 133),
              
              bottom: const TabBar(
                
                labelColor: Color.fromARGB(255, 255, 213, 87),
                tabs: <Widget>[
                  
                  Tab(
                    
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    icon: Icon(Icons.car_repair),
                  ),
                  Tab(
                    icon: Icon(Icons.car_rental),
                  ),
                  Tab(
                    icon: Icon(Icons.info),
                  ),
                ],
              ),
            ),
  );
}

/*

 */