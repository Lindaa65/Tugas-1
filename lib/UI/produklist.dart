import 'package:flutter/material.dart';
// ignore: unused_import
import './detail_produk.dart';

// ignore: camel_case_types
class produklist extends StatelessWidget {
  const produklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name: "Acne",
                  description:
                      "MS Glow Acne merupakan salah satu seri perawatan wajah yang diformulasikan khusus untukk membantu mengurangi bakteri p-acnes, mengatasi minyak berlebih pada wajah, merawat kulit berjerawat, dan mencegah jerawat untuk datang kembali",
                  price: 3100000,
                  image: "Acne.jpg",
                  star: 5,
                ),
              ));
            },
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "Acne",
              description: "Untuk kulit berjerawat",
              price: 3100000,
              image: "Acne.jpg",
              star: 5,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "RedJelly",
                      description:
                          " Flawless Red Jelly MS Glow adalah Gel lembut yang diaplikasikan ke wajah pada malam hari. Memiliki kandungan skin conditioning untuk membantu mengencangkan wajah dan membuat wajah tampak bersinar dan cerah memutihkan dan tampak glowing dlm semalam.",
                      price: 4200000,
                      image: "RedJelly.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "RedJelly",
                description: "Untuk mengencangkan wajah",
                price: 4200000,
                image: "RedJelly.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Serum",
                      description:
                          "Serum MS GLOW menawarkan berbagai manfaat. Mulai dari mengatasi jerawat dan komedo, mengontrol minyak berlebih hingga menyamarkan noda hitam. MS GLOW sendiri merupakan brand skincare lokal yang sudah berdiri sejak tahun 2013. Produk-produknya dikenal aman dipakai karena memiliki sertifikasi BPOM dan juga halal.",
                      price: 15500000,
                      image: "Serum.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Serum",
                description: "Untuk mengatasi jerawat, flek hitam, dan komedo",
                price: 15500000,
                image: "Serum.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Ultimate",
                      description:
                          "Deskripsi Paket Ultimate MS GLOW Rahasia wajah Awet Muda. Adalah rangkaian produk perawatan wajah yang diformulasikan khusus untuk mengatasi masalah flek dan noda di wajah. Membantu untuk terlihat lebih bersih dan membuat wajah kembali cerah.",
                      price: 10500000,
                      image: "Ultimate.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Ultimate",
                description: "Paket mencerahkan wajah",
                price: 10500000,
                image: "Ultimate.jpg",
                star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Whitening",
                      description:
                          "MS Glow Whitening Paket Perawatan Wajah merupakan paket perawatan wajah yang dapat dan sudah terbukti mengatasi kulit wajah yang kusam, tidak segar. Dengan penggunakan yang rutin dan teratur menjadikan wajah menjadi sehat, cerah bercahaya bahkan lebih putih dari sebelumnya. Wajah menjadi putih merona.",
                      price: 2500000,
                      image: "Whitening.jpg",
                      star: 2),
                ),
              );
            },
            child: ProductBox(
                name: "Whitening",
                description: "Untuk kulit kusam",
                price: 2500000,
                image: "Whitening.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
