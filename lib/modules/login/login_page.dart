import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:splitit/modules/login/widgets/social_button.dart';
import 'package:splitit/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroudPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 237,
                  child: Text(
                    'Divida \nsuas contas com seus amigos',
                    style: AppTheme.textStyles.title,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/emoji.png",
                      width: 36,
                      height: 36,
                    ),
                    title: Text('Faça seu login com \numa das contas abaixo',
                        style: AppTheme.textStyles.button),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SocialButtonWidget(
                  imagePhath: "assets/images/google.png",
                  label: 'Entrar com Google',
                  onTap: () async {
                    GoogleSignIn _googleSignIn = GoogleSignIn(
                      scopes: [
                        'email',
                      ],
                    );
                    try {
                      final response = await _googleSignIn.signIn();
                      print(response);
                    } catch (error) {
                      print(error);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              //TODO: Precisa terminar a configuração Apple.
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 32),
              //   child: SocialButtonWidget(
              //     imagePhath: "assets/images/apple.png",
              //     label: 'Entrar com Apple',
              //     onTap: () async {
              //       try {
              //         final credential =
              //             await SignInWithApple.getAppleIDCredential(
              //           scopes: [
              //             AppleIDAuthorizationScopes.email,
              //             AppleIDAuthorizationScopes.fullName,
              //           ],
              //         );
              //         print(credential);

              //         // Now send the credential (especially `credential.authorizationCode`) to your server to create a session
              //         // after they have been validated with Apple (see `Integration` section for more information on how to do this)
              //       } catch (e) {
              //         print(e);
              //       }
              //     },
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
