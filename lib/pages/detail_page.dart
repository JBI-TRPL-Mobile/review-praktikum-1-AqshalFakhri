import 'package:flutter/material.dart';
import 'buku.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buku book = ModalRoute.of(context)!.settings.arguments as buku ;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.judul),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(book.gambar, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              book.judul,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'by ${book.penulis}',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 16),
            Text(
              book.deskripsi,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}