package tuning.threads;

import java.util.*;

public class ExplicitLocks2
  implements Runnable
{
  static int REPEAT;
  static int WORK;
  static private long startTime = -1;
  static int blueBoxes = 0;
  static int redBoxes = 0;

  public static void main(String args[])
  {
    REPEAT = (args.length > 0) ? Integer.parseInt(args[0]) : 10;
    WORK = (args.length > 1) ? Integer.parseInt(args[1]) : 1000000;
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
    (new Thread(new ExplicitLocks2())).start();
  }
  public static void intensiveWork()
  {
    //simulate some intensive work
    for(int i = WORK; i > 0; i--);
  }
  public void run()
  {
    if (startTime == -1)
      startTime = System.currentTimeMillis();
    for (int i = -REPEAT; i < REPEAT; i++)
    {
        updateBlueBox(i);
        updateRedBox(i);
    }
    System.out.println("Time taken: " + (System.currentTimeMillis()-startTime));
  }
  private static Object BLUE_LOCK = new Object();
  private static Object RED_LOCK = new Object();
  public static void updateBlueBox(int addition)
  {
    synchronized (BLUE_LOCK) {
      blueBoxes += addition;
    }
    intensiveWork();
  }
  public static void updateRedBox(int addition)
  {
    synchronized (RED_LOCK) {
      redBoxes += addition;
    }
    intensiveWork();
  }
}
