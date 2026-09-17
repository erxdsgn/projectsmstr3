import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blue.shade100,
                    backgroundImage: const NetworkImage(
                      'https://ui-avatars.com/api/?name=Erix+Agung+Wibowo&size=200&background=2196F3&color=fff',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Erix Agung Wibowo',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Teknik Informatika',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  ),
                  const Divider(height: 32),
                  _buildInfoRow(Icons.badge, 'NIM', 'E41251146'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.group, 'Golongan', 'D'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.school, 'Jurusan', 'Teknologi Informasi'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.menu_book, 'Program Studi', 'Teknik Informatika'),
                  const SizedBox(height: 12),
                  _buildInfoRow(Icons.calendar_today, 'Angkatan', '2025'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.blue),
        const SizedBox(width: 12),
        Text('$label : ', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        Expanded(child: Text(value, style: const TextStyle(fontSize: 15))),
      ],
    );
  }
}