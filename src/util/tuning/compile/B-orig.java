package tuning.compile;

public class B
{
  public static final String VALUE1 = "hi: " + (10*9);
  static int VALUE2 = A.VALUE1;
  static int foo2()
  {
    return A.foo1();
  }
  static int foo3()
  {
    if (A.DEBUG)
      System.out.println("In B.foo()");
    return 55;
  }
}
