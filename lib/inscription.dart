import 'package:animated_text_kit/animated_text_kit.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:const Center(
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        actions:const [
          Padding(
            padding: EdgeInsets.only(right:12.0),
            child: Icon(
              FontAwesomeIcons.list,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const SizedBox(
              height: 30,
            ),
            Stack(children: const[
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 50.0,
                ),
              ),
            ]),
             const SizedBox(
              height: 10.0,
            ),
            const Text("@Nom d'utilisateur"),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Column(
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
                              "Abonnement",
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                    ),
                  ),
                
              Expanded(
                child: Container(
                  child: Column(
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
                          "Abonnées",
                          style: TextStyle(fontSize: 12),
                        )
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
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
                          "J'aime",
                          style: TextStyle(fontSize: 12),
                        )
                      ]),
                ),
              ),

              ],
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                 SizedBox(width: 20, height: 70,),
                 DefaultTextStyle(style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w600,
                  
                 ), child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText("Connecter ou créér un compte",),
                    RotateAnimatedText("Connecter ou créér un compte1",),
                    RotateAnimatedText("Connecter ou créér un compte2",)
                  ]
                  ))
              ],
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
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        var media = MediaQuery.of(context).size.height;
        return Container(
          height: MediaQuery.of(context).size.height * .85,
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
                      child: Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const PageFormulaireInscription(
                                  title: 'SecondPage');
                            }));
                          },
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
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    'Utiliser un téléphone ou une adresse e-mail',
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
                    height: media * .17,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(text: "En continuant, tu acceptes nos "),
                          TextSpan(
                              text: "Conditions d’utilisatation    ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                  fontSize: 15)),
                          TextSpan(text: " et reconnais avoir lu notre "),
                          TextSpan(
                              text: "Politique de Confidentialité ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                  fontSize: 15)),
                          TextSpan(
                              text:
                                  "pour savoir comment nous collectons, utilisons et partageons tes données"),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Color.fromARGB(255, 233, 232, 229),
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
        var media = MediaQuery.of(context).size.height;
        return Container(
          height: MediaQuery.of(context).size.height * .85,
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
                      child: Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const PageFormulaireConnexion(
                                  title: 'SecondPage');
                            }));
                          },
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
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    'Utiliser un téléphone/e-mail/nom-d’utilisateur',
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
                    height: 20,
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
                    height: media * .1,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(text: "En continuant, tu acceptes nos "),
                          TextSpan(
                              text: "Conditions d’utilisatation    ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                  fontSize: 15)),
                          TextSpan(text: " et reconnais avoir lu notre "),
                          TextSpan(
                              text: "Politique de Confidentialité ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                  fontSize: 15)),
                          TextSpan(
                              text:
                                  "pour savoir comment nous collectons, utilisons et partageons tes données"),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Color.fromARGB(255, 233, 232, 229),
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
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
