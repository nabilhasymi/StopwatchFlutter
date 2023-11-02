import 'package:flutter/material.dart';
import 'package:pemrogaman_2/main.dart';

class bantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pusat Bantuan'),
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            FAQItem(
              question: 'Bagaimana cara menggunakan fitur profile?',
              answer:
                  'Anda dapat menekan tombol profile dan masuk ke menu profile, anda dapat melihat daftar kelompok kami dengan menggeser layar.',
            ),
            FAQItem(
              question: 'Bagaimana cara menggunakan fitur stopwatch?',
              answer:
                  'Anda dapat menekan tombol stopwatch dan masuk ke dalam menu stopwatch, anda dapat memulai hitungan, behenti, dan menyimpan waktu lap selagi stopwatch berjalan.',
            ),
            FAQItem(
              question: 'Bagaimana cara menggunakan fitur rekomendasi?',
              answer:
                  'Anda dapat menekan tombol rekomendasi dan masuk ke dalam menu rekomendasi, anda dapat melihat daftar rekomendasi kami dan memilih untuk masuk ke websitenya sesuai pilihan anda .',
            ),
            FAQItem(
              question: 'Bagaimana cara menggunakan fitur favorit?',
              answer:
                  'Anda dapat menekan tombol favorit dan masuk ke dalam menu favorit, anda dapat melihat daftar rekomendasi dan memilih salah satu atau beberapa sebagai list favorit dengan menekan tombol hati yang ada.',
            ),
            FAQItem(
              question: 'Apakah layanan kami berbayar?',
              answer: 'Tidak, layanan kami sepenuhnya gratis.',
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(answer),
        ],
      ),
    );
  }
}
