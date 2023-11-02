import 'package:flutter/material.dart';
import 'package:pemrogaman_2/detail.dart';
import 'package:pemrogaman_2/halaman_bantuan.dart';
import 'package:pemrogaman_2/halaman_profil.dart';
import 'package:pemrogaman_2/halaman_rekomendasi.dart';
import 'package:pemrogaman_2/halaman_stopwatch.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey[200],
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          MenuCard(
            icon: Icons.person_2_outlined,
            title: 'Profil',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfilPage();
                  },
                ),
              );
            },
            color: Colors.teal,
          ),
          MenuCard(
            icon: Icons.lock_clock,
            title: 'Stopwatch',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StopwatchPage();
                  },
                ),
              );
            },
            color: Colors.tealAccent,
          ),
          MenuCard(
            icon: Icons.book_online,
            title: 'Rekomendasi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return rekomendasi();
                  },
                ),
              );
            },
            color: Colors.teal,
          ),
          MenuCard(
            icon: Icons.archive,
            title: 'Favorit',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return detailPage();
                  },
                ),
              );
            },
            color: Colors.tealAccent,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => bantuan()),
            );
          }
        },
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color color;

  MenuCard({
    required this.icon,
    required this.title,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: color,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15),
            Icon(
              icon,
              size: 50.0,
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
