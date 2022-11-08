import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_picker/country_picker.dart';

class PageFormulaireInscription extends StatefulWidget {
  const PageFormulaireInscription({super.key, required String title});

  @override
  State<PageFormulaireInscription> createState() =>
      _PageFormulaireInscriptionState();
}

class _PageFormulaireInscriptionState extends State<PageFormulaireInscription> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikOdc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
            child: Text(
              "S'inscrire",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          actions: [
            Icon(
              CupertinoIcons.question_circle,
              color: Colors.black,
            )
          ],
        ),
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            SizedBox(height: 30.0),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'Téléphone'),
                            Tab(text: 'E-mail'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                          height: 290, //height of TabBarView

                          child: TabBarView(children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  Container(
                                    child: Center(
                                      child: TextFormField(
                                        controller: phoneNumberController,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          hintText: 'Numéro de téléphone',
                                          prefixIcon: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 1,
                                              vertical: 6,
                                            ),
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                GestureDetector(
                                                  onTap: () async {
                                                    final code =
                                                        await countryPicker
                                                            .showPicker(
                                                                context:
                                                                    context);
                                                    setState(() {
                                                      countryCode = code;
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          countryCode?.code ??
                                                              "ML",
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          countryCode
                                                                  ?.dialCode ??
                                                              "+223",
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .caretDown,
                                                          size: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        children: [
                                          TextSpan(
                                              text:
                                                  "Ton numero de telephone servira à ameliorer"
                                                  "ton expérience sur TikTok, notamment en te mettant"
                                                  "en relation avec des personnes que tu connais "
                                                  "peut-être, en personnalisant tes publicités, etc. Si tu"
                                                  "t’inscris par SMS, des frais peuvent s’appliquer. "),
                                          TextSpan(
                                              text: " En savoir plus",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.black54,
                                                  fontSize: 15))
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 300.0,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                          Color.fromARGB(255, 220, 25, 11),
                                        )),
                                        onPressed: () {
                                          if (countryCode != null) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: Text(
                                                        "${countryCode!.dialCode}-${phoneNumberController.text.trim()}")));
                                          } else {}
                                        },
                                        child: const Text("Envoyer le code")),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  Container(
                                    child: Center(
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 1,
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          hintText: 'Adresse E-mail',
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        children: [
                                          TextSpan(
                                              text:
                                                  "En continuant,vous acceptez les"),
                                          TextSpan(
                                              text: "conditions d'utilisation",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.black54,
                                                  fontSize: 15)),
                                          TextSpan(
                                              text:
                                                  " de TiTok et confirmez que vous avez lu la "),
                                          TextSpan(
                                              text:
                                                  "politique de confidentialité ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.black54,
                                                  fontSize: 15)),
                                          TextSpan(text: "de TikTok"),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 350.0,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Color.fromARGB(255, 220, 25, 11),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (countryCode != null) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: Text(
                                                        "${countryCode!.dialCode}-${phoneNumberController.text.trim()}")));
                                          } else {}
                                        },
                                        child: Text("Suivant")),
                                  )
                                ],
                              ),
                            ),
                          ]))
                    ])),
          ]),
        ),
      ),
    );
  }
}
