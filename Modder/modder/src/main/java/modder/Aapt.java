
/*
 * add additional functionally on top of apktool's aapt manager
 * */
package modder;

import brut.common.BrutException;
import brut.util.AaptManager;
import java.util.List;
import java.util.ArrayList;
import java.io.File;

public class Aapt {

	public static List<String> RunCmd(String args) {
		List<String> output = new ArrayList<String>();
		File aaptFile;
		// get aapt
		try {
			aaptFile = AaptManager.getAapt1();
		} catch (BrutException e) {
			System.out.printf("%s\n", e.getMessage());
			return output;
		}
		output = Util.RunCommand(aaptFile.getAbsolutePath(), args);

		return output;
	}
}
