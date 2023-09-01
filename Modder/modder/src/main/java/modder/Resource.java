package modder;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

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

    public static File GetFile(ClassLoader classLoader, String resourceFile) {

        try {
            // need to decode the path, because for some reason,
            // getResource().getFile replace space with %20
            // and it will cause File.exist() to fail
            // what a mess

            // decoding the url seems to fix it
            // https://stackoverflow.com/questions/31133361/how-to-get-file-from-resources-when-blank-space-is-in-path 
            // https://stackoverflow.com/a/12125969/14073678
            String filePath = URLDecoder.decode(
                    classLoader.getResource(resourceFile).getFile(),
                    "UTF-8");
            return new File(filePath);
        } catch (UnsupportedEncodingException e) {
            System.out.printf("Warning: cannot get file of resource file %s\n %s", resourceFile, e.getMessage());
            return new File("");
        }
    }
}
