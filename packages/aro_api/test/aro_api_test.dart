import 'package:test/test.dart';

import 'package:aro_api/aro_api.dart';

void main() {
  final apiClient = AroApiClient();

  group('Test Login', () {
    const email = 'josevalderrama18@gmail.com';
    const password = 'joseJose1+';

    test('Fail', () async {
      const incorrectPassword = '1111';

      final failure = apiClient.login(email, incorrectPassword);
      await expectLater(failure, throwsA(isA<LoginFailure>()));
    });

    test('Success', () async {
      final user = await apiClient.login(email, password);

      expect(user.email, email);
      expect(user.profile, 'student');
    });
  });
}
