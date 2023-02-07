/* 
 * Common utilities 
*/
package modder;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;

public class Util {

    public static <T> T[] ArrayConcat(T[] a, T[] b) {
        if (a == null || b == null)
            return null;
        // allocate enough space for both a and b
        T[] combined = Arrays.copyOf(a, a.length + b.length);
        //
        int destPos = a.length;
        System.arraycopy(b, 0, combined, destPos, b.length);
        return combined;
    }

    public static boolean DoesCommandExist(String command) {
        // TODO: add log warning when exception
        // - this way of checking is quite dangerous
        // - because it actually try to execute it
        Runtime runtime = Runtime.getRuntime();
        try {
            Process process = runtime.exec(command + " --help");

            try {
                // wait for program to exit
                // this is needed, because exec will run on
                // different thread
                // https://stackoverflow.com/questions/25979336/handling-the-illegalthreadstateexception
                process.waitFor();
            } catch (InterruptedException interruptedException) {
                // System.out.println("false, interrupted exception");
                return false;

            }
            int exitCode = process.exitValue();

            // if program is able to return a ret code
            // then it exist
            // System.out.println("exit code" + exitCode);
            return true;
        }

        catch (IOException e) {
            // System.out.println("false, IO exception");
            return false;
        }

    }

    public static List<String> RunCommand(String command, String args) {
        String[] args_arr = args.split(" ");
        // add commands name and arguments
        String[] commands = { command };
        commands = Util.ArrayConcat(commands, args_arr);
        //
        Runtime runtime = Runtime.getRuntime();

        List<String> commands_out = new ArrayList<String>();
        try {
            Process process = runtime.exec(commands);

            try {
                process.waitFor();
            } catch (InterruptedException interruptedException) {
                return commands_out;

            }
            // get output from process
            BufferedReader stdIn = new BufferedReader(new InputStreamReader(process.getInputStream()));

            BufferedReader stdErr = new BufferedReader(new InputStreamReader(process.getErrorStream()));
            String outBuff = "";

            while ((outBuff = stdIn.readLine()) != null)
                commands_out.add(outBuff);

            return commands_out;
        }

        catch (IOException e) {

            return commands_out;
        }

    }
}
