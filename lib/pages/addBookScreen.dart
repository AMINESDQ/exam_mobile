import 'package:flutter/material.dart';
import 'package:gestion_biblio_exam/models/book.dart';

class AddBookScreen extends StatefulWidget {
  @override
  _AddBookScreenState createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _author;
  late String _description;
  late String _coverImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un Livre'),
        backgroundColor: Colors.blue, // Couleur de la barre d'application
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Titre',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white, // Couleur de fond du champ de texte
                ),
                style: TextStyle(color: Colors.black), // Couleur du texte
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un titre';
                  }
                  return null;
                },
                onSaved: (value) => _title = value!,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Auteur',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white, // Couleur de fond du champ de texte
                ),
                style: TextStyle(color: Colors.black), // Couleur du texte
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un auteur';
                  }
                  return null;
                },
                onSaved: (value) => _author = value!,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white, // Couleur de fond du champ de texte
                ),
                style: TextStyle(color: Colors.black), // Couleur du texte
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une description';
                  }
                  return null;
                },
                onSaved: (value) => _description = value!,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'URL de l\'image de couverture',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white, // Couleur de fond du champ de texte
                ),
                style: TextStyle(color: Colors.black), // Couleur du texte
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une URL';
                  }
                  return null;
                },
                onSaved: (value) => _coverImageUrl = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pop(
                      context,
                      Book(
                        title: _title,
                        author: _author,
                        description: _description,
                        coverImage: _coverImageUrl,
                      ),
                    );
                  }
                },
                child: Text('Ajouter'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Couleur de fond du bouton
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
