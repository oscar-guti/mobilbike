import 'package:flutter/material.dart';

class DocumentsScreen extends StatelessWidget {
  final List<Map<String, String>> documentos = [
    {"nombre": "Seguro de Vehículo", "fecha": "15/01/2024"},
    {"nombre": "Revisión Técnica", "fecha": "20/03/2024"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vencimiento de Documentos")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...documentos.map((d) => ListTile(
                  title: Text(d["nombre"]!),
                  subtitle: Text("Vencimiento: ${d["fecha"]}"),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text("Agregar Documento"),
            ),
          ],
        ),
      ),
    );
  }
}
