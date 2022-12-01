import 'package:flutter_test/flutter_test.dart';
import 'package:splitit/modules/login/login_controller.dart';
import 'package:splitit/modules/login/login_service.dart';
import 'package:splitit/modules/login/login_state.dart';
import 'package:splitit/modules/login/models/user_model.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    return UserModel(
      email: 'joaopaulovieira.dev@gmail.com',
      id: 'id',
    );
  }
}

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(
      service: LoginServiceMock(),
      onUpdate: () {},
    );
  });

  test('Testando o Google SingIn retornando sucesso.', () {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    controller.googleSignIn();
    expect(controller.state, isInstanceOf<LoginStateLoading>());
    expect(controller.state, isInstanceOf<LoginStateSuccess>());
  });
}
