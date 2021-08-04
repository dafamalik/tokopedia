import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/daftarPembelian.dart';
import 'package:tokopedia/model/menuBannerModel.dart';
import 'package:tokopedia/model/menuPromosiModel.dart';
import 'package:tokopedia/model/menuUtamaModel.dart';
import 'package:tokopedia/widget/cardMenuBanner.dart';
import 'package:tokopedia/widget/cardMenuPromosi.dart';
import 'package:tokopedia/widget/cardMenuUtama.dart';

class TokopediaView extends StatefulWidget {


  @override
  _TokopediaViewState createState() => _TokopediaViewState();
}

class _TokopediaViewState extends State<TokopediaView> {

  var dataMenuUtama = [];
  var dataMenuPromosi = [];
  var dataMenuBanner = [];

void getDatamenuUtama() {
  dataMenuUtama.add(MenuUtamaModel(
      name: "Official Store",
      image: "asset/image/official.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Lihat Semua",
      image: "asset/image/all.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Makanan & Minuman",
      image: "asset/image/makanan.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Top up & Tagihan",
      image: "asset/image/tagihan.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Kesehatan",
      image: "asset/image/kesehatan.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Rumah Tangga",
      image: "asset/image/furnitune.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Keuangan",
      image: "asset/image/moneyBag.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "travel & Intertainment",
      image: "asset/image/travel.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Mainan & Hobbi",
      image: "asset/image/toy.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "olahraga",
      image: "asset/image/olahraga.png"));

  dataMenuUtama.add(MenuUtamaModel(
      name: "Electronic",
      image: "asset/image/electronic.png"));

  setState(() {
    dataMenuUtama = dataMenuUtama;
  });
}

  void getDataPromosi() {
    dataMenuPromosi.add(MenuPromosiModel(
      name: "Bangga Lokal",
      image: "asset/image/lokal.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Bazar Hari Ini",
        image: "asset/image/bazar.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Live Shopping",
        image: "asset/image/live.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Belanja Harian",
        image: "asset/image/market.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Panen Telur",
        image: "asset/image/egg.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Bayar Di Tempat",
        image: "asset/image/cash.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Keuangan",
        image: "asset/image/moneyBag.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Travel & Intertainment",
        image: "asset/image/travel.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Mainan & Hobi",
        image: "asset/image/toy.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Olahraga",
        image: "asset/image/olahraga.png"));

    dataMenuPromosi.add(MenuPromosiModel(
        name: "Elektronik",
        image: "asset/image/electronic.png"));

  setState(() {
    dataMenuPromosi = dataMenuPromosi;
  });
}

void getDataBanner() {
  dataMenuBanner.add(MenuBannerModel(
    image: "asset/image/pantai.jpg"));

  dataMenuBanner.add(MenuBannerModel(
      image: "asset/image/city.jpg"));

  dataMenuBanner.add(MenuBannerModel(
      image: "asset/image/montain.jpg"));

  setState(() {
    dataMenuBanner = dataMenuBanner;
  });
}

  //   {"name": "Official Store", "image": "asset/image/official.png"},
  //   {"name": "Lihat Semua", "image": "asset/image/all.png"},
  //   {"name": "Makanan & Minuman", "image": "asset/image/makanan.png"},
  //   {"name": "Top-Up & Tagihan", "image": "asset/image/tagihan.png"},
  //   {"name": "Kesehatan", "image": "asset/image/kesehatan.png"},
  //   {"name": "Rumah Tangga", "image": "asset/image/furnitune.png"},
  //   {"name": "Keuangan", "image": "asset/image/moneyBag.png"},
  //   {"name": "Travel & Entertainment", "image": "asset/image/travel.png"},
  //   {"name": "Mainan & Hobi", "image": "asset/image/toy.png"},
  //   {"name": "Olahraga", "image": "asset/image/olahraga.png"},
  //   {"name": "Elektronik", "image": "asset/image/electronic.png"}
  // ];

  // var dataBanner = [
  //   {"image": "asset/image/pantai.jpg"},
  //   {"image": "asset/image/city.jpg"},
  //   {"image": "asset/image/montain.jpg"},
  // ];

  // var dataMenuPromosi = [
  //   {"name": "Bangga Lokal", "image": "asset/image/lokal.png"},
  //   {"name": "Bazar Hari Ini", "image": "asset/image/bazar.png"},
  //   {"name": "Live Shopping", "image": "asset/image/live.png"},
  //   {"name": "Belanja Harian", "image": "asset/image/market.png"},
  //   {"name": "Panen Telur", "image": "asset/image/egg.png"},
  //   {"name": "Bayar Di Tempat", "image": "asset/image/cash.png"},
  //   {"name": "Keuangan", "image": "asset/image/moneyBag.png"},
  //   {"name": "Travel & Entertainment", "image": "asset/image/travel.png"},
  //   {"name": "Mainan & Hobi", "image": "asset/image/toy.png"},
  //   {"name": "Olahraga", "image": "asset/image/olahraga.png"},
  //   {"name": "Elektronik", "image": "asset/image/electronic.png"}
  // ];

