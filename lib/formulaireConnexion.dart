import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_picker/country_picker.dart';

import 'ForgotPhone.dart';
import 'forgotEmail.dart';

class PageFormulaireConnexion extends StatefulWidget {
  const PageFormulaireConnexion({super.key, required String title});

  @override
  State<PageFormulaireConnexion> createState() =>
      _PageFormulaireConnexionState();
}

class _PageFormulaireConnexionState extends State<PageFormulaireConnexion> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Connexion",
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
                    Padding(
                       padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                          height: 290, //height of TabBarView
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
                                                  final code = await countryPicker
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
                                                        countryCode?.code ?? "ML",
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
                                Container(
                                  child: Center(
                                    child: TextFormField(
                                      keyboardType: TextInputType.visiblePassword,
                                      textInputAction: TextInputAction.done,
                                      maxLines: 1,
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Mot de passe',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () {
                                      _openPopup(context);
                                    },
                                    child: const Text(
                                      'Mot de passe oublié?',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
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
                                      child: Text("Connexion")),
                                )
                              ],
                            ),
                          ])),
                    )
                  ])),
        ]),
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
          // height: 100,
          width: 200,
          height: MediaQuery.of(context).size.height * .50,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const PageForgotPhone(title: 'SecondPage');
                      }));
                    },
                    child: const Text(
                      'Numéro de téléphone',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotEmailPage(title: 'SecondPage');
                      }));
                    },
                    child: const Text(
                      'E-mail',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
