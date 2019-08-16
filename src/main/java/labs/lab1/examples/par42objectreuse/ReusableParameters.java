package labs.lab1.examples.par42objectreuse;
//Reuse also applies when a constant object is returned for information.
// For example, the preferredSize( )ofacustomizedwidgetreturnsaDimensionobjectthatisnormallyone particular dimension.
public class ReusableParameters {
    private final int a  = 1;
    private final int b  = 2;

    public static class Canon{
        public static final Integer ONE = new Integer(1);
        public static final Integer TWO = new Integer(2);
        public static final Integer THREE = new Integer(3);
    }

}
