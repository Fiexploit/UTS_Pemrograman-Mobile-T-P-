import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      // bingkai HP hanya muncul di web (Chrome), tidak di HP/emulator asli
      enabled: kIsWeb,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        appBar: AppBar(
          // (a) title diubah
          title: const Text('UTS Mobile Programming'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              // (b) warna padding/header menjadi kuning
              color: Colors.yellow,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // (c) nama lengkap dan NPM, (d) satu warna yang sama
                  Text(
                    'Acep Muhammad Alfi Husaeni',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  Text(
                    'Npm: 123005004',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ],
              ),
            ),

            // Content
            // (e) foto sendiri dari file lokal
            Expanded(
              child: Image.asset('assets/images/foto.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}