import 'package:flutter/material.dart';

import 'login.dart';
import 'profile_dosen.dart';
import 'daftar_dosen.dart';
import 'sidebar.dart';
import 'notifikasi.dart';
import 'create_profile.dart';
import 'upload.dart';
import 'pengajuangagal.dart';
import 'pengajuanberhasil.dart';
import 'editprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kel 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFD0DFFF)),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPages(),
        '/daftardosen': (context) => DaftarDosenPages(),
        '/profile': (context) => const DosenProfilePages(),
        '/sidebar': (context) => const SideBar(),
        '/notif': (context) => NotificationPages(),
        '/create_profile':(context) => CreateDaftarDosenPages(),
        '/upload': (context) => UploadSertifPages(),
        '/gagal' : (context) => const PengajuanGagalPages(),
        '/berhasil' : (context) => const PengajuanBerhasilPages(),
        '/edit_profile' : (context) => const EditProfileDosen(),
      },
    );
  }
}