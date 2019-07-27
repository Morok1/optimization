package labs.lab1;

/**

 * The following code fragment creates lots of objects to force the garbage collector to work,
 * and also includes some synchronous calls to the garbage collector:
 *
 */

public class First{

    private static final int LIMIT = 100;

    public static void main(String[] args) throws InterruptedException {
        int SIZE = 100;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < LIMIT; i++) {
             stringBuffer.append(i).append(i+1).append(i+2);
        }
        long time  = System.currentTimeMillis();
        System.gc();
        System.out.println("Time of gc time: " + String.valueOf(System.currentTimeMillis() - time));
    }
}



