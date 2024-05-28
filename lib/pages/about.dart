import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('À propos'),
        backgroundColor: Colors.blue.shade800, // Couleur de la barre d'applications
      ),
      backgroundColor: Colors.blue.shade200, // Couleur de fond de la page
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bibliotheque App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue.shade800), // Couleur du texte
              ),
              SizedBox(height: 20),
              Text(
                'Version 1.0.0',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Développé par SADIQ Mohamed Amine',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                '© 2024 Tous droits réservés',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
