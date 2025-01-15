package design_pattern.adapter;

interface IElectronic220v {
    void connect();
}

interface IElectronic110V {
    void connect();
}

public class MyHouse {

    // 정적 메서드
    // 집에 220v 전기 콘센트르 연결하는 메서드
    public static void homeConnect(IElectronic220v iElectronic220v) {
        // 콘센트 연결하는 행위
        iElectronic220v.connect();
    }


    // 메인 함수
    public static void main(String[] args) {

        HairDryer hairDryer = new HairDryer();
        AirConditioner airConditioner = new AirConditioner();

        ElectronicAdapter adapterHairDryer = new ElectronicAdapter(hairDryer);

        // 문제를 해결 해야 하는 부분
        homeConnect(adapterHairDryer);
        homeConnect(airConditioner);
    }


}

class HairDryer implements IElectronic110V {
    @Override
    public void connect() {
        System.out.println("헤어드라이어 연결 하기");
    }
}

class AirConditioner implements IElectronic220v {

    @Override
    public void connect() {
        System.out.println("에어컨 연결 220v");
    }

}
