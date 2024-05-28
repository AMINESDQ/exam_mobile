import 'package:flutter/material.dart';
import 'package:gestion_biblio_exam/models/adherent.dart';

class AddAdherentScreen extends StatefulWidget {
  @override
  _AddAdherentScreenState createState() => _AddAdherentScreenState();
}

class _AddAdherentScreenState extends State<AddAdherentScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un Adhérent'),
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
                  labelText: 'Nom',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white, // Couleur de fond du champ de texte
                ),
                style: TextStyle(color: Colors.black), // Couleur du texte
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un nom';
                  }
                  return null;
                },
                onSaved: (value) => _name = value!,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white, // Couleur de fond du champ de texte
                ),
                style: TextStyle(color: Colors.black), // Couleur du texte
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une adresse email valide';
                  }
                  return null;
                },
                onSaved: (value) => _email = value!,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Téléphone',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white, // Couleur de fond du champ de texte
                ),
                style: TextStyle(color: Colors.black), // Couleur du texte
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un numéro de téléphone';
                  }
                  return null;
                },
                onSaved: (value) => _phone = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pop(
                      context,
                      Adherent(
                        name: _name,
                        email: _email,
                        phone: _phone,
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
