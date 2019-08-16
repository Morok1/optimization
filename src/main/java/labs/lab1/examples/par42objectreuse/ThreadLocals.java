package labs.lab1.examples.par42objectreuse;
//The previous example of a pool manager can be used by
// multiple threads in a multithreaded application,althoughthegetVector( )andreturnVector( )methodsfirstneedtobedefinedas synchronized .

//references
//http://samolisov.blogspot.com/2011/04/threadlocal.html
//https://articles.javatalks.ru/articles/17
/*
Рассмотрим следующую задачу: нужно написать многопоточное приложение, в котором
каждый поток участвует в построении некоторой структуры данных внутри некоторого класса-билдера,
 при этом хочется отследить сколько записей в структуре построил тот или иной поток.*/

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ThreadLocals {
    private static List<Integer> integerList = new ArrayList<>();

    private static Map<String, Integer> map = new ConcurrentHashMap<>();

    public static void main(String[] args) {


        MyThread myThread1 = new MyThread(integerList, map);
        MyThread myThread2 = new MyThread(integerList, map);
    }

    public static class MyThread implements Runnable{
        private ThreadLocal<Integer> counter;
        private List<Integer> integerList;
        private Map<String, Integer> map;

        public MyThread(List<Integer> integers, Map<String, Integer> map) {
            this.integerList = integers;
            this.map = map;
        }

        @Override
        public void run() {

        }
    }
}
