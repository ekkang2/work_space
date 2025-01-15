package design_pattern;

public class MainTest {

    // main <- 코드 시작 점
    public static void main(String[] args) {

        SingleTon singleTon1 = SingleTon.getInstance();
        SingleTon singleTon2 = SingleTon.getInstance();

        System.out.println(singleTon1);
        System.out.println(singleTon2);
        if (singleTon1 == singleTon2) {
            System.out.println("같은 객체가 맞아요");
        }
    }


}
