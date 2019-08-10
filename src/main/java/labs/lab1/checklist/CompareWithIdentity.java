package labs.lab1.checklist;

import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;

@State(Scope.Benchmark)
@BenchmarkMode(Mode.AverageTime)
public class CompareWithIdentity {
    private static final Integer value1 = 1;
    private static final Integer value2 = 1;

    @Benchmark
    public void test_identity(){
        boolean result = value1 == value2;
    }


    @Benchmark
    public void test_equality(){
        boolean result = value1.equals(value2);
    }

    public static void main(String[] args) throws RunnerException {
        Options opt = new OptionsBuilder()
                .include(UseStringBuffer.class.getSimpleName())
//                .param("arg", "41", "42") // Use this to selectively constrain/override parameters
                .build();
        new Runner(opt).run();
    }
}
