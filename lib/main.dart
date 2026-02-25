import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color bgDark = Color(0xFF121417);
    const Color cardDark = Color(0xFF1C1F26);
    const Color primaryGold = Color(0xFFF7AA33);
    const Color greyText = Color(0xFF9EA3AE);

    return Scaffold(
      backgroundColor: bgDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xFF2D241C)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search,
                    size: 80,
                    color: Colors.lightBlueAccent,
                  ),
                  Text(
                    'Share',
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -2,
                    ).copyWith(color: primaryGold),
                  ),
                  Text(
                    'Sistema de objetos perdidos',
                    style: const TextStyle(
                      fontSize: 16,
                    ).copyWith(color: greyText),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ingresa a tu cuenta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildLabel("INSTITUCIÓN EDUCATIVA"),
                  _buildTextField(
                    hint: "San José",
                    prefixIcon: Icons.school,
                    backgroundColor: cardDark,
                  ),
                  const SizedBox(height: 20),
                  _buildLabel("CORREO INSTITUCIONAL"),
                  _buildTextField(
                    hint: "usuario@institucion.edu.co",
                    backgroundColor: cardDark,
                  ),
                  const SizedBox(height: 20),
                  _buildLabel("CONTRASEÑA"),
                  _buildTextField(
                    hint: "********",
                    isPassword: true,
                    backgroundColor: cardDark,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryGold,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          text: '¿Olvidaste tu contraseña? ',
                          style: TextStyle(color: greyText),
                          children: [
                            TextSpan(
                              text: 'Recuperar',
                              style: TextStyle(
                                color: primaryGold,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      'Acceso exclusivo para la comunidad educativa',
                      style: TextStyle(color: Colors.white38, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF9EA3AE),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hint,
    IconData? prefixIcon,
    bool isPassword = false,
    required Color backgroundColor,
  }) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor,
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white38),
        prefixIcon: prefixIcon != null
            ? const Icon(Icons.school, color: Colors.orangeAccent)
            : null,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
