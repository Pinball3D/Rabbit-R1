package androidx.profileinstaller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/* loaded from: classes2.dex */
class Encoding {
    static final int SIZEOF_BYTE = 8;
    static final int UINT_16_SIZE = 2;
    static final int UINT_32_SIZE = 4;
    static final int UINT_8_SIZE = 1;

    private Encoding() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int utf8Length(String str) {
        return str.getBytes(StandardCharsets.UTF_8).length;
    }

    static void writeUInt(OutputStream outputStream, long j, int i) throws IOException {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) ((j >> (i2 * 8)) & 255);
        }
        outputStream.write(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUInt8(OutputStream outputStream, int i) throws IOException {
        writeUInt(outputStream, i, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUInt16(OutputStream outputStream, int i) throws IOException {
        writeUInt(outputStream, i, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUInt32(OutputStream outputStream, long j) throws IOException {
        writeUInt(outputStream, j, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeString(OutputStream outputStream, String str) throws IOException {
        outputStream.write(str.getBytes(StandardCharsets.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int bitsToBytes(int i) {
        return ((i + 7) & (-8)) / 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] read(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read < 0) {
                throw error("Not enough bytes to read: " + i);
            }
            i2 += read;
        }
        return bArr;
    }

    static long readUInt(InputStream inputStream, int i) throws IOException {
        byte[] read = read(inputStream, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (read[i2] & 255) << (i2 * 8);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readUInt8(InputStream inputStream) throws IOException {
        return (int) readUInt(inputStream, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readUInt16(InputStream inputStream) throws IOException {
        return (int) readUInt(inputStream, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long readUInt32(InputStream inputStream) throws IOException {
        return readUInt(inputStream, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String readString(InputStream inputStream, int i) throws IOException {
        return new String(read(inputStream, i), StandardCharsets.UTF_8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        if (r0.finished() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0061, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0068, code lost:
    
        throw error("Inflater did not finish");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] readCompressed(java.io.InputStream r8, int r9, int r10) throws java.io.IOException {
        /*
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r0.<init>()
            byte[] r1 = new byte[r10]     // Catch: java.lang.Throwable -> L8b
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L8b
            r3 = 0
            r4 = r3
            r5 = r4
        Le:
            boolean r6 = r0.finished()     // Catch: java.lang.Throwable -> L8b
            if (r6 != 0) goto L56
            boolean r6 = r0.needsDictionary()     // Catch: java.lang.Throwable -> L8b
            if (r6 != 0) goto L56
            if (r4 >= r9) goto L56
            int r6 = r8.read(r2)     // Catch: java.lang.Throwable -> L8b
            if (r6 < 0) goto L38
            r0.setInput(r2, r3, r6)     // Catch: java.lang.Throwable -> L8b
            int r7 = r10 - r5
            int r7 = r0.inflate(r1, r5, r7)     // Catch: java.util.zip.DataFormatException -> L2e java.lang.Throwable -> L8b
            int r5 = r5 + r7
            int r4 = r4 + r6
            goto Le
        L2e:
            r8 = move-exception
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L8b
            java.lang.RuntimeException r8 = error(r8)     // Catch: java.lang.Throwable -> L8b
            throw r8     // Catch: java.lang.Throwable -> L8b
        L38:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8b
            r8.<init>()     // Catch: java.lang.Throwable -> L8b
            java.lang.String r10 = "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "
            java.lang.StringBuilder r8 = r8.append(r10)     // Catch: java.lang.Throwable -> L8b
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r9 = " bytes"
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L8b
            java.lang.RuntimeException r8 = error(r8)     // Catch: java.lang.Throwable -> L8b
            throw r8     // Catch: java.lang.Throwable -> L8b
        L56:
            if (r4 != r9) goto L69
            boolean r8 = r0.finished()     // Catch: java.lang.Throwable -> L8b
            if (r8 == 0) goto L62
            r0.end()
            return r1
        L62:
            java.lang.String r8 = "Inflater did not finish"
            java.lang.RuntimeException r8 = error(r8)     // Catch: java.lang.Throwable -> L8b
            throw r8     // Catch: java.lang.Throwable -> L8b
        L69:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8b
            r8.<init>()     // Catch: java.lang.Throwable -> L8b
            java.lang.String r10 = "Didn't read enough bytes during decompression. expected="
            java.lang.StringBuilder r8 = r8.append(r10)     // Catch: java.lang.Throwable -> L8b
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r9 = " actual="
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: java.lang.Throwable -> L8b
            java.lang.StringBuilder r8 = r8.append(r4)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L8b
            java.lang.RuntimeException r8 = error(r8)     // Catch: java.lang.Throwable -> L8b
            throw r8     // Catch: java.lang.Throwable -> L8b
        L8b:
            r8 = move-exception
            r0.end()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.Encoding.readCompressed(java.io.InputStream, int, int):byte[]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeCompressed(OutputStream outputStream, byte[] bArr) throws IOException {
        writeUInt32(outputStream, bArr.length);
        byte[] compress = compress(bArr);
        writeUInt32(outputStream, compress.length);
        outputStream.write(compress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] compress(byte[] bArr) throws IOException {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeAll(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[512];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException error(String str) {
        return new IllegalStateException(str);
    }
}
