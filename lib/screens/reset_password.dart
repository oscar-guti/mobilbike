import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recuperar Contraseña")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ingresa tu correo electrónico para restablecer tu contraseña",
                textAlign: TextAlign.center),
            SizedBox(height: 24),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Correo electrónico",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Aquí se enviaría un correo real con Firebase Auth u otro servicio
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Se ha enviado un enlace a tu correo")),
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
              child: Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}
