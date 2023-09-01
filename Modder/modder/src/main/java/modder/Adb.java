/* 
 * wrapper for running adb command
*/
package modder;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Adb {
    public enum Error {
        ok,
        no_connection,
    }

    public class Output {

        public List<String> strings = new ArrayList<String>();
        public Error error = Error.ok;

    }

    public Output Run(List<String> command) {
        Output out = new Output();

        // test if adb shell can be connected by echoing in
        // the shell and check the output
        out.strings = Util.RunCommand("adb", Arrays.asList("shell", "echo", "test"));
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
    public Output RunShell(List<String> shellArg) {
        List<String> commands = new ArrayList<String>();
        //
        commands.add("shell");
        for (String s : shellArg)
            commands.add(s);
        return Run(commands);

    }

    public Output ListApk() {

        Adb.Output out = RunShell(Arrays.asList("pm", "list", "packages"));
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

        Adb.Output out = RunShell(Arrays.asList("pm", "path", package_name));
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

        Output out = Run(Arrays.asList("pull", path_to_apk, downloadDir));
        if (out.error != Adb.Error.ok) {
            return out;
        }
        return out;
    }

    public Output InstallApk(String apkDirStr) throws IOException {

        File apkDir = new File(apkDirStr);
        Assert.AssertExistAndIsDirectory(apkDir);
        List<String> command = new ArrayList<String>();
        // use install-multiple to install one or more apk
        // https://android.stackexchange.com/questions/221204/how-to-install-xapk-apks-or-multiple-apks-via-adb
        command.add("install-multiple");
        for (File f : apkDir.listFiles()) {
            // only collect file that has extension of *.apk
            if (f.getAbsolutePath().endsWith(".apk"))
                command.add(f.getAbsolutePath());
        }
        Output out = Run(command);
        return out;

    }

}
