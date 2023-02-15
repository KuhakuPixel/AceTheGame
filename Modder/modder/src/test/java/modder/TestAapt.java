
package modder;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.util.List;
import java.util.ArrayList;

class TestAapt {
	@Test
	void RunBasicCmd() {
		List<String> output = new ArrayList<String>();

		// should contains basic info about aapt when run with --help
		output = Aapt.RunCmd("--help");
		assertEquals(true, output.contains("Android Asset Packaging Tool"));
		assertEquals(true, output.contains("Usage:"));
	}
}
