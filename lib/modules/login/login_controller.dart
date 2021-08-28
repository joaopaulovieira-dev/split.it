import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  var user;

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      user = await _googleSignIn.signIn();
      print(user);
      print('Nome: ${user.displayName}');
    } catch (error) {
      print(error);
    }
  }
}
