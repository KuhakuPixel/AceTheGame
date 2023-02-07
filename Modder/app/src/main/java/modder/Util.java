/* 
 * Common utilities 
*/
package modder;

import java.io.IOException;

public class Util {

    public static boolean DoesCommandExist(String command) {
        // TODO: add log warning when exception
        //       - this way of checking is quite dangerous
        //       - because it actually try to execute it 
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
                return false;

            }
            int exitCode = process.exitValue();

            // 0 indicates normal termination, meaning the program exist
            // in path
            return exitCode == 0;
        }

        catch (IOException e) {
            return false;
        }

    }

}
