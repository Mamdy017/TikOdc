import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_picker/country_picker.dart';

class PageForgotPhone extends StatefulWidget {
  const PageForgotPhone({super.key, required String title});

  @override
  State<PageForgotPhone> createState() =>
      _PageForgotPhoneState();
}

class _PageForgotPhoneState extends State<PageForgotPhone> {
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
            SizedBox(height: 20,),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: Text('Entrer votre numéro de téléphone',
                        style: TextStyle(
                          fontSize: 15, 
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        
                      ),
                      Container(
                          child: Text('Nous enverrons un code sur votre téléphone',
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
                                SizedBox(height: 30,),                            
                                SizedBox(
                                  width: 350.0,
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
                            
                          ]))
                    ])),
          ]),
        ),
      ),
    );
  }
}
