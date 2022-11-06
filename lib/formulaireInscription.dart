import 'package:fl_country_code_picker/fl_country_code_picker.dart';
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
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    FontAwesomeIcons.leftLong,
                  ),
                ),
                Text(
                  "S'inscrire",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    decorationColor: Colors.white,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.circleQuestion,
                ),
              ],
            ),
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
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Column(
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
                                        labelText: 'Numéro de téléphone',
                                        prefixIcon: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 6,
                                          ),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              GestureDetector(
                                                onTap: () async {
                                                  final code =
                                                      await countryPicker
                                                          .showPicker(
                                                              context: context);
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
                                                        countryCode?.dialCode ??
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
                                        labelStyle:
                                            TextStyle(color: Colors.grey[600]),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "Ton numero de telephone servira à ameliorer ton"
                                    "expérience sur TikTok, notamment en te mettant"
                                    "en relation avec des personnes que tu connais "
                                    "peut-être, en personnalisant tes publicités, etc. Si tu"
                                    "t’inscris par SMS, des frais peuvent s’appliquer.En "
                                    "savoir plus"),
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
                            Column(
                              children: [
                                Container(
                                  child: Center(
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
                                      maxLines: 1,
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Adresse E-mail',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "En continuant,vous acceptez les conditions d'utilisation de TiTok"
                                    "et confirmez que vous avez lu la politique de confidentialité de TikTok"),
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
                          ]))
                    ])),
          ]),
        ),
      ),
    );
  }
}
