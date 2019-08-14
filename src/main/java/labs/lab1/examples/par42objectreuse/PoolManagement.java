package labs.lab1.examples.par42objectreuse;

import labs.lab1.examples.par42objectreuse.extracclass.Vector;

//Most container objects (e.g., Vectors, Hashtables) can be reused rather than
// created and thrown away. Of course, while you are not using the retained objects,
// you are holding on to more memory than if you simply discarded those objects,
public class PoolManagement {
    private Vector[] pool;
    private boolean[] isUse;
    private static final int INCREMENT = 10;

    public PoolManagement(int poolSize) {
        pool = new Vector[poolSize];
        isUse = new boolean[poolSize];

        for (int i = 0; i < poolSize; i++) {
            pool[i] = new Vector();
            isUse[i] = false;
        }
    }

    //1task
    public synchronized Vector getVector(){
        for (int i = 0; i < pool.length - 1; i++) {
            if(!isUse[i]){
                isUse[i] = true;
                return pool[i];
            }
        }

        boolean[] old_isUse  = new boolean[pool.length +10];
        boolean[] isUse = new boolean[pool.length + 10];

        Vector[] oldPoll = pool;

        pool = new Vector[pool.length + INCREMENT];
        System.arraycopy(oldPoll, 0, pool, 0, oldPoll.length);


        return null;
    }

    public synchronized void returnVector(Vector vector){
        for (int i = pool.length - 1; i == 0 ; i--) {
            if(pool[i].equals(vector)){
                isUse[i] = false;
            }
        }
        throw new RuntimeException("This vector is missing!");

    }
}
