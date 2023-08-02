import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/ui/phone_auth/verify_code.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/utils.dart';
import '../../widgets/round_button.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({Key? key}) : super(key: key);

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  bool loading = false;
  final phoneNumberController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            TextFormField(
              controller: phoneNumberController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: '+1 234 3455 234'),
            ),
            SizedBox(
              height: 80.h,
            ),
            RoundButton(
                title: 'Login',
                loading: loading,
                onTap: () {
                  setState(() {
                    loading = true;
                  });
                  // Get the phone number from the controller
                  String phoneNumber = phoneNumberController.text;

                  // Remove any non-digit characters
                  phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

                  // Remove the leading 0 if present, and prepend the country code +92
                  if (phoneNumber.startsWith('0')) {
                    phoneNumber = '92' + phoneNumber.substring(1);
                  }

                  // Add the plus sign at the beginning
                  phoneNumber = '+' + phoneNumber;
                  auth.verifyPhoneNumber(
                      phoneNumber: phoneNumber,
                      verificationCompleted: (_) {
                        setState(() {
                          loading = false;
                        });
                      },
                      verificationFailed: (e) {
                        setState(() {
                          loading = false;
                        });
                        Utils().toastMessage(e.toString());
                      },
                      codeSent: (String verificationId, int? token) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyCodeScreen(
                                      verificationId: verificationId,
                                    )));
                        setState(() {
                          loading = false;
                        });
                      },
                      codeAutoRetrievalTimeout: (e) {
                        Utils().toastMessage(e.toString());
                        setState(() {
                          loading = false;
                        });
                      });
                })
          ],
        ),
      ),
    );
  }
}
