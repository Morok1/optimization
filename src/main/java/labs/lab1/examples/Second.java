package labs.lab1.examples;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class Second {
    public static void main(String[] args) {
        Integer myObject = 0;
        Reference<Integer> reference = new WeakReference<>(myObject);
        if (reference == null) {
            System.out.println("Removed by gc!");
        }
        System.out.println("Not removed!");
    }
}
