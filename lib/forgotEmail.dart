import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_picker/country_picker.dart';

class ForgotEmailPage extends StatefulWidget {
  const ForgotEmailPage({super.key, required String title});

  @override
  State<ForgotEmailPage> createState() => _ForgotEmailPageState();
}

class _ForgotEmailPageState extends State<ForgotEmailPage> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size.height;
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
            "Réinitialiser",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                DefaultTabController(
                    length: 2, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Mot de passe oublié',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Nous nous enverrons un code par e-mail pour réinitialiser votre mot de passe',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(100, 0, 0, 0),
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: media * .07,
                          ),
                          Container(
                              height: 290, //height of TabBarView
                              child: TabBarView(children: <Widget>[
                                Column(
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
                                            labelText: 'Adresse E-mail',
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
