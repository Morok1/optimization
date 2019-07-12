package jvmquarks.forth;

import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;

import java.util.concurrent.TimeUnit;

@Warmup(iterations = 3)
@Measurement(iterations = 3)
@Fork(3)
@BenchmarkMode(Mode.SingleShotTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
public class ArrayAlloc {
    @Benchmark
    public Object test() {
        final int size = 50_000_000;
        Object[] objects = new Object[size];
        for (int c = 0; c < size; c++) {
            objects[c] = new Object();
        }
        return objects;
    }
    public static void main(String[] args) throws RunnerException {
        Options opt = new OptionsBuilder()
                .include(ArrayAlloc.class.getSimpleName())
//                .param("arg", "41", "42") // Use this to selectively constrain/override parameters
                .build();
        new Runner(opt).run();
    }
}
