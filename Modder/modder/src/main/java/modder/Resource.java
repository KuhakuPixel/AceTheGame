package modder;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.nio.file.Path;
import java.nio.file.Paths;

/* 
 * class that handles reading resources from jar
*/
public class Resource {

    public void CopyResourceFile(String resourceFile, String destFile) throws IOException {

        InputStream in = getClass().getResourceAsStream(resourceFile);
        Path outputPath = Paths.get(destFile);
        Files.copy(in, outputPath, StandardCopyOption.REPLACE_EXISTING);

    }
}
