import 'package:flutter/material.dart';

class Register_agents extends StatelessWidget {
  final TextEditingController nom = TextEditingController();
  final TextEditingController post_nom = TextEditingController();
  final TextEditingController niveaux = TextEditingController();
  final TextEditingController image_ = TextEditingController();

  final TextEditingController Email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(5.0),
        child: Column(
          children: [
            TextField(
              controller: nom,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Entre Votre Nom',
                label: Text('Nom de L\'Agents'),
              ),
            ),
            TextField(
              controller: post_nom,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_add_alt),
                hintText: 'Entre Votre Post nom ',
                label: Text('Post nom de L\'Agents'),
              ),
            ),
            TextField(
              controller: niveaux,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.money_sharp),
                hintText: 'Entre Votre Fonction',
                label: Text('Niveaux Agents'),
              ),
            ),
            TextField(
              controller: image_,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.picture_in_picture),
                hintText: 'Entre Votre Image',
                label: Text('Agents Image'),
              ),
            ),
            TextField(
              controller: Email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                hintText: 'Entre Votre Email',
                label: Text('Email Agents'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Annuler')),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                                title: const Text(
                                    'Entre les information du serveur'),
                                contentPadding: const EdgeInsets.all(20.0),
                                children: [
                                  TextField(
                                      decoration: InputDecoration(
                                          label:
                                              Text('Entre Adress du serveur'),
                                          hintText:
                                              'Entre Adress Lien du serveur')),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text('Ferme')),
                                      ElevatedButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text('Valider'))
                                    ],
                                  ),
                                ],
                              ));
                    },
                    child: Text('Enregistre')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
