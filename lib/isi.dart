import 'package:flutter/material.dart';
import 'package:letterku/sinopsis.dart';

class Isi extends StatelessWidget {
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Sinopsis()));
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
                          'Tentang Kamu',
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
                    child: Text(
                      'Seorang pengacara muda bernama Zaman Zulkarnain yang berasal dari Pulau Jawa, Indonesia. Setelah selesai menyelesaikan kuliahnya di London, Zaman bekerja di salah satu firma hukum London Thompson & Co. Zaman mendapat tugas untuk mencari ahli waris seorang perempuan yang bernama Sri Ningsih, perempuan yang berasal dari Pulau Bungin, Sumbawa, Indonesia. Sri Ningsih memiliki saham 1% pada salah satu perusahaan multinasional yang di hitung dalam rupiah warisan tersebut berjumlah senilai 19 triliyun rupiah. Namun, Zaman memiliki kendala yakni tentang Informasi mengenai Sri Ningsih yang sangat terbatas, sehingga mengharuskan Zaman untuk menelusuri kehidupan Sri Ningsih. Zaman memulai perjalanan nya dari tempat lahir Sri Ningsih di Pulau Bungin. Di sanalah Zaman bertemu dengan teman Sri Ningsih semasa dia kecil yang bernama Ode. Ode lah yang menceritakan perjalanan hidup Sri Ningsih ketika tinggak di Pulau Bungin. Ibu Sri Ningsih yang bernama Rahayu meninggal dunia ketika hendak melahitkan Sri Ningsih, selepas meninggalnya Rahayu ibu dari Sri Ningsih ayahnya Nugroho jatuh cinta dengan seorang gadis cantik di Pulau Bungin yang bernama Nusi Maratta sehingga ayah nya Nugroho menikah lagi untuk yang kedua kalinya. Pada waktu itu Nugroho pergi untuk mengantarkan barang dengan beberapa anak buah nya. Setelah selang beberapa hari setelah keberangkatan Nugroho untuk mengantarkan barang, salah seorang datang ke Pulau Bungin dan membawa kabar bahwasanya kapal Nugroho telah karam di lautan karena tidak sanggup untuk menghadapi ombak yang besar. Selepas kepergian Nugroho, ibu tiri Sri Ningsih berubah menjadi galak dan sering memukulnya sehingga menyebabkan tubuh Sri Ningsih luka dan memar-memar. Yang lebih sadis lagi adalah pada saat itu rumah Sri Ningsih mengalami kebakaran yang menyebabkan Sri Ningsih tidak memiliki harta benda apapun. Ibu tirinya meninggal pada saat terjadinya kebakaran. Sri Ningsih meupakan seorang yang pekerja keras terlihat dari pengalaman-pengalaman yang pernah ia alami. Dari mulai bekerja sebagai seorang guru, pedagang kaki lima dengan gerobak, membuka rental mobil, pekerja pabrik, hingga pada puncaknya membuka pabrik sabun nya sendiri dengan merk ‘Nurahayu’. Semuanya ia lakukan di Jakarta hingga akhirnya ia memutuskan pergi ke London dan menukar pabriknya dengan kepemilikan 1% saham multinasional sebagai gantinya. Di London Sri Ningsih bekerja sebagai sopir bus 2 tingkat yang berwarna merah. Di sanalah Sri Ningsih menemukan kekasihnya yang berkebangsaan turki. Sri Ningsih menikah dan sempat mempunyai 2 anak namun hanya dalam jangka waktu beberapa jam. Akibat perbedaan rhesus antara Sri Ningsih dan suaminya. Kebahagiaan Sri Ningsih berlangsung tidak begitu lama. Ia kembali lagi endapat cobaan dengan kematian sang suami tercinta. Dengan kematian suaminya Sri Ningsih memutuskan untuk tinggal di panti jompo yang terletak di Paris, dan juga merupakan perjalanan hidup terakhir Sri Ningsih. Perjalanan panjang yang melelahkan hingga ia harus meninggalkan semuanya. Bersembunyi dan tinggal di panti jompo. Sebelum meninggal Sri Ningsih sempat membuat surat wasiat untuk pembagian harta warisan yang ia miliki. Akhirnya Zaman dapat menyelesaikan tugas nya untuk mendapatkan ahli waris dari seorang Sri Ningsih.',
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
