import 'package:flutter/material.dart';
import 'package:letterku/bookmarks.dart';
import 'package:letterku/sinopsis.dart';

class Isi2 extends StatelessWidget {
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
                          'Negeri Para Bedebah',
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
                        child: Text("Thomas, seorang konsultan keuangan profesional sekaligus pendiri perusahaan konsultasi keuangan terkemuka berlabel Thomas & Co. yang serba misterius. Kemampuanya dalam bidang ekonomi tidak diragukan lagi, ia sering diundang sebagai pembicara pertemuan-pertemuan besar di dunia. Namun ketika ditelusuri latar belakangnya, semua gelap. Ia seorang anak yatim piatu yang dibesarkan di asrama. Mengenyam pendidikan di sekolah berasrama tersebut sebelum menyelesaikan master ekonomi di luar negeri. Tidak ada yang tahu, keluarganya. Di lain sisi, sebuah bank nasional bernama bank Semesta tersandung masalah keuangan yang serius. Pemiliknya, Mr Liem terbukti melakukan pelanggaran terhadap bisnis perbankan yang dimilikinya tersebut. Oleh karena itu, sejak malam polisi telah mengepung rumahnya, tetapi karena istri tuan rumah tiba-tiba pingsan, penangkapan itu urung dilakukan. Dalam keadaan terdesak itulah, Mr Liem melalui pesuruhnya Ram menghubungi Thomas. Bukan, bukan karena Thomas seorang konsultan keuangan, melainkan karena Thomas memiliki hubungan darah dengan Mr Liem. Sebenarnya Thomas enggan membantu, ia semenjak tragedi pada masa lalu memutuskan membenci Mr Liem. Namun mendengar tante Liem dalam kondisi yang buruk, maka tidak ada jalan lain selain menolongnya. Mulai dari sini, latar belakang keluarga Thomas mulai terbongkar. Melalui rencana yang matang, Thomas berhasil meloloskan Mr Liem dari kepungan polisi. Dengan begini, bank Semesta masih bisa diselamatkan karena pemiliknya masih belum tertangkap dan polisi tidak akan berani mengumumkan penangkapan Mr Liem sebelum mereka memegang kerah bajunya. Setelah mengamankan Mr Liem, rencana Thomas berikutnya adalah melakukan apapun agar pemerintah menalangi bank Semesta agar tidak gulung tikar. Memang dari awal bank ini sudah banyak masalah, ditambah lagi pemiliknya melakukan banyak sekali pelanggaran keuangan. Namun musibah bank semesta ini banyak pihak yang bermain di belakangnya. Sengaja sekali mengambil keuntungan dari ketidakberuntungan. Thomas segera bergerak, waktunya tidak lebih dari 3 hari. Hal pertama yang ia lakukan adalah menggiring opini massa. Ia mengundang beberapa wartawan bisnis dan membicarakan sebuah istilah bernama dampak sistematis. Yaitu ketika sebuah bank ditutup akan memengaruhi kepercayaan nasabah bank lain. Dan rush besar-besaran akan terjadi, sehingga saat itu juga sistem keuangan negara akan gulung tikar, disusul negara-negara lain satu persatu. Karena kita tahu, sistem keuangan dunia terhubung bagaikan jaring laba-laba, satu saja tumbang, maka efeknya terdampak ke semuanya. Opini ini lebih menggiring masyarakat untuk menyelamatkan bank Semesta daripada mengalami keambrukan sistem keuangan di seluruh negara. Akan tetapi dari beberapa media yang diundang, seorang reporter muda bernama Julia menangkap rencana Thomas. Ia mengetahui bahwa Thomas adalah related party dari pemilik bank semesta, dan pendapat dari orang yang berstatus demikian tidak akan diperhitungkan dalam media. Dari situlah Thomas bercerita bahwa ia memang keluarga Mr Liem, lebih tepatnya keponakan. Ayahnya bernama Edward, meninggal bersama ibunya karena terpanggang di rumah yang terbakar ketika ia kecil. Waktu itu bisnis keluarga sedang sangat sulit. Arisan berantai yang digagas Liem dan Edward tersendat, mengakibatkan masa menumpuk di luar rumah. Dengan pengungkit kecil saja, massa diluar bisa menghancurkan apa pun di depan mereka. Untunglah pihak kepolisian segera datang. Namun merekalah penjahat sesungguhnya. Setelah meminta surat-surat tanah dan rumah sebagai jaminan, komandan polisi justru meminta anak buahnya untuk pergi. Maka masa di luar sudah tak tertahankan, mereka mengamuk dan membakar rumah keluarga besar Thomas. Opa, Mr Liem dan istrinya berhasil melarikan diri, tetapi naas orang tua Thomas tak terselamatkan. Setelah mendengar cerita tersebut, akhirnya Julia mau membantu Thomas, dan misi mereka untuk menyelamatkan bank semesta kembali dimulai. Tak sedikit rintangan yang mereka hadapi, apalagi status Thomas saat itu adalah tersangka yang melarikan buronan besar. Maka seluruh kesatuan polisi dikerahkan untuk menangkapnya. Rentetan senjata, hujan peluru, kepungan petugas, menjadi rintangan yang harus Thomas hadapi. Masih ada beberapa bidak yang harus dikuasai, diantaranya ada menteri, deputi bank, kepala badan pengelola pinjaman, dan pangeran partai berkuasa. Dengan memanfaatkan link yang ia punya, satu demi satu bidak berhasil dikuasai.",
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
