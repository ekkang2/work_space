package design_pattern.adapter;

// 핵심 개념
// 어댑터 클래스는 두 객체 간의 중재자로서, 서로 다른 인터페이스를 가진 객체들을
// 함께 동작하게 만들 수 있다.

// 우리 코드상에서 : 110v 전압과 220v 전압에서 사용할 수 있도록 중간 역할을 시킨다.

// 1. 내가 최종 쓰고자 하는 인터페이스를 구현 한다.
public class ElectronicAdapter implements IElectronic220v {

    // 2. 실제 기기 어댑터 내부에 전압 변경 기능이 있다.
    private IElectronic110V electronic110V;

    // 어! 이녀석 생성시에 강제성 110v 타입을 가진 녀석만 들어올 수 있다.
    public ElectronicAdapter(IElectronic110V electronic110V) {
        this.electronic110V = electronic110V;
    }

    @Override
    public void connect() {
        electronic110V.connect();
        System.out.println("어댑터를 통해 110v 타입의 기기를 220v 스펙에 연결합니다.");
    }
}
