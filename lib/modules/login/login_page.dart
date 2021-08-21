import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                    style: GoogleFonts.inter(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.colors.title,
                    ),
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
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.colors.button,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.fromBorderSide(
                          BorderSide(color: AppTheme.colors.border))),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              "assets/images/google.png",
                              width: 27,
                              height: 27,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              width: 1,
                              color: AppTheme.colors.border,
                            )
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Text('Entrar com Google',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppTheme.colors.button,
                          )),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.fromBorderSide(
                          BorderSide(color: AppTheme.colors.border))),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              "assets/images/apple.png",
                              width: 27,
                              height: 27,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              width: 1,
                              color: AppTheme.colors.border,
                            )
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Text('Entrar com Apple',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppTheme.colors.button,
                          )),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
