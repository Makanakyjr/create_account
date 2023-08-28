import 'package:create_account/widgets/phoneInput.dart';
import 'package:create_account/widgets/textInput.dart';
import 'package:flutter/material.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}
class _IntroPageState extends State<IntroPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _legalSurname = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Divider(height: 30.0, color: Colors.grey),
                  const SizedBox(height: 20),
                  CustomTextInput(
                    controller: _nameController,
                    text: "Full legal first and middle name(s)",
                  ),
                  const SizedBox(height: 25.0),
                  CustomTextInput(
                      controller: _legalSurname, text: "Full legal Surname"),
                  const SizedBox(height: 25.0),
                  const PhoneInput(),
                  const SizedBox(height: 25.0),
                  CustomTextInput(
                    controller: _email,
                    text: "Email Address",
                    errorMessage: "Input a valid email account",
                  ),
                  const SizedBox(height: 25.0),
                  CustomTextInput(
                    controller: _passWord,
                    text: "Password",
                    isObscure: true,
                    errorMessage: "Input a valid password",
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "I confirm the information provided is correct as they appear on my legal document",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDCDCDC),
                        minimumSize: const Size(317, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        print(_nameController.text);
                        print(_email.text);
                        print(_passWord.text);
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("User validation successful")));
                        }
                      },
                      child: const Text(
                        'Create your account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Got an account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 88,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(Icons.message_outlined),
      ),
    );
  }
}
