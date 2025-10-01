import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(radius: 30, child: Icon(Icons.person, size: 30)),
              title: Text("Juan Pérez", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text("Motociclista"),
            ),
            SizedBox(height: 20),
            Text("Datos Personales", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Correo Electrónico: juanperez@example.com"),
            Text("Teléfono: +1 (999) 111-0000"),
            SizedBox(height: 20),
            Text("Información del Vehículo", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Moto: Yamaha R1"),
            Text("Modelo: 2020"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text("Editar Perfil"),
            ),
          ],
        ),
      ),
    );
  }
}
