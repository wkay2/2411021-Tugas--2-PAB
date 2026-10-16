import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Perkuliahan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFD3EAD3),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HalamanUtama(),
        '/sks': (context) => const HalamanSKS(),
      },
    );
  }
}

// ==========================================
// HALAMAN PERTAMA (GAMBAR 1)
// ==========================================
class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.black12),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profilw.jpeg', // Diubah ke nama file foto Anda
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.person, size: 60, color: Colors.grey);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFC4F4C4),
                        border: Border.all(color: Colors.green.shade200),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PERKULIAHAN WAHYU KRISADRIYANTO',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'PROGRAM STUDI INFORMATIKA',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'NIM 2411021',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 2,
                color: Colors.black,
              ),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDD1E0),
                    border: Border.all(color: Colors.green.shade300, width: 2),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.school, size: 50, color: Colors.purple);
                          },
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'UNIVERSITAS MULIA',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC70039),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 2,
                color: Colors.black,
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Material(
                  color: Colors.white,
                  elevation: 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/sks');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: const Text(
                        'SKS',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==========================================
// HALAMAN KEDUA / SKS
// ==========================================
class HalamanSKS extends StatelessWidget {
  const HalamanSKS({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> mataKuliahList = [
      {'no': '1', 'kode': '110700', 'nama': 'KRIPTOGRAFI', 'sks': '3', 'kelas': 'IFB5J'},
      {'no': '2', 'kode': '111000', 'nama': 'PEMROGRAMAN APLIKASI BERGERAK', 'sks': '3', 'kelas': 'IFB5J'},
      {'no': '3', 'kode': '111100', 'nama': 'PENALARAN KOMPUTER', 'sks': '3', 'kelas': 'IFB5J'},
      {'no': '4', 'kode': '000800', 'nama': 'PENULISAN DAN PUBLIKASI ILMIAH', 'sks': '2', 'kelas': 'IFB5J'},
      {'no': '5', 'kode': '111300', 'nama': 'ROBOTIKA', 'sks': '3', 'kelas': 'IFB5J'},
      {'no': '6', 'kode': '111400', 'nama': 'SIMULASI DAN GAME KOMPUTER', 'sks': '3', 'kelas': 'IFB5J'},
      {'no': '7', 'kode': '111500', 'nama': 'SISTEM MANAJEMEN BASIS DATA', 'sks': '3', 'kelas': 'IFB5J'},
      {'no': '8', 'kode': '111600', 'nama': 'TEKNOLOGI APLIKASI BERGERAK', 'sks': '3', 'kelas': 'IFB5J'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD3EAD3),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Kartu Rencana Studi',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDD1E0),
                  border: Border.all(color: Colors.green.shade300, width: 2),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.school, size: 40, color: Colors.purple);
                        },
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'UNIVERSITAS MULIA',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFC70039),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(8),
              color: const Color(0xFFEED5D5),
              child: const Text(
                'KARTU RENCANA STUDI : SEMESTER GANJIL 2026/2027',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                color: Colors.white,
              ),
              child: Table(
                border: TableBorder.all(color: Colors.grey.shade300),
                columnWidths: const {
                  0: FlexColumnWidth(0.8),
                  1: FlexColumnWidth(1.5),
                  2: FlexColumnWidth(4.0),
                  3: FlexColumnWidth(0.8),
                  4: FlexColumnWidth(1.2),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    children: const [
                      Padding(padding: EdgeInsets.all(6.0), child: Text('No.', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                      Padding(padding: EdgeInsets.all(6.0), child: Text('Kode MK', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                      Padding(padding: EdgeInsets.all(6.0), child: Text('Nama MK', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                      Padding(padding: EdgeInsets.all(6.0), child: Text('SKS', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                      Padding(padding: EdgeInsets.all(6.0), child: Text('Kelas', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                    ],
                  ),
                  ...mataKuliahList.map((mk) {
                    return TableRow(
                      children: [
                        Padding(padding: const EdgeInsets.all(6.0), child: Text(mk['no']!, style: const TextStyle(fontSize: 10))),
                        Padding(padding: const EdgeInsets.all(6.0), child: Text(mk['kode']!, style: const TextStyle(fontSize: 10))),
                        Padding(padding: const EdgeInsets.all(6.0), child: Text(mk['nama']!, style: const TextStyle(fontSize: 10))),
                        Padding(padding: const EdgeInsets.all(6.0), child: Text(mk['sks']!, style: const TextStyle(fontSize: 10))),
                        Padding(padding: const EdgeInsets.all(6.0), child: Text(mk['kelas']!, style: const TextStyle(fontSize: 10))),
                      ],
                    );
                  }),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Showing 1 to 8 of 8 entries',
              style: TextStyle(fontSize: 10, color: Colors.black54),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                border: Border.all(color: Colors.grey.shade600),
              ),
              child: const Text(
                'Jumlah SKS : 23',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}