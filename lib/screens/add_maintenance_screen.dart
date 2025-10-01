import 'package:flutter/material.dart';

class AddMaintenanceScreen extends StatelessWidget {
  final TextEditingController tipoController = TextEditingController();
  final TextEditingController fechaController = TextEditingController();
  final TextEditingController costoController = TextEditingController();
  final TextEditingController notasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agregar Mantenimiento")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: tipoController,
              decoration: InputDecoration(hintText: "Ingrese tipo de mantenimiento"),
            ),
            SizedBox(height: 12),
            TextField(
              controller: fechaController,
              decoration: InputDecoration(hintText: "Ingrese fecha (dd/mm/yyyy)"),
            ),
            SizedBox(height: 12),
            TextField(
              controller: costoController,
              decoration: InputDecoration(hintText: "Ingrese costo"),
            ),
            SizedBox(height: 12),
            TextField(
              controller: notasController,
              maxLines: 3,
              decoration: InputDecoration(hintText: "Ingrese detalles adicionales"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text("Guardar"),
            )
          ],
        ),
      ),
    );
  }
}
