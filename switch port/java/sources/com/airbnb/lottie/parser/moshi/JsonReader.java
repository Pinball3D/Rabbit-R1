package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* loaded from: classes2.dex */
public abstract class JsonReader implements Closeable {
    private static final String[] REPLACEMENT_CHARS = new String[128];
    boolean failOnUnknown;
    boolean lenient;
    int stackSize;
    int[] scopes = new int[32];
    String[] pathNames = new String[32];
    int[] pathIndices = new int[32];

    /* loaded from: classes2.dex */
    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    public abstract void beginArray() throws IOException;

    public abstract void beginObject() throws IOException;

    public abstract void endArray() throws IOException;

    public abstract void endObject() throws IOException;

    public abstract boolean hasNext() throws IOException;

    public abstract boolean nextBoolean() throws IOException;

    public abstract double nextDouble() throws IOException;

    public abstract int nextInt() throws IOException;

    public abstract String nextName() throws IOException;

    public abstract String nextString() throws IOException;

    public abstract Token peek() throws IOException;

    public abstract int selectName(Options options) throws IOException;

    public abstract void skipName() throws IOException;

    public abstract void skipValue() throws IOException;

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public static JsonReader of(BufferedSource bufferedSource) {
        return new JsonUtf8Reader(bufferedSource);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void pushScope(int i) {
        int i2 = this.stackSize;
        int[] iArr = this.scopes;
        if (i2 == iArr.length) {
            if (i2 == 256) {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
            this.scopes = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.pathNames;
            this.pathNames = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.pathIndices;
            this.pathIndices = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.scopes;
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        iArr3[i3] = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JsonEncodingException syntaxError(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + getPath());
    }

    public final String getPath() {
        return JsonScope.getPath(this.stackSize, this.scopes, this.pathNames, this.pathIndices);
    }

    /* loaded from: classes2.dex */
    public static final class Options {
        final okio.Options doubleQuoteSuffix;
        final String[] strings;

        private Options(String[] strArr, okio.Options options) {
            this.strings = strArr;
            this.doubleQuoteSuffix = options;
        }

        public static Options of(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i = 0; i < strArr.length; i++) {
                    JsonReader.string(buffer, strArr[i]);
                    buffer.readByte();
                    byteStringArr[i] = buffer.readByteString();
                }
                return new Options((String[]) strArr.clone(), okio.Options.of(byteStringArr));
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void string(okio.BufferedSink r7, java.lang.String r8) throws java.io.IOException {
        /*
            java.lang.String[] r0 = com.airbnb.lottie.parser.moshi.JsonReader.REPLACEMENT_CHARS
            r1 = 34
            r7.writeByte(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = r3
        Ld:
            if (r3 >= r2) goto L36
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L1c
            r5 = r0[r5]
            if (r5 != 0) goto L29
            goto L33
        L1c:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L23
            java.lang.String r5 = "\\u2028"
            goto L29
        L23:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L33
            java.lang.String r5 = "\\u2029"
        L29:
            if (r4 >= r3) goto L2e
            r7.writeUtf8(r8, r4, r3)
        L2e:
            r7.writeUtf8(r5)
            int r4 = r3 + 1
        L33:
            int r3 = r3 + 1
            goto Ld
        L36:
            if (r4 >= r2) goto L3b
            r7.writeUtf8(r8, r4, r2)
        L3b:
            r7.writeByte(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonReader.string(okio.BufferedSink, java.lang.String):void");
    }
}
