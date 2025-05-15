import 'package:flutter/material.dart';

class DriverDashboardScreen extends StatelessWidget {
  const DriverDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF232943)),
      ),
      drawer: const _DriverDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: ListView(
          children: [
            // Avatar
            Center(
              child: CircleAvatar(
                radius: 46,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/Conductor.png'),
              ),
            ),
            const SizedBox(height: 22),
            // Card: Lugares favoritos
            _DashboardCard(
              title: 'Reserva en tus lugares favoritos',
              buttonText: 'Lugares marcados como favoritos',
              icon: Icons.star_border_outlined,
              onTap: () {
                // Acción para favoritos
              },
            ),
            const SizedBox(height: 20),
            // Card: Ofertas semanales
            _DashboardCard(
              title: 'Ofertas Semanales',
              buttonText: 'Ofertas de estacionamientos',
              icon: Icons.local_offer_outlined,
              onTap: () {
                // Acción para ofertas
              },
            ),
            const SizedBox(height: 20),
            // Card: Mapa de Google Maps
            _DashboardMapCard(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final String title;
  final String buttonText;
  final IconData icon;
  final VoidCallback onTap;

  const _DashboardCard({
    Key? key,
    required this.title,
    required this.buttonText,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF232943),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF232943),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                ),
                icon: Icon(icon, color: Colors.yellow[700]),
                label: Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                onPressed: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardMapCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reserva algo ya',
              style: TextStyle(
                color: Color(0xFF232943),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 14),
            // Placeholder para el mapa
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E3EA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Mapa de Google Maps',
                  style: TextStyle(
                      color: Color(0xFF232943), fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DriverDrawer extends StatelessWidget {
  const _DriverDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            // User info
            CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/Conductor.png'),
            ),
            const SizedBox(height: 12),
            const Text(
              'John Smith',
              style: TextStyle(
                color: Color(0xFF232943),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Lima, Perú',
              style: TextStyle(
                color: Color(0xFF828282),
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 20),
            // Drawer items
            _DrawerItem(icon: Icons.home_outlined, text: 'Inicio', onTap: () {}),
            _DrawerItem(icon: Icons.bookmark_border, text: 'Reservas', onTap: () {}),
            _DrawerItem(icon: Icons.support_agent, text: 'Soporte', onTap: () {}),
            _DrawerItem(icon: Icons.track_changes, text: 'Seguimiento', onTap: () {}),
            _DrawerItem(icon: Icons.settings_outlined, text: 'Configuración', onTap: () {}),
            _DrawerItem(icon: Icons.notifications_none, text: 'Notificación', onTap: () {}),
            const Spacer(),
            // Logout
            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
                ),
                onTap: () {
                  // Lógica de logout aquí
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const _DrawerItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF232943)),
      title: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF232943),
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }
}