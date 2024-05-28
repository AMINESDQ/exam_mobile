import 'package:flutter/material.dart';
import 'package:gestion_biblio_exam/models/book.dart';
import 'package:gestion_biblio_exam/pages/addBookScreen.dart';
import 'package:gestion_biblio_exam/pages/bookDetailsScreen.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Book> books = [
    Book(
      title: 'Harry Potter à l\'école des sorciers',
      author: 'J.K. Rowling',
      description:
          'Harry Potter découvre qu\'il est le fils de deux puissants sorciers et doit maintenant apprendre la magie à l\'école de sorcellerie Poudlard.',
      coverImage: 'https://images.epagine.fr/541/9782075187541_1_75.jpg',
    ),
    Book(
      title: 'Le Petit Prince',
      author: 'Antoine de Saint-Exupéry',
      description:
          'Un aviateur perdu dans le désert rencontre un petit prince tombé d\'une autre planète.',
      coverImage:
          'https://www.mdig.fr/wp-content/uploads/2023/10/la-rose-du-petit-prince-projet-page-1-image-0001.png',
    ),
    Book(
      title: 'L\'Étranger',
      author: 'Albert Camus',
      description:
          'Un homme indifférent est condamné à mort pour le meurtre d\'un Arabe.',
      coverImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdbrdyCh5XgZ4ivKvc7ZY1KrcFxllfEPeNWRU2p4E4mrSoGqUipdNQlmnJAxacEQJ8_SU&usqp=CAU',
    ),

    // Ajoutez plus de livres ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Livres'),
        backgroundColor: Colors
            .blue.shade800, // Changé la couleur de la barre d'applications
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            color: Colors.blue.shade100, // Changé la couleur de la carte
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              title: Text(
                books[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(books[index].author),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(books[index].coverImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Mettez ici le code pour modifier le livre
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Mettez ici le code pour supprimer le livre
                      setState(() {
                        books.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailScreen(book: books[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddBookScreen(),
            ),
          ).then((newBook) {
            if (newBook != null) {
              setState(() {
                books.add(newBook);
              });
            }
          });
        },
        label: Text('Ajouter un livre'),
        icon: Icon(Icons.add),
        backgroundColor:
            Colors.blue.shade800, // Changé la couleur du FloatingActionButton
      ),
    );
  }
}
