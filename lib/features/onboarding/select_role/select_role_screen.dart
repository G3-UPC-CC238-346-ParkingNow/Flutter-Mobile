import 'package:flutter/material.dart';

class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Select to Role',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF232943),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          children: [
            const SizedBox(height: 20),
            RoleCard(
              imagePath: 'assets/images/Conductor.png',
              description:
              'Regístrese como conductor para tener al alcance información de todos los estacionamientos en toda la ciudad',
              onTap: () {
                Navigator.pushNamed(context, '/register_driver');
              },
            ),
            const SizedBox(height: 20),
            RoleCard(
              imagePath: 'assets/images/duenho.png',
              description:
              'Regístrese como Empresa para poder facilitar la gestión de los espacios que brinda y acelerar los pagos',
              onTap: () {
                Navigator.pushNamed(context, '/register_owner');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RoleCard extends StatelessWidget {
  final String imagePath;
  final String description;
  final VoidCallback onTap;

  const RoleCard({
    super.key,
    required this.imagePath,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 12),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF5D6374),
              ),
            ),
          ],
        ),
      ),
    );
  }
}