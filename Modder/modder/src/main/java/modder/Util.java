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

        // try to run command with arguments --helps,
        // because most of program when given the argument will print help
        // and exit immediately if it exist
        ProcessBuilder procBuilder = new ProcessBuilder(command, "--help");
        try {
            procBuilder.start();
            return true;
        } catch (IOException e) {
            // thrown when command doesn't exist
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

            while ((outBuff = stdErr.readLine()) != null)
                commands_out.add(outBuff);

            return commands_out;
        }

        catch (IOException e) {

            return commands_out;
        }

    }
}
