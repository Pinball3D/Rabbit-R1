package okio;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.google.common.base.Ascii;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.ByteStringKt;

/* compiled from: -Util.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0000\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\fH\u0000\u001a\u0019\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0080\b\u001a\u0019\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010\u000f\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\u0015\u0010\u000f\u001a\u00020\f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fH\u0080\f\u001a\u0015\u0010\u000f\u001a\u00020\f*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\fH\u0080\f\u001a\f\u0010\u0012\u001a\u00020\u0005*\u00020\u0005H\u0000\u001a\f\u0010\u0012\u001a\u00020\f*\u00020\fH\u0000\u001a\f\u0010\u0012\u001a\u00020\u0013*\u00020\u0013H\u0000\u001a\u0015\u0010\u0014\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\u0015\u0010\u0015\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\u0010H\u0000\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\u0005H\u0000\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\fH\u0000¨\u0006\u0018"}, d2 = {"arrayRangeEquals", "", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "", "aOffset", "", "b", "bOffset", "byteCount", "checkOffsetAndCount", "", "size", "", "offset", "minOf", "and", "", "other", "reverseBytes", "", "shl", "shr", "toHexString", "", "okio"}, k = 2, mv = {1, 4, 0})
/* renamed from: okio.-Util, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Util {
    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final long and(byte b, long j) {
        return b & j;
    }

    public static final long and(int i, long j) {
        return i & j;
    }

    public static final int reverseBytes(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static final long reverseBytes(long j) {
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
    }

    public static final short reverseBytes(short s) {
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    public static final int shl(byte b, int i) {
        return b << i;
    }

    public static final int shr(byte b, int i) {
        return b >> i;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static final long minOf(long j, int i) {
        return Math.min(j, i);
    }

    public static final long minOf(int i, long j) {
        return Math.min(i, j);
    }

    public static final boolean arrayRangeEquals(byte[] a, int i, byte[] b, int i2, int i3) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (a[i4 + i] != b[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final String toHexString(byte b) {
        return new String(new char[]{ByteStringKt.getHEX_DIGIT_CHARS()[(b >> 4) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[b & Ascii.SI]});
    }

    public static final String toHexString(int i) {
        if (i == 0) {
            return "0";
        }
        int i2 = 0;
        char[] cArr = {ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 28) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 24) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 20) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 16) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 12) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 8) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 4) & 15], ByteStringKt.getHEX_DIGIT_CHARS()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return new String(cArr, i2, 8 - i2);
    }

    public static final String toHexString(long j) {
        if (j == 0) {
            return "0";
        }
        int i = 0;
        char[] cArr = {ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 60) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 56) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 52) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 48) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 44) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 40) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 36) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 32) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 28) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 24) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 20) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 16) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 12) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 8) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 4) & 15)], ByteStringKt.getHEX_DIGIT_CHARS()[(int) (j & 15)]};
        while (i < 16 && cArr[i] == '0') {
            i++;
        }
        return new String(cArr, i, 16 - i);
    }
}
