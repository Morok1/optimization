package jvmquarks.second;

import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;

import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;

@Warmup(iterations = 5, time = 1, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 1, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3, jvmArgsAppend = {"-Xmx1g", "-Xms1g"})
@State(Scope.Benchmark)
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
public class ByteArrayTouch {

    @Param({"1000",
            "10000",
            "1000000",
            "10000000",
            "100000000"})
    int size;

    byte[] mem;

    @Setup
    public void setup() {
        mem = new byte[size];
    }

    @Benchmark
    public byte test() {
        return mem[ThreadLocalRandom.current().nextInt(size)];
    }

    public static void main(String[] args) throws RunnerException {
        Options opt = new OptionsBuilder()
                .include(ByteArrayTouch.class.getSimpleName())
//                .param("arg", "41", "42") // Use this to selectively constrain/override parameters
                .build();
        new Runner(opt).run();
    }
}
