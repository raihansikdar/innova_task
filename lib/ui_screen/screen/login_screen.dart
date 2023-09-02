import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innova_task/ui_screen/screen/home_page.dart';
import 'package:innova_task/ui_screen/screen/bottom_nav_screen.dart';
import 'package:innova_task/ui_screen/utils/style.dart';


class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

   bool _showEmailValidationError = false;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60,),
            _showEmailValidationError ?   Image.asset(
              "assets/images/login_2.PNG",
              fit: BoxFit.fill,
              height: 250,
              width: double.infinity,
            )
                : Image.asset(
              "assets/images/login.png",
              fit: BoxFit.fill,
              height: 250,
              width: double.infinity,
            ),

             Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      "Login Details",
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: titleFontWeight,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Username , email & phone number",
                      ),
                      onChanged: (value) {
                        if (_showEmailValidationError &&
                            (value == null ||
                                value.trim().isEmpty ||
                                !emailRegex.hasMatch(value))) {
                          setState(() {
                            _showEmailValidationError = false;
                          });
                        }
                      },
                      validator: (String? value){
                        if(value == null || value.trim().isEmpty || !emailRegex.hasMatch(value)){

                          setState(() {
                            _showEmailValidationError = true;
                          });

                          return "Enter your valid email !";
                        }
                          return null;
                      },
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Password",

                      ),
                      validator: (String? value){
                        if(value?.trim().isEmpty ?? true){
                          return "Please enter password!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16,),
                    const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontSize: textSmallFontSize,
                            fontWeight: titleFontWeight,
                            color: forgetPasswordColor,
                          ),
                        ),
                      ),
                    const SizedBox(height: 16,),
                     ElevatedButton(
                         onPressed:   _showEmailValidationError ? null : (){
                           if(_formKey.currentState!.validate()){
                           Get.offAll(()=>const BottomNavScreen());
                           }
                         },
                         child: const Text(
                           "Login",
                            style: TextStyle(
                              fontSize: titleFontSize,
                              fontWeight: titleFontWeight,
                            ),
                         ),
                     ),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 120,
                            height: 5,
                            decoration: firstGradientDecoration,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Or Sign up With",
                            style: TextStyle(fontWeight: mediumFontWeight),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 100,
                            height: 5,
                            decoration:secondGradientDecoration,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           height: 80,
                           width: 80,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(40),
                             color: CircularContainerColor,
                           ),
                           child: Center(
                             child: Image.asset(
                                "assets/logo/google.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                         ),
                         const SizedBox(width: 10,),
                         Container(
                           height: 80,
                           width: 80,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(40),
                             color: CircularContainerColor,
                           ),
                            child: Center(
                              child: Image.asset(
                                "assets/logo/facebook.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                         const SizedBox(width: 10,),
                         Container(
                           height: 80,
                           width: 80,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(40),
                             color: CircularContainerColor,
                           ),
                           child: Center(
                             child: Image.asset(
                                "assets/logo/apple.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                         ),
                       ],
                     ),
                    ],
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
}
