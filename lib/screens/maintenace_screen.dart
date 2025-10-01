import 'package:flutter/material.dart';
import 'add_maintenance_screen.dart';

class MaintenanceScreen extends StatelessWidget {
  final List<Map<String, String>> mantenimientos = [
    {"tipo": "Cambio de aceite", "fecha": "10 de noviembre"},
    {"tipo": "Revisión de frenos", "fecha": "15 de noviembre"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mantenimiento de Moto")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMaintenanceScreen()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text("Agregar Mantenimiento"),
            ),
            SizedBox(height: 20),
            Text("Próximos Mantenimientos", style: TextStyle(fontWeight: FontWeight.bold)),
            ...mantenimientos.map((m) => ListTile(
                  title: Text(m["tipo"]!),
                  subtitle: Text("Fecha: ${m["fecha"]}"),
                )),
            SizedBox(height: 20),
            Text("Estadísticas", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Mantenimientos completados: 4"),
            Text("Próximo mantenimiento: 10 de noviembre"),
          ],
        ),
      ),
    );
  }
}
