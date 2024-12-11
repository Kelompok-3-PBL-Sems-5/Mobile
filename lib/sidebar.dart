import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[700],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[700],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.blue[700],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'e-CertJTI Dosen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white),
              title: Text('Dashboard',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/daftardosen');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Profile',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.file_copy, color: Colors.white),
              title: Text('Pengajuan Sertifikasi',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/upload');
              },
            ),
            ListTile(
              leading: Icon(Icons.file_copy, color: Colors.white),
              title: Text('Pengajuan Pelatihan',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/gagal');
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.white),
              title: Text('Notifikasi',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/notif');
              },
            ),
          ],
        ),
      ),
    );
  }
}