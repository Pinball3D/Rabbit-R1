package kotlin.io;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Console.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\b\u0010 \u001a\u00020!H\u0002J\b\u0010\"\u001a\u00020!H\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00060\u0012j\u0002`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lkotlin/io/LineReader;", "", "()V", "BUFFER_SIZE", "", "byteBuf", "Ljava/nio/ByteBuffer;", "bytes", "", "charBuf", "Ljava/nio/CharBuffer;", "chars", "", "decoder", "Ljava/nio/charset/CharsetDecoder;", "directEOL", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "compactBytes", "decode", "endOfInput", "decodeEndOfInput", "nBytes", "nChars", "readLine", "", "inputStream", "Ljava/io/InputStream;", "charset", "Ljava/nio/charset/Charset;", "resetAll", "", "trimStringBuilder", "updateCharset", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LineReader {
    private static final int BUFFER_SIZE = 32;
    public static final LineReader INSTANCE = new LineReader();
    private static final ByteBuffer byteBuf;
    private static final byte[] bytes;
    private static final CharBuffer charBuf;
    private static final char[] chars;
    private static CharsetDecoder decoder;
    private static boolean directEOL;
    private static final StringBuilder sb;

    private LineReader() {
    }

    static {
        byte[] bArr = new byte[32];
        bytes = bArr;
        char[] cArr = new char[32];
        chars = cArr;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        Intrinsics.checkNotNullExpressionValue(wrap, "wrap(...)");
        byteBuf = wrap;
        CharBuffer wrap2 = CharBuffer.wrap(cArr);
        Intrinsics.checkNotNullExpressionValue(wrap2, "wrap(...)");
        charBuf = wrap2;
        sb = new StringBuilder();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        if (r10 <= 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        r0 = kotlin.io.LineReader.chars;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
    
        if (r0[r10 - 1] != '\n') goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
    
        r1 = r10 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0082, code lost:
    
        if (r1 <= 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008a, code lost:
    
        if (r0[r10 - 2] != '\r') goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008c, code lost:
    
        r10 = r10 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008f, code lost:
    
        r10 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0090, code lost:
    
        r0 = kotlin.io.LineReader.sb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0099, code lost:
    
        if (r0.length() != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a3, code lost:
    
        return new java.lang.String(kotlin.io.LineReader.chars, 0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a4, code lost:
    
        r0.append(kotlin.io.LineReader.chars, 0, r10);
        r10 = r0.toString();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, "toString(...)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b6, code lost:
    
        if (r0.length() <= 32) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b8, code lost:
    
        trimStringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bb, code lost:
    
        r0.setLength(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00bf, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r0.charset(), r11) == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.lang.String readLine(java.io.InputStream r10, java.nio.charset.Charset r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            java.lang.String r0 = "inputStream"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)     // Catch: java.lang.Throwable -> Lc6
            java.lang.String r0 = "charset"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)     // Catch: java.lang.Throwable -> Lc6
            java.nio.charset.CharsetDecoder r0 = kotlin.io.LineReader.decoder     // Catch: java.lang.Throwable -> Lc6
            r1 = 0
            if (r0 == 0) goto L22
            if (r0 != 0) goto L18
            java.lang.String r0 = "decoder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)     // Catch: java.lang.Throwable -> Lc6
            r0 = r1
        L18:
            java.nio.charset.Charset r0 = r0.charset()     // Catch: java.lang.Throwable -> Lc6
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r11)     // Catch: java.lang.Throwable -> Lc6
            if (r0 != 0) goto L25
        L22:
            r9.updateCharset(r11)     // Catch: java.lang.Throwable -> Lc6
        L25:
            r11 = 0
            r0 = r11
            r2 = r0
        L28:
            int r3 = r10.read()     // Catch: java.lang.Throwable -> Lc6
            r4 = 32
            r5 = -1
            r6 = 10
            if (r3 != r5) goto L48
            java.lang.StringBuilder r10 = kotlin.io.LineReader.sb     // Catch: java.lang.Throwable -> Lc6
            java.lang.CharSequence r10 = (java.lang.CharSequence) r10     // Catch: java.lang.Throwable -> Lc6
            int r10 = r10.length()     // Catch: java.lang.Throwable -> Lc6
            if (r10 != 0) goto L43
            if (r0 != 0) goto L43
            if (r2 != 0) goto L43
            monitor-exit(r9)
            return r1
        L43:
            int r10 = r9.decodeEndOfInput(r0, r2)     // Catch: java.lang.Throwable -> Lc6
            goto L76
        L48:
            byte[] r5 = kotlin.io.LineReader.bytes     // Catch: java.lang.Throwable -> Lc6
            int r7 = r0 + 1
            byte r8 = (byte) r3     // Catch: java.lang.Throwable -> Lc6
            r5[r0] = r8     // Catch: java.lang.Throwable -> Lc6
            if (r3 == r6) goto L5a
            if (r7 == r4) goto L5a
            boolean r0 = kotlin.io.LineReader.directEOL     // Catch: java.lang.Throwable -> Lc6
            if (r0 != 0) goto L58
            goto L5a
        L58:
            r0 = r7
            goto L28
        L5a:
            java.nio.ByteBuffer r0 = kotlin.io.LineReader.byteBuf     // Catch: java.lang.Throwable -> Lc6
            r0.limit(r7)     // Catch: java.lang.Throwable -> Lc6
            java.nio.CharBuffer r3 = kotlin.io.LineReader.charBuf     // Catch: java.lang.Throwable -> Lc6
            r3.position(r2)     // Catch: java.lang.Throwable -> Lc6
            int r2 = r9.decode(r11)     // Catch: java.lang.Throwable -> Lc6
            if (r2 <= 0) goto Lc0
            char[] r3 = kotlin.io.LineReader.chars     // Catch: java.lang.Throwable -> Lc6
            int r5 = r2 + (-1)
            char r3 = r3[r5]     // Catch: java.lang.Throwable -> Lc6
            if (r3 != r6) goto Lc0
            r0.position(r11)     // Catch: java.lang.Throwable -> Lc6
            r10 = r2
        L76:
            if (r10 <= 0) goto L90
            char[] r0 = kotlin.io.LineReader.chars     // Catch: java.lang.Throwable -> Lc6
            int r1 = r10 + (-1)
            char r1 = r0[r1]     // Catch: java.lang.Throwable -> Lc6
            if (r1 != r6) goto L90
            int r1 = r10 + (-1)
            if (r1 <= 0) goto L8f
            int r2 = r10 + (-2)
            char r0 = r0[r2]     // Catch: java.lang.Throwable -> Lc6
            r2 = 13
            if (r0 != r2) goto L8f
            int r10 = r10 + (-2)
            goto L90
        L8f:
            r10 = r1
        L90:
            java.lang.StringBuilder r0 = kotlin.io.LineReader.sb     // Catch: java.lang.Throwable -> Lc6
            r1 = r0
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1     // Catch: java.lang.Throwable -> Lc6
            int r1 = r1.length()     // Catch: java.lang.Throwable -> Lc6
            if (r1 != 0) goto La4
            java.lang.String r0 = new java.lang.String     // Catch: java.lang.Throwable -> Lc6
            char[] r1 = kotlin.io.LineReader.chars     // Catch: java.lang.Throwable -> Lc6
            r0.<init>(r1, r11, r10)     // Catch: java.lang.Throwable -> Lc6
            monitor-exit(r9)
            return r0
        La4:
            char[] r1 = kotlin.io.LineReader.chars     // Catch: java.lang.Throwable -> Lc6
            r0.append(r1, r11, r10)     // Catch: java.lang.Throwable -> Lc6
            java.lang.String r10 = r0.toString()     // Catch: java.lang.Throwable -> Lc6
            java.lang.String r1 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r1)     // Catch: java.lang.Throwable -> Lc6
            int r1 = r0.length()     // Catch: java.lang.Throwable -> Lc6
            if (r1 <= r4) goto Lbb
            r9.trimStringBuilder()     // Catch: java.lang.Throwable -> Lc6
        Lbb:
            r0.setLength(r11)     // Catch: java.lang.Throwable -> Lc6
            monitor-exit(r9)
            return r10
        Lc0:
            int r0 = r9.compactBytes()     // Catch: java.lang.Throwable -> Lc6
            goto L28
        Lc6:
            r10 = move-exception
            monitor-exit(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.LineReader.readLine(java.io.InputStream, java.nio.charset.Charset):java.lang.String");
    }

    private final int decode(boolean endOfInput) {
        while (true) {
            CharsetDecoder charsetDecoder = decoder;
            if (charsetDecoder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("decoder");
                charsetDecoder = null;
            }
            ByteBuffer byteBuffer = byteBuf;
            CharBuffer charBuffer = charBuf;
            CoderResult decode = charsetDecoder.decode(byteBuffer, charBuffer, endOfInput);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
            if (decode.isError()) {
                resetAll();
                decode.throwException();
            }
            int position = charBuffer.position();
            if (!decode.isOverflow()) {
                return position;
            }
            StringBuilder sb2 = sb;
            char[] cArr = chars;
            int i = position - 1;
            sb2.append(cArr, 0, i);
            charBuffer.position(0);
            charBuffer.limit(32);
            charBuffer.put(cArr[i]);
        }
    }

    private final int compactBytes() {
        ByteBuffer byteBuffer = byteBuf;
        byteBuffer.compact();
        int position = byteBuffer.position();
        byteBuffer.position(0);
        return position;
    }

    private final int decodeEndOfInput(int nBytes, int nChars) {
        ByteBuffer byteBuffer = byteBuf;
        byteBuffer.limit(nBytes);
        charBuf.position(nChars);
        int decode = decode(true);
        CharsetDecoder charsetDecoder = decoder;
        if (charsetDecoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("decoder");
            charsetDecoder = null;
        }
        charsetDecoder.reset();
        byteBuffer.position(0);
        return decode;
    }

    private final void updateCharset(Charset charset) {
        CharsetDecoder newDecoder = charset.newDecoder();
        Intrinsics.checkNotNullExpressionValue(newDecoder, "newDecoder(...)");
        decoder = newDecoder;
        ByteBuffer byteBuffer = byteBuf;
        byteBuffer.clear();
        CharBuffer charBuffer = charBuf;
        charBuffer.clear();
        byteBuffer.put((byte) 10);
        byteBuffer.flip();
        CharsetDecoder charsetDecoder = decoder;
        if (charsetDecoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("decoder");
            charsetDecoder = null;
        }
        boolean z = false;
        charsetDecoder.decode(byteBuffer, charBuffer, false);
        if (charBuffer.position() == 1 && charBuffer.get(0) == '\n') {
            z = true;
        }
        directEOL = z;
        resetAll();
    }

    private final void resetAll() {
        CharsetDecoder charsetDecoder = decoder;
        if (charsetDecoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("decoder");
            charsetDecoder = null;
        }
        charsetDecoder.reset();
        byteBuf.position(0);
        sb.setLength(0);
    }

    private final void trimStringBuilder() {
        StringBuilder sb2 = sb;
        sb2.setLength(32);
        sb2.trimToSize();
    }
}
