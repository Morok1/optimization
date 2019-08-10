package labs.lab1.checklist;

import jvmquarks.first.LockRoach;
import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;

@State(Scope.Benchmark)
@BenchmarkMode(Mode.AverageTime)
public class UseStringBuffer {
    private static final String string1 = "1";
    private static final String string2 = "2";

    private static final StringBuffer stringBuffer = new StringBuffer(string1);
    @Benchmark
    public static void useSumOperator(){
        String string3 = string1 + string2;
    }

    @Benchmark
    public static void userStringBuffer(){
        stringBuffer.append(string2);
    }

    public static void main(String[] args) throws RunnerException {
        Options opt = new OptionsBuilder()
                .include(UseStringBuffer.class.getSimpleName())
//                .param("arg", "41", "42") // Use this to selectively constrain/override parameters
                .build();
        new Runner(opt).run();
    }
}
