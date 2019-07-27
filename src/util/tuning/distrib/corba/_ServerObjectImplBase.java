package tuning.distrib.corba;


/**
* tuning/distrib/corba/_ServerObjectImplBase.java
* Generated by the IDL-to-Java compiler (portable), version "3.0"
* from tuning/distrib/corba/ServerObject.idl
* Thursday, March 23, 2000 7:10:51 PM GMT+00:00
*/

public abstract class _ServerObjectImplBase extends org.omg.CORBA.portable.ObjectImpl
                implements tuning.distrib.corba.ServerObject, org.omg.CORBA.portable.InvokeHandler
{

  // Constructors
  public _ServerObjectImplBase ()
  {
  }

  private static java.util.Hashtable _methods = new java.util.Hashtable ();
  static
  {
    _methods.put ("getBoolean", new java.lang.Integer (0));
    _methods.put ("getNumber", new java.lang.Integer (1));
    _methods.put ("getString", new java.lang.Integer (2));
    _methods.put ("setBoolean", new java.lang.Integer (3));
    _methods.put ("setNumber", new java.lang.Integer (4));
    _methods.put ("setString", new java.lang.Integer (5));
    _methods.put ("setAll", new java.lang.Integer (6));
  }

  public org.omg.CORBA.portable.OutputStream _invoke (String method,
                                org.omg.CORBA.portable.InputStream in,
                                org.omg.CORBA.portable.ResponseHandler rh)
  {
    org.omg.CORBA.portable.OutputStream out = null;
    java.lang.Integer __method = (java.lang.Integer)_methods.get (method);
    if (__method == null)
      throw new org.omg.CORBA.BAD_OPERATION (0, org.omg.CORBA.CompletionStatus.COMPLETED_MAYBE);

    switch (__method.intValue ())
    {
       case 0:  // tuning/distrib/corba/ServerObject/getBoolean
       {
         boolean __result = false;
         __result = this.getBoolean ();
         out = rh.createReply();
         out.write_boolean (__result);
         break;
       }

       case 1:  // tuning/distrib/corba/ServerObject/getNumber
       {
         int __result = (int)0;
         __result = this.getNumber ();
         out = rh.createReply();
         out.write_long (__result);
         break;
       }

       case 2:  // tuning/distrib/corba/ServerObject/getString
       {
         String __result = null;
         __result = this.getString ();
         out = rh.createReply();
         out.write_string (__result);
         break;
       }

       case 3:  // tuning/distrib/corba/ServerObject/setBoolean
       {
         boolean flag = in.read_boolean ();
         this.setBoolean (flag);
         out = rh.createReply();
         break;
       }

       case 4:  // tuning/distrib/corba/ServerObject/setNumber
       {
         int i = in.read_long ();
         this.setNumber (i);
         out = rh.createReply();
         break;
       }

       case 5:  // tuning/distrib/corba/ServerObject/setString
       {
         String obj = in.read_string ();
         this.setString (obj);
         out = rh.createReply();
         break;
       }

       case 6:  // tuning/distrib/corba/ServerObject/setAll
       {
         boolean flag = in.read_boolean ();
         int i = in.read_long ();
         String obj = in.read_string ();
         this.setAll (flag, i, obj);
         out = rh.createReply();
         break;
       }

       default:
         throw new org.omg.CORBA.BAD_OPERATION (0, org.omg.CORBA.CompletionStatus.COMPLETED_MAYBE);
    }

    return out;
  } // _invoke

  // Type-specific CORBA::Object operations
  private static String[] __ids = {
    "IDL:tuning/distrib/corba/ServerObject:1.0"};

  public String[] _ids ()
  {
    return __ids;
  }


} // class _ServerObjectImplBase
