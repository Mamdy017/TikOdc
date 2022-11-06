import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'formulaireConnexion.dart';
import 'formulaireInscription.dart';

class PageInscription extends StatelessWidget {
  const PageInscription({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikOdc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(""),
                  Text(
                    "S'inscrire",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decorationColor: Colors.white,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.list,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(children: [
                CircleAvatar(
                  minRadius: 25,
                  maxRadius: 50,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                    size: 50.0,
                  ),
                ),
              ]),
              SizedBox(
                height: 10.0,
              ),
              Text("@Nom d'utilisateur"),
              Container(
                height: 70,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "0",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Text(
                        "",
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        "",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      )
                    ]),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Abonnements",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 10.0),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "",
                      ),
                      Text(
                        "Abonnées",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 10.0),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "",
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "J'aime",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 10.0),
                      )
                    ]),
              ),
              SizedBox(
                height: 80.0,
              ),
              Text(
                "Connecter ou créér un compte",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Connecter ou créér un compte",
                style: TextStyle(
                  color: Color.fromARGB(51, 0, 0, 0),
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 300.0,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      _openPopup(context);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 220, 25, 11),
                    )),
                    //  textColor:Colors.white,
                    child: Text(
                      "Connecte-toi ou crée un compte",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .93,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.circleQuestion,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Inscription sur TIkOdc",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Crée un profil, abonne-toi à d’autres comptes, " +
                        " crée tes propres vidéos et bien plus encore",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.user,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const PageFormulaireInscription(
                                        title: 'SecondPage');
                                  }));
                                },
                                child: const Text(
                                  'Utiliser un téléphone ou une adresse e-mail                    ',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Facebook',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Google',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.lightBlue,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Twiter',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Instagram',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    child: Text(
                      "En continuant, tu acceptes nos Conditions d’utilisatation et " +
                          "reconnais avoir lu notre Politique de Confidentialité pour " +
                          "savoir comment nous collectons, utilisons et partageons " +
                          "tes données",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vous avez déjà un compte ? ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                              width: 120.0,
                              child: Container(
                                child: InkWell(
                                    onTap: () => _openPopup2(context),
                                    child: Text(
                                      'Connexion',
                                      style: TextStyle(color: Colors.red),
                                    )),
                              )),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

void _openPopup2(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .93,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.circleQuestion,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Connecte-toi à TIkOdc",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Gère ton compte, consulte tes notifications," +
                        "commente des  vidéos et bien plus encore",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.user,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const PageFormulaireConnexion(
                                        title: 'SecondPage');
                                  }));
                                },
                                child: const Text(
                                  'Utiliser un téléphone/e-mail/nom-d’utilisateur            ',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Facebook',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Google',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.lightBlue,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Twiter',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        primary: Colors.white,
                      ),
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Continuer avec Instagram',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black87,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    child: Text(
                      "En continuant, tu acceptes nos Conditions d’utilisatation et " +
                          "reconnais avoir lu notre Politique de Confidentialité pour " +
                          "savoir comment nous collectons, utilisons et partageons " +
                          "tes données",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vous n’avez pas de  compte ? ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                              width: 120.0,
                              child: Container(
                                child: InkWell(
                                    onTap: () => _openPopup(context),
                                    child: Text(
                                      'Inscripttion',
                                      style: TextStyle(color: Colors.red),
                                    )),
                              )),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}