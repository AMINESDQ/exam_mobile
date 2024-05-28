import 'package:flutter/material.dart';
import 'package:gestion_biblio_exam/models/adherent.dart';
import 'package:gestion_biblio_exam/pages/addAdherantScreen.dart';
import 'package:gestion_biblio_exam/pages/adherantDetailsScreen.dart';

class AdherentListScreen extends StatefulWidget {
  @override
  _AdherentListScreenState createState() => _AdherentListScreenState();
}

class _AdherentListScreenState extends State<AdherentListScreen> {
  List<Adherent> adherents = [
    Adherent(
      name: 'Souad Idrissi',
      email: 'souad.idrissi@example.com',
      phone: '+212-6-7890-1234',
    ),
    Adherent(
      name: 'Khalid Bennani',
      email: 'khalid.bennani@example.com',
      phone: '+212-5-4567-8901',
    ),
    Adherent(
      name: 'Meryem El Alaoui',
      email: 'meryem.elalaoui@example.com',
      phone: '+212-7-3456-7890',
    ),
     Adherent(
    name: 'Fatima Benani',
    email: 'fatima.benani@example.com',
    phone: '+212-6-1234-5678',
    
  ),
  Adherent(
    name: 'Rachid El Alaoui',
    email: 'rachid.elalaoui@example.com',
    phone: '+212-5-9876-5432',
    
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Adhérents'),
        backgroundColor: Colors
            .blue.shade800, // Changé la couleur de la barre d'applications
      ),
      body: ListView.builder(
        itemCount: adherents.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            color: Colors.blue.shade100, // Changé la couleur de la carte
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              title: Text(
                adherents[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(adherents[index].email),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Mettez ici le code pour modifier l'adhérent
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Mettez ici le code pour supprimer l'adhérent
                      setState(() {
                        adherents.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AdherentDetailScreen(adherent: adherents[index]),
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
              builder: (context) => AddAdherentScreen(),
            ),
          ).then((newAdherent) {
            if (newAdherent != null) {
              setState(() {
                adherents.add(newAdherent);
              });
            }
          });
        },
        label: Text('Ajouter un adhérent'),
        icon: Icon(Icons.add),
        backgroundColor:
            Colors.blue.shade800, // Changé la couleur du FloatingActionButton
      ),
    );
  }
}
