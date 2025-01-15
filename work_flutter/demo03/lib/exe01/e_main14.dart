// 그냥 할 뿐

import 'package:demo03/main14.dart';

void main() {
  String? userName = getNullableUserName();
  int? userNameLength = userName?.length;

  String finalUsersName = userName ?? '홍길동';

  String upperOrNoName = userName?.toUpperCase() ?? 'NO_NAME';
  print('${upperOrNoName}');
}

// 선택적 명명 매개변수
String? getNullableUserName({String? name}) {
  return name;
}
