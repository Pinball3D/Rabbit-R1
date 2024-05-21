package androidx.emoji2.text.flatbuffer;

import com.google.common.base.Ascii;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i, int i2);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    /* loaded from: classes2.dex */
    static class DecodeUtil {
        private static char highSurrogate(int i) {
            return (char) ((i >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean isNotTrailingByte(byte b) {
            return b > -65;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isOneByte(byte b) {
            return b >= 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isThreeBytes(byte b) {
            return b < -16;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isTwoBytes(byte b) {
            return b < -32;
        }

        private static char lowSurrogate(int i) {
            return (char) ((i & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int trailingByteValue(byte b) {
            return b & okio.Utf8.REPLACEMENT_BYTE;
        }

        DecodeUtil() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleOneByte(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleTwoBytes(byte b, byte b2, char[] cArr, int i) throws IllegalArgumentException {
            if (b < -62) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            }
            if (isNotTrailingByte(b2)) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            cArr[i] = (char) (((b & Ascii.US) << 6) | trailingByteValue(b2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleThreeBytes(byte b, byte b2, byte b3, char[] cArr, int i) throws IllegalArgumentException {
            if (isNotTrailingByte(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || isNotTrailingByte(b3)))) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            cArr[i] = (char) (((b & Ascii.SI) << 12) | (trailingByteValue(b2) << 6) | trailingByteValue(b3));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleFourBytes(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws IllegalArgumentException {
            if (isNotTrailingByte(b2) || (((b << Ascii.FS) + (b2 + 112)) >> 30) != 0 || isNotTrailingByte(b3) || isNotTrailingByte(b4)) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            int trailingByteValue = ((b & 7) << 18) | (trailingByteValue(b2) << 12) | (trailingByteValue(b3) << 6) | trailingByteValue(b4);
            cArr[i] = highSurrogate(trailingByteValue);
            cArr[i + 1] = lowSurrogate(trailingByteValue);
        }
    }

    /* loaded from: classes2.dex */
    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }
}
