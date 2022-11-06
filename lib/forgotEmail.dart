import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_picker/country_picker.dart';

class ForgotEmailPage extends StatefulWidget {
  const ForgotEmailPage({super.key, required String title});

  @override
  State<ForgotEmailPage> createState() =>
      _ForgotEmailPageState();
}

class _ForgotEmailPageState extends State<ForgotEmailPage> {
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
                  "Réinitialiser",
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
                        child: Text('Mot de passe oublié',
                        style: TextStyle(
                          fontSize: 15, 
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        
                      ),
                      Container(
                          child: Text('Nous nous enverrons un code par e-mail pour réinitialiser votre mot de passe',
                        style: TextStyle(
                          fontSize: 15, 
                          color: Color.fromARGB(100, 0, 0, 0),
                          fontWeight: FontWeight.w100,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
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
