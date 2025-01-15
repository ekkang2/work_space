void main() {
  minusNumber(40, 20).then((value) => print("결과값 출력 : ${value}"));

  print('main() 함수 종료');
}

Future<int> minusNumber(int n1, int n2) {
  return Future.delayed(Duration(seconds: 3), () => n1 - n2);
}
