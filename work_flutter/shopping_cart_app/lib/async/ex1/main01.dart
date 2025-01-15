void main() async {
  await minusNumber1(40, 20);
  print('메인 함수 완료');
}

Future<void> minusNumber1(int n1, int n2) async {
  print('minusNumber1 함수 시작');

  var result = 0;
  await Future.delayed(Duration(seconds: 3), () {
    result = n1 - n2;
  });
  print('minusNumber1 연산 완료 : ${result}');
}
