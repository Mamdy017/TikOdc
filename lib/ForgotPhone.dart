import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageForgotPhone extends StatefulWidget {
  const PageForgotPhone({super.key, required String title});

  @override
  State<PageForgotPhone> createState() => _PageForgotPhoneState();
}

class _PageForgotPhoneState extends State<PageForgotPhone> {
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'Entrer votre numéro de téléphone',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Nous enverrons un code sur votre téléphone',
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
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
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  final code = await countryPicker.showPicker(
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
                                        countryCode?.dialCode ?? "+223",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      child: FaIcon(
                                        FontAwesomeIcons.caretDown,
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
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 350.0,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 220, 25, 11),
                    )),
                    onPressed: () {
                      if (countryCode != null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "${countryCode!.dialCode}-${phoneNumberController.text.trim()}")));
                      } else {}
                    },
                    child: const Text("Envoyer le code")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
