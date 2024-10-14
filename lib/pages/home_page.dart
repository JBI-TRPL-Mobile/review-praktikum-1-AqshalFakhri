import 'package:flutter/material.dart';
import 'package:template_project/pages/buku.dart';

class HomePage extends StatelessWidget {
  final List<buku> books = [
  buku(
  judul: 'Si Utan & Kawan-Kawan Dongeng Hewan Asli Indonesia',
  penulis: 'Okta Abriyanti',
  deskripsi: 'Buku tentang si utan dan kawan-kawan',
  gambar: 'https://tirtabuanamedia.co.id/wp-content/uploads/2020/10/Si-Utan-Kawan-Kawan-Dongeng-Hewan-Asli-Indonesia-1-1.jpg',
  ),
  buku(
  judul: 'Bukan Cinta Monyet',
  penulis: 'Purnama Teduh',
  deskripsi: 'Buku tentang cinta monyet',
  gambar: 'https://tirtabuanamedia.co.id/wp-content/uploads/2020/10/Bukan-Cinta-Monyet-1.jpg',
  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                book.gambar,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(book.judul),
              subtitle: Text(book.penulis),
              trailing: ElevatedButton(
                child: Text('Detail'),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/detail',
                    arguments: book,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
