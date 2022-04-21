import 'package:flutter/material.dart';

class OrderTutorialPage extends StatefulWidget {
  const OrderTutorialPage({Key? key}) : super(key: key);

  @override
  State<OrderTutorialPage> createState() => _OrderTutorialPageState();
}

class _OrderTutorialPageState extends State<OrderTutorialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 35.0),
      decoration: BoxDecoration(
        color: const Color(0xFF212121),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              'CARA ORDER',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'DK Pardesi',
                fontSize: 40.0,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          OrderStep(
            judul: 'Pilih paketnya!',
            deskripsi: 'Harga mulai dari Rp. 115,000',
            nomor: '01',
          ),
          SizedBox(height: 25.0),
          OrderStep(
            judul: 'Klik tombol Pesan Sekarang di bawah',
            deskripsi: '',
            nomor: '02',
          ),
          SizedBox(height: 25.0),
          OrderStep(
            judul: 'Pembayaran & Kirim Paket',
            deskripsi:
                'Setelah melakukan pembayaran, langsung kirim deh paketnya ke tempat kamu!',
            nomor: '03',
          ),
          SizedBox(height: 25.0),
          OrderStep(
            judul: 'Happy Grillin',
            deskripsi:
                'Masak paket BBQ Suki bareng orang tersayang, jangan lupa abadikan momen nya dan tag @majoegrill',
            nomor: '04',
          ),
          SizedBox(height: 25.0),
          OrderStep(
            judul: 'Alatnya kami jemput lagi!',
            deskripsi:
                'Jika sudah selesai kabarin minjoe, lalu alat akan segera kami jemput',
            nomor: '05',
          ),
        ],
      ),
    );
  }
}

class OrderStep extends StatelessWidget {
  final String judul;
  final String deskripsi;
  final String nomor;

  const OrderStep({
    Key? key,
    required this.judul,
    required this.deskripsi,
    required this.nomor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 82.0,
              height: 82.0,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Positioned(
              top: -15,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  nomor,
                  style: const TextStyle(
                      color: Color(0xFFED252F), fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20.0),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                deskripsi,
                style: const TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
