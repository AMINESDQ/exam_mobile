import 'package:flutter/material.dart';
import 'package:gestion_biblio_exam/models/book.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(book.coverImage),
            SizedBox(height: 20),
            Text(
              'Auteur: ${book.author}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              book.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
