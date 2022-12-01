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

  test('Testando o Google SingIn retornando sucesso.', () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });

  test('Testando o Google SingIn retornando failure.', () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect(states.length, 2);
  });
}
