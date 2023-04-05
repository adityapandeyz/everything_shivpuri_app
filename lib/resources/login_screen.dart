import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../provider/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(
              top: 200,
              left: 10,
              child: GradientBall(
                colors: [
                  Colors.deepOrange,
                  Colors.amber,
                ],
              ),
            ),
            const Positioned(
              top: 400,
              right: 10,
              child: GradientBall(
                size: Size.square(200),
                colors: [Colors.blue, Colors.purple],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: BlurryContainer(
                color: Colors.white.withOpacity(0.15),
                blur: 8,
                elevation: 6,
                height: MediaQuery.of(context).size.height / 2,
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/app_logo/Icon_960px.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Texts and Styling of them
                    const Text(
                      'Welcome to Everything Shivpuri',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Text(
                    //   'A one-stop portal for you to learn the latest technologies from SCRATCH',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(color: Colors.white, fontSize: 16),
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        minimumSize: const Size(
                          double.infinity,
                          50,
                        ),
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                      ),
                      onPressed: () async {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);

                        provider.signInWithGoogle();
                      },
                      label: const Text(
                        'Sign In with Google',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientBall extends StatelessWidget {
  final List<Color> colors;
  final Size size;
  const GradientBall({
    Key? key,
    required this.colors,
    this.size = const Size.square(150),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
    );
  }
}
