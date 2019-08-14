package labs.lab1.examples.par42objectreuse;
//The previous example of a pool manager can be used by
// multiple threads in a multithreaded application,althoughthegetVector( )andreturnVector( )methodsfirstneedtobedefinedas synchronized .

//references
//http://samolisov.blogspot.com/2011/04/threadlocal.html
/*
Рассмотрим следующую задачу: нужно написать многопоточное приложение, в котором
каждый поток участвует в построении некоторой структуры данных внутри некоторого класса-билдера,
 при этом хочется отследить сколько записей в структуре построил тот или иной поток.*/

public class ThreadLocals {
    public static int[] array = new int[10];


    public static void main(String[] args) {

    }

    public class MyThread implements Runnable{
        private int[] array;

        public MyThread(int[] array) {
            this.array = array;
        }

        @Override
        public void run() {

        }
    }
}
