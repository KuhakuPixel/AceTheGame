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

	public static List<String> RunCommand(String command, List<String> args) {
		// add first the main command name
		// and the rest of the args
		List<String> commands = new ArrayList<String>();
		commands.add(command);
		for (String s : args)
			commands.add(s);

		//
		List<String> procOutput = new ArrayList<String>();
		ProcessBuilder procBuilder = new ProcessBuilder(commands);

		procBuilder.redirectErrorStream(true);
		try {
			Process proc = procBuilder.start();
			BufferedReader bufferedReader = new BufferedReader(
					new InputStreamReader(proc.getInputStream()));
			String outLine;
			// take all output
			while (true) {
				outLine = bufferedReader.readLine();
				if (outLine == null)
					break;
				procOutput.add(outLine);
			}
			return procOutput;
		} catch (IOException e) {
			// thrown when command doesn't exist
			return procOutput;

		}

	}
}
