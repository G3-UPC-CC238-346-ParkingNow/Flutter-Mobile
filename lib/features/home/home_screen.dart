import '../auth/login/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Amarillo más suave
    final Color softYellow = const Color(0xFFFFF64F);
    return Scaffold(
      backgroundColor: const Color(0xFFE9ECEF), // gris claro
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Eslogan con ícono decorativo arriba
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 16),
              child: Text(
                "Tu estacionamiento ideal,\nmás cerca que nunca.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF23272B),
                  letterSpacing: 0.1,
                ),
              ),
            ),
            // Imagen central decorada
            Container(
              margin: const EdgeInsets.only(bottom: 18),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    blurRadius: 24,
                    spreadRadius: 3,
                    offset: const Offset(0, 12),
                  ),
                ],
                border: Border.all(
                  color: Colors.grey.withOpacity(0.10),
                  width: 1.5,
                ),
              ),
              child: Image.asset(
                'assets/images/home.png',
                height: 220,
                fit: BoxFit.contain,
              ),
            ),
            // Nombre y subtítulo estilizados
            Column(
              children: [
                Text(
                  "ParkingNow",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF23272B),
                    letterSpacing: 1.3,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.13),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Encuentra tu espacio con un solo toque",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            // Botón amarillo mejorado con degradado
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 46),
              child: SizedBox(
                width: double.infinity,
                height: 58,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: LinearGradient(
                      colors: [
                        softYellow,
                        Colors.yellow[100]!,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: softYellow.withOpacity(0.23),
                        blurRadius: 10,
                        offset: const Offset(0, 7),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      foregroundColor: const Color(0xFF23272B),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 21,
                        letterSpacing: 0.2,
                      ),
                    ),
                    child: const Text("Empezar"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}