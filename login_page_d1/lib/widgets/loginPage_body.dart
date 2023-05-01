import 'package:flutter/material.dart';

import 'custom_button.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange[900]!,
            Colors.orange[800]!,
            Colors.orange[500]!
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ]),
                          child: Column(
                            children: const [
                              CustomTextField(
                                title: 'Email or PhoneNumber',
                              ),
                              CustomTextField(
                                title: 'Password',
                              ),

                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       bottom:
                              //           BorderSide(color: Colors.grey[200]!),
                              //     ),
                              //   ),
                              //   child: const TextField(
                              //     decoration: InputDecoration(
                              //         contentPadding: EdgeInsets.all(8),
                              //         hintText: 'Email or PhoneNumber',
                              //         hintStyle: TextStyle(color: Colors.grey),
                              //         border: InputBorder.none),
                              //   ),
                              // ),
                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       bottom:
                              //           BorderSide(color: Colors.grey[200]!),
                              //     ),
                              //   ),
                              //   child: const TextField(
                              //     decoration: InputDecoration(
                              //         contentPadding: EdgeInsets.all(8),
                              //         hintText: 'Password',
                              //         hintStyle: TextStyle(color: Colors.grey),
                              //         border: InputBorder.none),
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        CustomButton(
                            title: 'Login',
                            color: Colors.orange[900]!,
                            height: height / 14,
                            width: width / 1.5),
                        const SizedBox(
                          height: 55,
                        ),
                        const Text(
                          'Continue with Social Media',
                          style:
                              TextStyle(color: Colors.grey, letterSpacing: 1.2),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                title: 'Facebook',
                                color: Colors.blue,
                                height: height / 14,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: CustomButton(
                                title: 'Github',
                                color: Colors.black,
                                height: height / 14,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8),
            hintText: title,
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}
