import 'package:enum_type_to_value_list/enum_type_to_value_list.dart';
import 'package:test/test.dart';

enum TestEnum { A, B }

void main() {
  test('enum type.', () {
    expect(EnumTypeToValueList<TestEnum>().valueList, [TestEnum.A, TestEnum.B]);
  });
  test('other type.', () {
    expect(EnumTypeToValueList<Null>().valueList, []);
    expect(EnumTypeToValueList<String>().valueList, []);
    expect(EnumTypeToValueList<int>().valueList, []);
  });
}
