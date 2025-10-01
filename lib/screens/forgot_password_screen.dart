import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
            Text(
              "Ingresa tu correo electrónico para restablecer tu contraseña",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),

            // Campo de correo
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Correo electrónico",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 24),

            // Botón de enviar
            ElevatedButton(
              onPressed: () {
                // Aquí podrías conectar Firebase u otro backend
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Se ha enviado un enlace a tu correo")),
                );
                Navigator.pop(context); // vuelve al login
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
