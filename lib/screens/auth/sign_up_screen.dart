import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:woibelajar/core/constant.dart';
import 'package:woibelajar/routes/routes.dart';
import 'package:woibelajar/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

  final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
            child: SizedBox(
              height: screenHeight,
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 60),
                            Center(
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.normal,
                                    color: textColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Create',
                                      style: TextStyle(color: primaryBlue),
                                    ),
                                    TextSpan(text: ' Account'),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Center(
                              child: Text(
                                "Fill your details",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),

                            TextField(
                              controller: _fullNameController,
                              decoration: const InputDecoration(
                                labelText: 'Full Name',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryBlue),
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            TextField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryBlue),
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            TextField(
                              controller: _passwordController,
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryBlue),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 48),

                            CustomButton(text: 'Sign Up', onPressed: () {}),

                            const SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account? ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.pushNamed(RouteName.signin.name);
                                  },
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: primaryBlue,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 120),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 250,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 250,
                            decoration: BoxDecoration(
                              color: primaryBlue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(300),
                                topRight: Radius.circular(150),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -100,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Image.asset(
                              'assets/images/BottomIconSignUp/djvmar1030111.webp',
                              width: 448,
                              height: 448,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      );
  }
}
