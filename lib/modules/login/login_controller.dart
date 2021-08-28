import 'package:google_sign_in/google_sign_in.dart';
import 'package:splitit/modules/login/models/user_model.dart';

class LoginController {
  UserModel? user;

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      print(user);
      print('Nome: ${user!.name}');
    } catch (error) {
      print(error);
    }
  }
}
