package org.billinghack

class Util {
    companion object {
        fun randomString(length: Int): String {
            val allowedChars = ('A'..'Z') + ('a'..'z') + ('0'..'9')
            var randomStr = ""

            for (i in 0 until length)
                randomStr += allowedChars.random()

            return randomStr

        }
    }
}