import 'package:flutter/material.dart';
import 'package:gestion_biblio_exam/models/adherent.dart';

class AdherentDetailScreen extends StatelessWidget {
  final Adherent adherent;

  const AdherentDetailScreen({required this.adherent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(adherent.name),
        backgroundColor: Colors.blue.shade800, // Changé la couleur de la barre d'applications
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/11.png'), // Ajouté une image d'avatar par défaut
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Nom: ${adherent.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Email: ${adherent.email}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Téléphone: ${adherent.phone}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
