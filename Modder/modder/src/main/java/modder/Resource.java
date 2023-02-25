package modder;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.nio.file.Path;
import java.nio.file.Paths;

/* 
 * class that handles reading resources file from jar
 * because reading file directly will throw an error
 * 
 * so it must be read as an input stream
 * https://stackoverflow.com/a/20389418/14073678
*/
public class Resource {

    /*
     * [resourceFile]: path to resource file, must start with '/'
     */
    public void CopyResourceFile(String resourceFile, String destFile) throws IOException {

        InputStream in = getClass().getResourceAsStream(resourceFile);
        Path outputPath = Paths.get(destFile);
        System.out.printf("Copying resources file %s to %s\n", resourceFile, destFile);
        Files.copy(in, outputPath, StandardCopyOption.REPLACE_EXISTING);

    }
}
