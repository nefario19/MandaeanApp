import 'package:flutter_test/flutter_test.dart';
import 'package:bushido/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AccountServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
