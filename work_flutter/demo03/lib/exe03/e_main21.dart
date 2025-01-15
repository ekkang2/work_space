class Resident {
  final String name;

  Resident(this.name);

  void displayResidentInfo() {
    print('거주자 이름 : ${name}');
  }
}

class Apartment {
  final String buildingName;
  final List<Resident> residents;

  Apartment(this.buildingName) : residents = [] {
    print('=== Apartment 생성자 내부 스택 호출 ===');
  }

  void addResident(Resident res) {
    residents.add(res);
  }

  void displayApartmentInfo() {
    print("---------------------");
    print("건물 이름 : ${buildingName}");
    for (var res in residents) {
      res.displayResidentInfo();
    }
  }
}

void main() {
  Apartment apartment1 = Apartment('건물1');
  Apartment apartment2 = Apartment('건물2');
  Resident res1 = Resident('거주자1');
  Resident res2 = Resident('거주자2');
  Resident res3 = Resident('거주자3');

  apartment1.addResident(res1);
  apartment1.addResident(res2);
  apartment2.addResident(res3);

  apartment1.displayApartmentInfo();
  apartment2.displayApartmentInfo();
}
