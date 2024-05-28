import 'package:flutter/material.dart';
import 'package:gestion_biblio_exam/pages/about.dart';
import 'package:gestion_biblio_exam/pages/adherentListScreen.dart';
import 'package:gestion_biblio_exam/pages/bookListScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    "Bienvenue à la Bibliothèque",
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold, 
      letterSpacing: 1.5, 
      color: Colors.white, 
    ),
  ),
  backgroundColor: Colors.blue.shade800, // Changé la couleur de l'arrière-plan de la barre d'applications
),

      body: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.blue.shade200, Colors.blue.shade400],
    ),
  ),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/biblio.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Bienvenue dans notre bibliothèque !\nPlongez dans un univers de savoir et de divertissement grâce à notre collection riche en livres, magazines et bien plus encore.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
),


      drawer: Drawer(
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.blue.shade200, Colors.blue.shade400],
      ),
    ),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("amine sadiq"),
          accountEmail: Text("aminesadiq@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("assets/11.png"),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text("Livres"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookListScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text("Adherents"),
          onTap: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdherentListScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutScreen()),
            );
          },
        ),
      ],
    ),
  ),
),

    );
  }
}
