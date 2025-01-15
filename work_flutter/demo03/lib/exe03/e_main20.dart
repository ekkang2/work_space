class Room {
  int roomNumber;
  Room(this.roomNumber);
}

class House {
  final String address;
  final List<Room> rooms;

  House(this.address) : rooms = [] {}

  void addRoom(int roomNumber) {
    Room room = Room(roomNumber);
    rooms.add(room);
  }

  void displayHouseInfo() {
    print("--------------------");
    print("주소 : ${address}");
    for (var room in rooms) {
      print("방 번호 : ${room.roomNumber}");
    }
  }
}

void main() {
  House house = House("사상");
  house.addRoom(302);
  house.displayHouseInfo();
}
