import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          CarouselSlider(
            items: [
              // Slide 1
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover, // Adjusted the fit property to cover
                    image: AssetImage("image/izal.jpg"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'Rizal Arifin/124210041',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Slide 2
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover, // Adjusted the fit property to cover
                    image: AssetImage("image/nabilmakarim.jpg"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'Nabil Makarim Hasymi/124210056',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Slide 3
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover, // Adjusted the fit property to cover
                    image: AssetImage("image/radenyoka.jpg"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'Raden Yoka Fawwaz A.L/124210063',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            options: CarouselOptions(
              height: 250,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 2),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rizal Arifin/124210041',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Haloo Sobat SI perkenalkan saya Rizal Arifin, saya orang nya humble dan baik hati hehe, saya mempunyai karakter yang tidak pantang menyerah dalam situasi apapun sehingga karakter saya lah yang insyaalah membawa saya sukses di masa yang akan datang, doakan ya teman-teman :)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Nabil Makarim Hasymi/124210056',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Halloooo nama saya Nabil Makarim Hasymi, kata orang lain kalo orang yang berkacamata itu artinya dia anak yang cerdas dan rajin emang iya yah?? Berarti kalo memang adanya seperti itu, saya anak nya cerdas dan rajin dong aamiin :P',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Raden Yoka Fawwaz A.L/124210063',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Halooo gaissss hihi, kenalin saya Raden Yoka aja nanti kalo diterusin nama saya kepanjangan kaya kereta api hehe, saya punya hobi berenang, main badminton dan makan, mau tau lebih banyak tentang saya? Tanyakan saja langsung pada orang nya :P, kalo ga mau juga gpp :(',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
