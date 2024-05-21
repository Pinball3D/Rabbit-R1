package okio;

import com.google.common.base.Ascii;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.profilemeasurements.ProfileMeasurement;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Utf8.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0007H\u0080\b\u001a4\u0010\u0010\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0017\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0018\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0019\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001a\u001a\u00020\u0016*\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001c\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a%\u0010\u001d\u001a\u00020\u001e*\u00020\u001b2\b\b\u0002\u0010\u0012\u001a\u00020\u00012\b\b\u0002\u0010\u0013\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u001f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"HIGH_SURROGATE_HEADER", "", "LOG_SURROGATE_HEADER", "MASK_2BYTES", "MASK_3BYTES", "MASK_4BYTES", "REPLACEMENT_BYTE", "", "REPLACEMENT_CHARACTER", "", "REPLACEMENT_CODE_POINT", "isIsoControl", "", "codePoint", "isUtf8Continuation", ProfileMeasurement.UNIT_BYTES, "process2Utf8Bytes", "", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "yield", "Lkotlin/Function1;", "", "process3Utf8Bytes", "process4Utf8Bytes", "processUtf16Chars", "processUtf8Bytes", "", "processUtf8CodePoints", "utf8Size", "", "size", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i) {
        return (i >= 0 && 31 >= i) || (127 <= i && 159 >= i);
    }

    public static final boolean isUtf8Continuation(byte b) {
        return (b & 192) == 128;
    }

    public static final long size(String str) {
        return size$default(str, 0, 0, 3, null);
    }

    public static final long size(String str, int i) {
        return size$default(str, i, 0, 2, null);
    }

    public static /* synthetic */ long size$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return size(str, i, i2);
    }

    public static final long size(String utf8Size, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(utf8Size, "$this$utf8Size");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= utf8Size.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + utf8Size.length()).toString());
        }
        long j = 0;
        while (i < i2) {
            char charAt = utf8Size.charAt(i);
            if (charAt < 128) {
                j++;
            } else {
                if (charAt < 2048) {
                    i3 = 2;
                } else if (charAt < 55296 || charAt > 57343) {
                    i3 = 3;
                } else {
                    int i4 = i + 1;
                    char charAt2 = i4 < i2 ? utf8Size.charAt(i4) : (char) 0;
                    if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                        j++;
                        i = i4;
                    } else {
                        j += 4;
                        i += 2;
                    }
                }
                j += i3;
            }
            i++;
        }
        return j;
    }

    public static final void processUtf8Bytes(String processUtf8Bytes, int i, int i2, Function1<? super Byte, Unit> yield) {
        int i3;
        char charAt;
        Intrinsics.checkNotNullParameter(processUtf8Bytes, "$this$processUtf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        while (i < i2) {
            char charAt2 = processUtf8Bytes.charAt(i);
            if (Intrinsics.compare((int) charAt2, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) charAt2));
                i++;
                while (i < i2 && Intrinsics.compare((int) processUtf8Bytes.charAt(i), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) processUtf8Bytes.charAt(i)));
                    i++;
                }
            } else {
                if (Intrinsics.compare((int) charAt2, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((charAt2 >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((charAt2 & '?') | 128)));
                } else if (55296 > charAt2 || 57343 < charAt2) {
                    yield.invoke(Byte.valueOf((byte) ((charAt2 >> '\f') | 224)));
                    yield.invoke(Byte.valueOf((byte) (((charAt2 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((charAt2 & '?') | 128)));
                } else if (Intrinsics.compare((int) charAt2, 56319) > 0 || i2 <= (i3 = i + 1) || 56320 > (charAt = processUtf8Bytes.charAt(i3)) || 57343 < charAt) {
                    yield.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                } else {
                    int charAt3 = ((charAt2 << '\n') + processUtf8Bytes.charAt(i3)) - 56613888;
                    yield.invoke(Byte.valueOf((byte) ((charAt3 >> 18) | 240)));
                    yield.invoke(Byte.valueOf((byte) (((charAt3 >> 12) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) (((charAt3 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((charAt3 & 63) | 128)));
                    i += 2;
                }
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ef, code lost:
    
        if ((r11[r0] & 192) == 128) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0081, code lost:
    
        if ((r11[r0] & 192) == 128) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void processUtf8CodePoints(byte[] r11, int r12, int r13, kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf8CodePoints(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f1, code lost:
    
        if ((r11[r0] & 192) == 128) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0083, code lost:
    
        if ((r11[r0] & 192) == 128) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void processUtf16Chars(byte[] r11, int r12, int r13, kotlin.jvm.functions.Function1<? super java.lang.Character, kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf16Chars(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    public static final int process2Utf8Bytes(byte[] process2Utf8Bytes, int i, int i2, Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(process2Utf8Bytes, "$this$process2Utf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i3 = i + 1;
        Integer valueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b = process2Utf8Bytes[i];
        byte b2 = process2Utf8Bytes[i3];
        if ((b2 & 192) != 128) {
            yield.invoke(valueOf);
            return 1;
        }
        int i4 = (b2 ^ 3968) ^ (b << 6);
        if (i4 < 128) {
            yield.invoke(valueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i4));
        return 2;
    }

    public static final int process3Utf8Bytes(byte[] process3Utf8Bytes, int i, int i2, Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(process3Utf8Bytes, "$this$process3Utf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i3 = i + 2;
        Integer valueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(valueOf);
            int i4 = i + 1;
            return (i2 <= i4 || (process3Utf8Bytes[i4] & 192) != 128) ? 1 : 2;
        }
        byte b = process3Utf8Bytes[i];
        byte b2 = process3Utf8Bytes[i + 1];
        if ((b2 & 192) != 128) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b3 = process3Utf8Bytes[i3];
        if ((b3 & 192) != 128) {
            yield.invoke(valueOf);
            return 2;
        }
        int i5 = ((b3 ^ (-123008)) ^ (b2 << 6)) ^ (b << Ascii.FF);
        if (i5 < 2048) {
            yield.invoke(valueOf);
            return 3;
        }
        if (55296 <= i5 && 57343 >= i5) {
            yield.invoke(valueOf);
            return 3;
        }
        yield.invoke(Integer.valueOf(i5));
        return 3;
    }

    public static final int process4Utf8Bytes(byte[] process4Utf8Bytes, int i, int i2, Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(process4Utf8Bytes, "$this$process4Utf8Bytes");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i3 = i + 3;
        Integer valueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(valueOf);
            int i4 = i + 1;
            if (i2 <= i4 || (process4Utf8Bytes[i4] & 192) != 128) {
                return 1;
            }
            int i5 = i + 2;
            return (i2 <= i5 || (process4Utf8Bytes[i5] & 192) != 128) ? 2 : 3;
        }
        byte b = process4Utf8Bytes[i];
        byte b2 = process4Utf8Bytes[i + 1];
        if ((b2 & 192) != 128) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b3 = process4Utf8Bytes[i + 2];
        if ((b3 & 192) != 128) {
            yield.invoke(valueOf);
            return 2;
        }
        byte b4 = process4Utf8Bytes[i3];
        if ((b4 & 192) != 128) {
            yield.invoke(valueOf);
            return 3;
        }
        int i6 = (((b4 ^ 3678080) ^ (b3 << 6)) ^ (b2 << Ascii.FF)) ^ (b << Ascii.DC2);
        if (i6 > 1114111) {
            yield.invoke(valueOf);
            return 4;
        }
        if (55296 <= i6 && 57343 >= i6) {
            yield.invoke(valueOf);
            return 4;
        }
        if (i6 < 65536) {
            yield.invoke(valueOf);
            return 4;
        }
        yield.invoke(Integer.valueOf(i6));
        return 4;
    }
}
