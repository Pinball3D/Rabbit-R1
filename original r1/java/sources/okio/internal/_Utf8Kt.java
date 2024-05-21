package okio.internal;

import io.flutter.plugin.editing.SpellCheckPlugin;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Utf8;

/* compiled from: -Utf8.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"commonAsUtf8ToByteArray", "", "", "commonToUtf8String", "beginIndex", "", SpellCheckPlugin.END_INDEX_KEY, "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class _Utf8Kt {
    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        return commonToUtf8String(bArr, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00fb, code lost:
    
        if ((r16[r5] & 192) == 128) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0090, code lost:
    
        if ((r16[r5] & 192) == 128) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String commonToUtf8String(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._Utf8Kt.commonToUtf8String(byte[], int, int):java.lang.String");
    }

    public static final byte[] commonAsUtf8ToByteArray(String commonAsUtf8ToByteArray) {
        int i;
        char charAt;
        Intrinsics.checkNotNullParameter(commonAsUtf8ToByteArray, "$this$commonAsUtf8ToByteArray");
        byte[] bArr = new byte[commonAsUtf8ToByteArray.length() * 4];
        int length = commonAsUtf8ToByteArray.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt2 = commonAsUtf8ToByteArray.charAt(i2);
            if (Intrinsics.compare((int) charAt2, 128) >= 0) {
                int length2 = commonAsUtf8ToByteArray.length();
                int i3 = i2;
                while (i2 < length2) {
                    char charAt3 = commonAsUtf8ToByteArray.charAt(i2);
                    if (Intrinsics.compare((int) charAt3, 128) < 0) {
                        int i4 = i3 + 1;
                        bArr[i3] = (byte) charAt3;
                        i2++;
                        while (i2 < length2 && Intrinsics.compare((int) commonAsUtf8ToByteArray.charAt(i2), 128) < 0) {
                            bArr[i4] = (byte) commonAsUtf8ToByteArray.charAt(i2);
                            i2++;
                            i4++;
                        }
                        i3 = i4;
                    } else {
                        if (Intrinsics.compare((int) charAt3, 2048) < 0) {
                            bArr[i3] = (byte) ((charAt3 >> 6) | 192);
                            i3 += 2;
                            bArr[i3 + 1] = (byte) ((charAt3 & '?') | 128);
                        } else if (55296 > charAt3 || 57343 < charAt3) {
                            bArr[i3] = (byte) ((charAt3 >> '\f') | 224);
                            bArr[i3 + 1] = (byte) (((charAt3 >> 6) & 63) | 128);
                            i3 += 3;
                            bArr[i3 + 2] = (byte) ((charAt3 & '?') | 128);
                        } else if (Intrinsics.compare((int) charAt3, 56319) > 0 || length2 <= (i = i2 + 1) || 56320 > (charAt = commonAsUtf8ToByteArray.charAt(i)) || 57343 < charAt) {
                            bArr[i3] = Utf8.REPLACEMENT_BYTE;
                            i2++;
                            i3++;
                        } else {
                            int charAt4 = ((charAt3 << '\n') + commonAsUtf8ToByteArray.charAt(i)) - 56613888;
                            bArr[i3] = (byte) ((charAt4 >> 18) | 240);
                            bArr[i3 + 1] = (byte) (((charAt4 >> 12) & 63) | 128);
                            bArr[i3 + 2] = (byte) (((charAt4 >> 6) & 63) | 128);
                            i3 += 4;
                            bArr[i3 + 3] = (byte) ((charAt4 & 63) | 128);
                            i2 += 2;
                        }
                        i2++;
                    }
                }
                byte[] copyOf = Arrays.copyOf(bArr, i3);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                return copyOf;
            }
            bArr[i2] = (byte) charAt2;
            i2++;
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, commonAsUtf8ToByteArray.length());
        Intrinsics.checkNotNullExpressionValue(copyOf2, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf2;
    }
}
