import 'package:flutter/material.dart';

class DetailKatalog extends StatefulWidget {
  final String nama;
  final String detail;
  final String harga;
  final IconData icon;
  final Color warna;

  const DetailKatalog({
    super.key,
    required this.nama,
    required this.detail,
    required this.harga,
    required this.icon,
    required this.warna,
  });

  @override
  State<DetailKatalog> createState() => _DetailKatalogState();
}

class _DetailKatalogState extends State<DetailKatalog> {
  bool sudahDipilih = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Katalog'),
        backgroundColor: widget.warna,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              widget.icon,
              size: 100,
              color: widget.warna,
            ),
            const SizedBox(height: 20),
            Text(
              widget.nama,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.harga,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: widget.warna,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: widget.warna.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                widget.detail,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  sudahDipilih = !sudahDipilih;
                });
              },
              icon: Icon(
                sudahDipilih ? Icons.check_circle : Icons.shopping_cart,
              ),
              label: Text(
                sudahDipilih ? 'Paket Sudah Dipilih' : 'Pilih Paket',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.warna,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              sudahDipilih
                  ? 'Pilihan paket berhasil disimpan.'
                  : 'Tekan tombol untuk memilih paket.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}