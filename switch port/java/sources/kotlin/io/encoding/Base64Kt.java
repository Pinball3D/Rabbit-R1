package kotlin.io.encoding;

import io.sentry.protocol.SentryStackFrame;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* compiled from: Base64.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0001\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u0006\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0003\"\u000e\u0010\b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"base64DecodeMap", "", "getBase64DecodeMap$annotations", "()V", "base64EncodeMap", "", "base64UrlDecodeMap", "getBase64UrlDecodeMap$annotations", "base64UrlEncodeMap", "isInMimeAlphabet", "", SentryStackFrame.JsonKeys.SYMBOL, "", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Base64Kt {
    private static final int[] base64DecodeMap;
    private static final byte[] base64EncodeMap;
    private static final int[] base64UrlDecodeMap;
    private static final byte[] base64UrlEncodeMap;

    private static /* synthetic */ void getBase64DecodeMap$annotations() {
    }

    private static /* synthetic */ void getBase64UrlDecodeMap$annotations() {
    }

    static {
        byte[] bArr = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        base64EncodeMap = bArr;
        int[] iArr = new int[256];
        int i = 0;
        ArraysKt.fill$default(iArr, -1, 0, 0, 6, (Object) null);
        iArr[61] = -2;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            iArr[bArr[i2]] = i3;
            i2++;
            i3++;
        }
        base64DecodeMap = iArr;
        byte[] bArr2 = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        base64UrlEncodeMap = bArr2;
        int[] iArr2 = new int[256];
        ArraysKt.fill$default(iArr2, -1, 0, 0, 6, (Object) null);
        iArr2[61] = -2;
        int length2 = bArr2.length;
        int i4 = 0;
        while (i < length2) {
            iArr2[bArr2[i]] = i4;
            i++;
            i4++;
        }
        base64UrlDecodeMap = iArr2;
    }

    public static final boolean isInMimeAlphabet(int i) {
        if (i >= 0) {
            int[] iArr = base64DecodeMap;
            if (i < iArr.length && iArr[i] != -1) {
                return true;
            }
        }
        return false;
    }
}
