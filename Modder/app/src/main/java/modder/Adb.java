
/* 
 * wrapper for running adb command
*/
package modder;

import java.util.List;
import java.util.ArrayList;

public class Adb {
    public enum Error {
        ok,
        no_connection,
    }

    public class Output {

        public List<String> strings = new ArrayList<String>();
        public Error error = Error.ok;

    }

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
            out.strings = Util.RunCommand("adb", command);
        }
        return out;

    }

    /*
     * Run a command inside adb shell
     * before running [command], it will check if the shell can
     * be connected by trying to run "echo test" and check its output
     * 
     * 
     */
    public Output RunShell(String command) {
        command = String.format("shell %s", command);
        return Run(command);

    }

    public Output ListApk() {

        Adb.Output out = RunShell("pm list packages");
        if (out.error != Adb.Error.ok) {
            return out;
        }
        List<String> apks = new ArrayList<String>();
        // output will look like
        // package:com.android.offfice
        // package:com.vivo.appstore
        // "package:" should be trimmed for better view
        for (int i = 0; i < out.strings.size(); i++) {
            // use the caret symbol '^'
            // to match the beggining of the pattern
            String new_str = out.strings.get(i).replaceFirst("^package:", "");
            apks.add(new_str);
        }
        out.strings = apks;
        return out;

    }

    public Output GetApkPathAtDevice(String package_name) {

        Adb.Output out = RunShell("pm path " + package_name);
        if (out.error != Adb.Error.ok) {
            return out;
        }
        List<String> apks_paths = new ArrayList<String>();
        // output will look like
        // package:/system/app/name
        // package:/system/test/clashroyale
        // "package:" should be trimmed
        for (int i = 0; i < out.strings.size(); i++) {
            // use the caret symbol '^'
            // to match the beggining of the pattern
            String new_str = out.strings.get(i).replaceFirst("^package:", "");
            apks_paths.add(new_str);
        }
        out.strings = apks_paths;
        return out;
    }

    public Output DownloadApk(String path_to_apk, String downloadDir) {

	String cmd = String.format("pull %s %s",path_to_apk, downloadDir);
        Output out = Run(cmd);
        if (out.error != Adb.Error.ok) {
            return out;
        }
        return out;
    }

}
