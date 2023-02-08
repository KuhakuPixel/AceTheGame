
/* 
 * wrapper for running adb command
*/
package modder;

import java.util.List;
import java.util.ArrayList;

public class AdbShell {
    public enum Error {
        ok,
        no_connection,
    }

    public class Output {

        public List<String> strings = new ArrayList<String>();
        public Error error = Error.ok;

    }

    /* 
     * Run a command inside adb shell
     * before running [command], it will check if the shell can
     * be connected by trying to run "echo test" and check its output
     * 
     * 
    */
    public Output Run(String command) {

        Output out = new Output();

        // test if adb shell can be connected by echoing in
        // the shell and check the output
        out.strings = Util.RunCommand("adb", "shell echo test");
        if (out.strings.size() >= 1) {
            if (!out.strings.get(0).equals("test"))
                out.error = Error.no_connection;

        }

        else {
            out.error = Error.no_connection;
        }

        // shell is alive, execute shell command
        if (out.error == Error.ok) {
            out.strings = Util.RunCommand("adb", "shell " + command);
        }
        return out;

    }

}