  void selectPromotion(MenuPromosiModel menuPromosiModel) {
     print(menuPromosiModel.name);

     Navigator.of(context).push(
       MaterialPageRoute(builder: (context) => DaftarPembelian(menuPromosiModel: menuPromosiModel))
     );
  }

  Widget customAppbar() {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: "Cari Humidifier",
                    border: InputBorder.none),
              ),
            ),
          ),
          IconButton(
              iconSize: 26,
              color: Colors.white,
              icon: Icon(Icons.notifications_active_sharp),
              onPressed: () => {print("press")}),
          IconButton(
              iconSize: 26,
              color: Colors.white,
              icon: Icon(Icons.shopping_cart_sharp),
              onPressed: () => {print("press")}),
          IconButton(
              iconSize: 26,
              color: Colors.white,
              icon: Icon(Icons.menu),
              onPressed: () => {print("press")}),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      height: 190,
      padding: EdgeInsets.only(top: 48, left: 8, right: 8),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)
          )
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
              top: 0,
              left: 8,
              right: 8,
              child: customAppbar()
          ),
          Positioned(
            top: 28,
            left: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.only(top: 16),
              height: 60,
              child: InkWell(
                onTap: () => {print("address clicked")},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text("Di kirim ke ", style: TextStyle(color: Colors.white)),
                    Text("Dafamalik",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                    )
                    //sdsf
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -60,
            left: 8,
            right: 8,
            child: Card(
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Image(
                                  image: AssetImage("asset/image/saldo.png"),
                                  height: 30,
                                  fit: BoxFit.fill,
                                  width: 30
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Rp 0", style: TextStyle(
                                  fontWeight: FontWeight.bold
                                // color: Colors.white
                              )), Text("Top-Up OVO", style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold
                              ))],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Image(
                                  image: AssetImage("asset/image/bebasOngkir.png"),
                                  height: 30,
                                  fit: BoxFit.fill,
                                  width: 30
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Bebas Ongkir", style: TextStyle(
                                  fontWeight: FontWeight.bold
                                // color: Colors.white
                              )), Text("4X lagi")],
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Image(
                                  image: AssetImage("asset/image/point.png"),
                                  height: 30,
                                  fit: BoxFit.fill,
                                  width: 30
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Rp 20", style: TextStyle(
                                  fontWeight: FontWeight.bold
                                // color: Colors.white
                              )), Text("2 Points")],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Image(
                                  image: AssetImage("asset/image/cupon.png"),
                                  height: 30,
                                  fit: BoxFit.fill,
                                  width: 30
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Kupon Saya", style: TextStyle(
                                  fontWeight: FontWeight.bold
                                // color: Colors.white
                              )), Text("1 Kupon baru")],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget menuUtama() {
    return Container(
      margin: EdgeInsets.only(top: 90),
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataMenuUtama.length,
        itemBuilder: (context, index) {
          return CardMenuUtama(menuUtamaModel: dataMenuUtama[index]
            );
          }
      ),
    );

  }

  Widget banner() {
    return Container(
      height: 150,
      margin:  EdgeInsets.only(top: 25),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: dataMenuBanner.length,
          itemBuilder: (context, index) {
            return CardMenuBanner(menuBannerModel: dataMenuBanner[index]);
          }),
    );
  }

  Widget menuPromosi() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dataMenuPromosi.length,
          itemBuilder: (Context, index) {
            return CardMenuPromosi(menuPromosiModel: dataMenuPromosi[index]);
          }
      ),
    );

  }

  Widget kejarDiskon() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 16, right: 16),
            child: Text("Kejar Diskon",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold)
              ,),
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text("Berakhir Dalam"),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Icon(Icons.access_time),
                      Text("01:00:00")
                    ],
                  ),
                ),
                Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.only(left: 32),
                      onPressed: () => {
                        print("See all")
                      },
                      child: Text("Lihat Semua"),
                    ))
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    child: Container(
                      height: 170 ,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.green, Colors.blueAccent]
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {

                          return Card(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              width: 120,
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage("asset/image/paimon.jpg"),
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  Text("Rp. 4000"),
                                  Row(
                                    children: [
                                      Text("87%"),
                                      Text("Rp. 30.000")
                                    ],
                                  ),
                                  Text("Jakarta Utara")
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {

    getDatamenuUtama();
    getDataPromosi();
    getDataBanner();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              menuUtama(),
              banner(),
              menuPromosi(),
              kejarDiskon()
            ],
          ),
        ),
      ),
    );
  }
}