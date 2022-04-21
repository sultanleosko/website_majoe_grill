import 'package:flutter/material.dart';

class PricelistPage extends StatefulWidget {
  const PricelistPage({Key? key}) : super(key: key);

  @override
  State<PricelistPage> createState() => _PricelistPageState();
}

class _PricelistPageState extends State<PricelistPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 35.0),
      decoration: const BoxDecoration(
        color: Color(0xFF212121),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              'PRICELIST',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'DK Pardesi',
                fontSize: 40.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text('S'),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text('S'),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text('S'),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          YakinikuCard(
            namapaket: 'images/couple_yakiniku.png',
            hargapaket: 'images/harga_couple_yakiniku.png',
            qtyitem01: '250gr',
            qtyitem02: '250gr',
            qtyitem03: '2 pcs',
            qtyitem04: '1 botol',
            qtyitem05: '1 pcs',
          ),
          SizedBox(height: 20.0),
          YakinikuCard(
            namapaket: 'images/rame_yakiniku.png',
            hargapaket: 'images/harga_rame_yakiniku.png',
            qtyitem01: '500gr',
            qtyitem02: '250gr',
            qtyitem03: '2 pcs',
            qtyitem04: '2 botol',
            qtyitem05: '1 pcs',
          ),
          SizedBox(height: 20.0),
          YakinikuCard(
            namapaket: 'images/super_rame_yakiniku.png',
            hargapaket: 'images/harga_super_rame_yakiniku.png',
            qtyitem01: '1 kg',
            qtyitem02: '500gr',
            qtyitem03: '3 pcs',
            qtyitem04: '3 botol',
            qtyitem05: '2 pcs',
          ),
        ],
      ),
    );
  }
}

class YakinikuCard extends StatelessWidget {
  final String namapaket;
  final String hargapaket;
  final String qtyitem01;
  final String qtyitem02;
  final String qtyitem03;
  final String qtyitem04;
  final String qtyitem05;

  const YakinikuCard({
    Key? key,
    required this.namapaket,
    required this.hargapaket,
    required this.qtyitem01,
    required this.qtyitem02,
    required this.qtyitem03,
    required this.qtyitem04,
    required this.qtyitem05,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
            color: Color(0xFFED252F),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  namapaket,
                  width: 250.0,
                ),
              ),
              Center(
                child: Image.asset(
                  hargapaket,
                  width: 90.0,
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MenuItem(
                          quantity: qtyitem01,
                          item: 'Daging Shortplate',
                        ),
                        MenuItem(
                          quantity: qtyitem02,
                          item: 'Ayam Slice',
                        ),
                        MenuItem(
                          quantity: qtyitem03,
                          item: 'Sosis Sapi Jumbo',
                        ),
                        //
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MenuItem(
                        quantity: qtyitem04,
                        item: 'Saus',
                      ),
                      MenuItem(
                        quantity: qtyitem05,
                        item: 'Selada',
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Alat :',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const Text(
                'Kompor Portable, Grill Pan, Capitan, Kuas, Sumpit',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25.0)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Paket 2 Orang'.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20.0),
                  primary: const Color(0xFFED252F),
                ),
                child: Text(
                  'Pesan Sekarang'.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String quantity;
  final String item;

  const MenuItem({
    Key? key,
    required this.quantity,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          quantity,
          style: const TextStyle(color: Colors.white),
        ),
        const Text(' '),
        Text(
          item,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
