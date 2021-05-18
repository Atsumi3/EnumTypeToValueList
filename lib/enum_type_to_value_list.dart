library enum_type_to_value_list;

import 'dart:mirrors';

class EnumTypeToValueList<Enum> {
  List<Enum> get valueList {
    final mirror = reflectClass(Enum);
    if (mirror.isEnum) {
      final field = mirror.getField(Symbol('values'));
      return field.reflectee as List<Enum>;
    } else {
      return [];
    }
  }
}
