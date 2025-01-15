package design_pattern;

// 싱글톤 패턴을 작성해보시오

// 1. 정적 변수를 선언한다.
// 2. private 생성자 선언한다.
// 3. 외부에서 접근할 수 있는 public 메서드를 만들어 준다.
public class SingleTon {

    // 1. 유일한 인스턴스를 저장할 변수를 선언한다. (private, static)
    private static SingleTon instance;

    // 2. 외부에서 객체를 생성하지 못 하도록 막기만 한다.
    private SingleTon() {}

    // 3. 외부에서 인스턴스 주소를 반환 받을 수 있는 메서드를 선언한다.
    public static SingleTon getInstance() {
        if (instance == null) {
            instance = new SingleTon();
        }
        return instance;
    }

    public static void main(String[] args) {
        // 싱글톤 객체를 불러와 보자.

    }
}
