
import 'package:flutter/material.dart';
import '../models/profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  // Data profil mahasiswa
  Profile profile = const Profile(
    nama: 'Muhammad Ridwan',
    nim: '1124160151',
    prodi: 'Software Engineering',
    kelas: 'TI 24 SE1',
    bio: 'Mahasiswa yang tertarik dengan pemrograman dan teknologi.',
    email: 'ridwan@gmail.com',
    hp: '088291392183',
    github: 'Wanzzz88',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            // Avatar profil tanpa foto
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                size: 65,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 16),

            // Nama mahasiswa
            Text(
              profile.nama,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Informasi mahasiswa
            Text(
              'NIM: ${profile.nim}',
              style: const TextStyle(fontSize: 16),
            ),

            Text(
              profile.prodi,
              style: const TextStyle(fontSize: 16),
            ),

            Text(
              'Kelas: ${profile.kelas}',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            // Informasi bio
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      'Tentang Saya',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      profile.bio,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Judul informasi kontak
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informasi Kontak',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Informasi email
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.deepPurple,
                ),
                title: const Text('Email'),
                subtitle: Text(profile.email),
              ),
            ),

            // Informasi nomor HP
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.deepPurple,
                ),
                title: const Text('Nomor HP'),
                subtitle: Text(profile.hp),
              ),
            ),

            // Informasi GitHub
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.code,
                  color: Colors.deepPurple,
                ),
                title: const Text('GitHub'),
                subtitle: Text(profile.github),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
