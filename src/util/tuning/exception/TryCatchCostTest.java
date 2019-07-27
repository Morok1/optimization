package tuning.exception;

public class TryCatchCostTest
{
  public static void main(String[] args)
  {
    Integer i = new Integer(3);
    Boolean b = new Boolean(true);
    int REPEAT = 50000;
    int FACTOR = 1000;
    boolean res;

    System.out.println(test1(i));
    System.out.println(test1(b));
    System.out.println(test2(i));
    System.out.println(test2(b));

    long time = System.currentTimeMillis();
    for (int j = REPEAT*FACTOR; j > 0 ; j--)
      res = test1(i);
    time = System.currentTimeMillis() - time;
    System.out.println("test1(i) took " + time);

    time = System.currentTimeMillis();
    for (int j = REPEAT; j > 0 ; j--)
      res = test1(b);
    time = System.currentTimeMillis() - time;
    System.out.println("test1(b) took " + time);
    System.out.println("Note that test1(b) was executed " + FACTOR + " times less than the other tests");

    time = System.currentTimeMillis();
    for (int j = REPEAT*FACTOR; j > 0 ; j--)
      res = test2(i);
    time = System.currentTimeMillis() - time;
    System.out.println("test2(i) took " + time);

    time = System.currentTimeMillis();
    for (int j = REPEAT*FACTOR; j > 0 ; j--)
      res = test2(b);
    time = System.currentTimeMillis() - time;
    System.out.println("test2(b) took " + time);
  }

  public static boolean test1(Object o)
  {
    try
    {
      Integer i = (Integer) o;
      return false;
    }
    catch (Exception e)
    {
      return true;
    }
  }

  public static boolean test2(Object o)
  {
    if (o instanceof Number)
      return false;
    else
      return true;
  }
}
