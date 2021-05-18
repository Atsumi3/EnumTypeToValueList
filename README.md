Reflection (MirrorSystem) を使っています. ご注意ください

```dart
enum A { 
  B, 
  C 
}
```
to
```dart
[A.B, A.C]
```

Usage
```dart
EnumTypeToValueList<A>().valueList // [A.B, A.C]
```
