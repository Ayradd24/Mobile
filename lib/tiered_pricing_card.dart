import 'package:flutter/material.dart';

class TieredPricingCard extends StatelessWidget {
  const TieredPricingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Paket Layanan IT'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              PricingCard(
                icon: Icons.phone_android,
                packageName: 'Paket Pemula',
                description: 'Cocok untuk kebutuhan dasar.',
                price: 'Rp 1.500.000',
                duration: '/ proyek',
                features: [
                  'Landing Page Sederhana',
                  'Desain Responsif',
                  'Revisi 1 Kali',
                ],
                buttonColor: Colors.green,
              ),
              PricingCard(
                icon: Icons.web,
                packageName: 'Paket Standar',
                description: 'Pilihan tepat untuk usaha berkembang.',
                price: 'Rp 3.000.000',
                duration: '/ proyek',
                features: [
                  'Website Multi Halaman',
                  'Form Kontak',
                  'Revisi 3 Kali',
                ],
                buttonColor: Colors.orange,
              ),
              PricingCard(
                icon: Icons.laptop_mac,
                packageName: 'Paket Profesional',
                description: 'Solusi lengkap untuk kebutuhan bisnis.',
                price: 'Rp 5.000.000',
                duration: '/ proyek',
                features: [
                  'Setup Database',
                  'Akun Admin',
                  'Dukungan Prioritas',
                ],
                buttonColor: Colors.blue,
                isRecommended: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PricingCard extends StatelessWidget {
  final IconData icon;
  final String packageName;
  final String description;
  final String price;
  final String duration;
  final List<String> features;
  final Color buttonColor;
  final bool isRecommended;

  const PricingCard({
    super.key,
    required this.icon,
    required this.packageName,
    required this.description,
    required this.price,
    required this.duration,
    required this.features,
    required this.buttonColor,
    this.isRecommended = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(
                  icon,
                  size: 64,
                  color: buttonColor,
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  packageName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Center(
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: buttonColor,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(duration),
                ],
              ),
              const SizedBox(height: 20),

              ...features.map(
                (feature) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: FeatureRow(text: feature),
                ),
              ),

              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$packageName dipilih'),
                      ),
                    );
                  },
                  child: const Text('Pilih Paket'),
                ),
              ),
            ],
          ),

          if (isRecommended)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Rekomendasi',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class FeatureRow extends StatelessWidget {
  final String text;

  const FeatureRow({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 20,
        ),
        const SizedBox(width: 8),
        Expanded(child: Text(text)),
      ],
    );
  }
}