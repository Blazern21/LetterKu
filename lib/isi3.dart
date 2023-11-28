import 'package:flutter/material.dart';
import 'package:letterku/bookmarks.dart';
import 'package:letterku/sinopsisolympus.dart';

class Isi3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BookmarkScreen()));
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ],
              ),
              Container(
                width: 250,
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset('assets/messageImage_1696588827553.jpg',
                        height: 20),
                  ),
                  Container(
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.black, fontSize: 15,
                          fontWeight: FontWeight.bold),
                      child: Text("LetterKu"),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Container(
              child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                          'Olympus Heroes',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                      ),
                    ),
                  ]
              )
          ),


          Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("10 bulan setelah pertahanan Percy Jackson atas Gunung Olympus di The Last Olympian , Percy mendapati dirinya sendirian dan melarikan diri dari monster di California utara tanpa ingatannya. Dengan bimbingan Lupa , dewi serigala dan pelindung Roma kuno, dia menuju ke Perkemahan Jupiter, kamp pelatihan demigod Romawi dan menjadi tandingan Perkemahan Blasteran para demigod Yunani. Setelah tiba, dia diserang oleh Gorgon — Stheno dan Euryale — dan berhasil mempertahankan Juno yang menyamar dan kampnya dengan bantuan para penjaga yang bertugas. Setelah dilindungi oleh Percy selama serangan itu, Juno mengumumkan kedatangan Percy dengan persetujuan, mengidentifikasi dia sebagai putra Neptunus . Tidak ada yang tahu bahwa dia sebenarnya adalah putra dewa Yunani Poseidon. Dia mengatakan kepadanya secara pribadi bahwa dia hanya bisa mendapatkan kembali ingatannya dengan belajar menjadi pahlawan lagi dan berhasil bertahan dari tantangan yang dia temui di kamp. Dia segera berteman dengan Frank Zhang , putra Mars , dan Hazel Levesque , putri Pluto . Frank diturunkan juga merupakan keturunan jauh Poseidon dan cucunya Argonaut Periclymenus dengan kekuatan berubah bentuk sementara Hazel meninggal pada tahun 1940an dan baru-baru ini dibangkitkan oleh saudara tirinya Nico di Angelo . Dia diperkenalkan dengan praetor kamp, ​​​​Reina, dan pelantikan Oktavianus , yang dengan cepat tidak menyukai Percy. Oktavianus memberi tahu Percy bahwa Kitab Nubuatan hilang. Karena mereka diasingkan di Perkemahan Jupiter, Frank dan Hazel berempati dengan status Percy sebagai orang luar dan menganggap tugas mereka untuk membantunya menyesuaikan diri dan menyesuaikan diri dengan cepat terhadap rutinitas dan kepemimpinan kamp. Tapi sebelum salah satu dari mereka mempunyai kesempatan untuk mendapatkan pijakan, mereka menerima ramalan dari Mars, dewa perang Romawi, dan diperintahkan untuk melakukan pencarian untuk menyelamatkan Thanatos, dewa kematian, dari Raksasa Alcyoneus , yang merupakan bersembunyi jauh di Alaska. Selama petualangan, Hazel mengungkapkan bahwa dia terbiasa membesarkan Alcyoneus pada tahun 1940-an, namun dia mengorbankan dirinya untuk menghentikannya, mengakibatkan kebangkitan Raksasa tertunda beberapa dekade. Dalam perjalanan mereka, mereka bertemu Phineas , manusia buta yang membantu Jason , pemimpin Argonauts dalam perjalanannya, dan berteman dengan seorang harpy bernama Ella. Mereka juga melihat tiga Cyclops yang ditemui Jason Grace , Piper McLean , dan Leo Valdez di The Lost Hero . Selama perjalanan, ketiganya mengetahui bahwa dewi Gaea terbangun dari tidurnya selama beberapa milenium dengan rencana untuk menghancurkan para dewa dan dunia bersama mereka. Ketujuh anak Raksasanya sedang dibangunkan, masing-masing dicocokkan untuk melawan dewa mitranya. Setiap Raksasa memiliki kemampuan untuk melawan satu dewa dan hanya dapat dikalahkan jika para dewa dan para dewa bergabung. Percy dan teman-temannya berhasil mengalahkan Raksasa Alaska dan menyelamatkan Perkemahan Jupiter dari kehancuran. Selama perjalanan mereka, Hazel dan Frank menjadi pahlawan sejati yang tahu cara menggunakan kekuatan mereka dan memiliki kepercayaan diri. Percy mendapatkan kembali ingatannya saat mereka kembali ke Perkemahan Jupiter dan menemukan pasukan monster (termasuk Stheno, Euryale, dan tiga Cyclops) yang dipimpin oleh Polybotes menyerangnya. Percy berhasil mengalahkan Polybotes dengan bantuan Terminus , saudara tirinya Cyclops, Tyson dan anjing neraka peliharaan Percy, Ny. O'Leary. Sebagai hadiah atas keberanian Percy, dia diangkat menjadi praetor, menggantikan Jason Grace yang hilang.",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              )
          )



        ],

      ),
    );
  }
}
