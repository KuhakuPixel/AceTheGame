/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package modder

import org.apache.commons.lang3.SystemUtils
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test

internal class TestUtil {
    @Test
    fun DoesCommandExist() {
        // commands that should exit on windows and unix like OS
        Assertions.assertEquals(true,Util.DoesCommandExist("ping"))
        // some random command that will never exist
        Assertions.assertEquals(false, Util.DoesCommandExist("wioiofj902jnci43b199u"))
        Assertions.assertEquals(false, Util.DoesCommandExist("u3902u9hbrnodooej2hwioehfwejof"))
        Assertions.assertEquals(false, Util.DoesCommandExist("3490t433ocworo3i40ehfh"))
        Assertions.assertEquals(false, Util.DoesCommandExist("93u09u904utoidwwht4j39"))
    }

    @Test
    fun ArrayConcat() {
        Assertions.assertArrayEquals(arrayOf("hello", "world"),
                Util.ArrayConcat(arrayOf("hello"), arrayOf("world")))
        Assertions.assertArrayEquals(arrayOf("hello", "world", "goodbye"),
                Util.ArrayConcat(arrayOf("hello", "world"), arrayOf("goodbye")))
        Assertions.assertArrayEquals(arrayOf("hello", "world", "goodbye", "nice", "good"),
                Util.ArrayConcat(arrayOf("hello", "world"), arrayOf("goodbye", "nice", "good")))

        // when empty
        Assertions.assertArrayEquals(arrayOf<String>(),
                Util.ArrayConcat(arrayOf(), arrayOf<String>()))
        Assertions.assertArrayEquals(arrayOf<Int>(),
                Util.ArrayConcat(arrayOf(), arrayOf<Int>()))
        // when NULL
        Assertions.assertArrayEquals(
                null,
                Util.ArrayConcat(null, null))
    }

    @Test
    fun RunCommand() {

        // test RunCommand on echo command, because it is one of command
        // which ouput can be controlled

        // only run this test on unix like system
        // because windows's echo command seems to be built in to the shell
        // not a binary, so it can't executed it on windows
        if (SystemUtils.IS_OS_UNIX) {
            var output: List<String> = ArrayList()
            output = Util.RunCommand("echo", mutableListOf<String>("hello"))
            Assertions.assertIterableEquals(mutableListOf<String>("hello"), output)
            output = Util.RunCommand("echo", mutableListOf<String>("hello world"))
            Assertions.assertIterableEquals(mutableListOf<String>("hello world"), output)
            output = Util.RunCommand("echo", mutableListOf<String>("hello and goodbye world"))
            Assertions.assertIterableEquals(mutableListOf<String>("hello and goodbye world"), output)
            output = Util.RunCommand("echo", mutableListOf<String>("hello\nworld"))
            Assertions.assertIterableEquals(mutableListOf<String>("hello", "world"), output)
            output = Util.RunCommand("echo", mutableListOf<String>("hello\nworld\nbye"))
            Assertions.assertIterableEquals(mutableListOf<String>("hello", "world", "bye"), output)

            // check if it can also run binary from absolute path
            output = Util.RunCommand("/usr/bin/echo", mutableListOf<String>("hello\nworld\nbye"))
            Assertions.assertIterableEquals(mutableListOf<String>("hello", "world", "bye"), output)
        }
    }
}
