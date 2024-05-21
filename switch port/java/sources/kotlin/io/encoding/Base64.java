package kotlin.io.encoding;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Ascii;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.protocol.TransactionInfo;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okio.Utf8;

/* compiled from: Base64.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0017\u0018\u0000 22\u00020\u0001:\u00012B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0002\b\rJ%\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0013J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011H\u0002J%\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u001bJ\"\u0010\u001c\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J\"\u0010\u001c\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J0\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J4\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J4\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J \u0010 \u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\"\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J4\u0010\"\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J5\u0010#\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0002\b$J\u0010\u0010%\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0002J=\u0010&\u001a\u0002H'\"\f\b\u0000\u0010'*\u00060(j\u0002`)2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001e\u001a\u0002H'2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0002\u0010*J\"\u0010+\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J%\u0010,\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0002\b-J(\u0010.\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0011H\u0002J \u00101\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u00063"}, d2 = {"Lkotlin/io/encoding/Base64;", "", "isUrlSafe", "", "isMimeScheme", "(ZZ)V", "isMimeScheme$kotlin_stdlib", "()Z", "isUrlSafe$kotlin_stdlib", "bytesToStringImpl", "", TransactionInfo.JsonKeys.SOURCE, "", "bytesToStringImpl$kotlin_stdlib", "charsToBytesImpl", "", SpellCheckPlugin.START_INDEX_KEY, "", SpellCheckPlugin.END_INDEX_KEY, "charsToBytesImpl$kotlin_stdlib", "checkDestinationBounds", "", "destinationSize", "destinationOffset", "capacityNeeded", "checkSourceBounds", "sourceSize", "checkSourceBounds$kotlin_stdlib", "decode", "decodeImpl", "destination", "decodeIntoByteArray", "decodeSize", "encode", "encodeIntoByteArray", "encodeIntoByteArrayImpl", "encodeIntoByteArrayImpl$kotlin_stdlib", "encodeSize", "encodeToAppendable", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;", "encodeToByteArray", "encodeToByteArrayImpl", "encodeToByteArrayImpl$kotlin_stdlib", "handlePaddingSymbol", "padIndex", "byteStart", "skipIllegalSymbolsIfMime", "Default", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public class Base64 {
    private static final int bitsPerByte = 8;
    private static final int bitsPerSymbol = 6;
    public static final int bytesPerGroup = 3;
    private static final int mimeGroupsPerLine = 19;
    public static final int mimeLineLength = 76;
    public static final byte padSymbol = 61;
    public static final int symbolsPerGroup = 4;
    private final boolean isMimeScheme;
    private final boolean isUrlSafe;

    /* renamed from: Default, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final byte[] mimeLineSeparatorSymbols = {Ascii.CR, 10};
    private static final Base64 UrlSafe = new Base64(true, false);
    private static final Base64 Mime = new Base64(false, true);

    public /* synthetic */ Base64(boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2);
    }

    /* renamed from: isMimeScheme$kotlin_stdlib, reason: from getter */
    public final boolean getIsMimeScheme() {
        return this.isMimeScheme;
    }

    /* renamed from: isUrlSafe$kotlin_stdlib, reason: from getter */
    public final boolean getIsUrlSafe() {
        return this.isUrlSafe;
    }

    private Base64(boolean z, boolean z2) {
        this.isUrlSafe = z;
        this.isMimeScheme = z2;
        if (z && z2) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToByteArray");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.encodeToByteArray(bArr, i, i2);
    }

    public final byte[] encodeToByteArray(byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex);
    }

    public static /* synthetic */ int encodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
        }
        int i5 = (i4 & 4) != 0 ? 0 : i;
        int i6 = (i4 & 8) != 0 ? 0 : i2;
        if ((i4 & 16) != 0) {
            i3 = bArr.length;
        }
        return base64.encodeIntoByteArray(bArr, bArr2, i5, i6, i3);
    }

    public final int encodeIntoByteArray(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return encodeIntoByteArrayImpl$kotlin_stdlib(source, destination, destinationOffset, startIndex, endIndex);
    }

    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.encode(bArr, i, i2);
    }

    public final String encode(byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1);
    }

    public static /* synthetic */ Appendable encodeToAppendable$default(Base64 base64, byte[] bArr, Appendable appendable, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToAppendable");
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = bArr.length;
        }
        return base64.encodeToAppendable(bArr, appendable, i, i2);
    }

    public final <A extends Appendable> A encodeToAppendable(byte[] source, A destination, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        destination.append(new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1));
        return destination;
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.decode(bArr, i, i2);
    }

    public final byte[] decode(byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        int decodeSize = decodeSize(source, startIndex, endIndex);
        byte[] bArr = new byte[decodeSize];
        if (decodeImpl(source, bArr, 0, startIndex, endIndex) == decodeSize) {
            return bArr;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i5 = (i4 & 4) != 0 ? 0 : i;
        int i6 = (i4 & 8) != 0 ? 0 : i2;
        if ((i4 & 16) != 0) {
            i3 = bArr.length;
        }
        return base64.decodeIntoByteArray(bArr, bArr2, i5, i6, i3);
    }

    public final int decodeIntoByteArray(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, decodeSize(source, startIndex, endIndex));
        return decodeImpl(source, destination, destinationOffset, startIndex, endIndex);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        return base64.decode(charSequence, i, i2);
    }

    public final byte[] decode(CharSequence source, int startIndex, int endIndex) {
        byte[] charsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof String) {
            checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
            String substring = ((String) source).substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            charsToBytesImpl$kotlin_stdlib = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(charsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            charsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decode$default(this, charsToBytesImpl$kotlin_stdlib, 0, 0, 6, (Object) null);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i5 = (i4 & 4) != 0 ? 0 : i;
        int i6 = (i4 & 8) != 0 ? 0 : i2;
        if ((i4 & 16) != 0) {
            i3 = charSequence.length();
        }
        return base64.decodeIntoByteArray(charSequence, bArr, i5, i6, i3);
    }

    public final int decodeIntoByteArray(CharSequence source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        byte[] charsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (source instanceof String) {
            checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
            String substring = ((String) source).substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            charsToBytesImpl$kotlin_stdlib = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(charsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            charsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decodeIntoByteArray$default(this, charsToBytesImpl$kotlin_stdlib, destination, destinationOffset, 0, 0, 24, (Object) null);
    }

    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        byte[] bArr = new byte[encodeSize(endIndex - startIndex)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, startIndex, endIndex);
        return bArr;
    }

    public final int encodeIntoByteArrayImpl$kotlin_stdlib(byte[] source, byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        checkDestinationBounds(destination.length, destinationOffset, encodeSize(endIndex - startIndex));
        byte[] access$getBase64UrlEncodeMap$p = this.isUrlSafe ? Base64Kt.access$getBase64UrlEncodeMap$p() : Base64Kt.access$getBase64EncodeMap$p();
        int i = this.isMimeScheme ? 19 : Integer.MAX_VALUE;
        int i2 = destinationOffset;
        while (startIndex + 2 < endIndex) {
            int min = Math.min((endIndex - startIndex) / 3, i);
            for (int i3 = 0; i3 < min; i3++) {
                int i4 = source[startIndex] & 255;
                int i5 = startIndex + 2;
                int i6 = source[startIndex + 1] & 255;
                startIndex += 3;
                int i7 = (i6 << 8) | (i4 << 16) | (source[i5] & 255);
                destination[i2] = access$getBase64UrlEncodeMap$p[i7 >>> 18];
                destination[i2 + 1] = access$getBase64UrlEncodeMap$p[(i7 >>> 12) & 63];
                int i8 = i2 + 3;
                destination[i2 + 2] = access$getBase64UrlEncodeMap$p[(i7 >>> 6) & 63];
                i2 += 4;
                destination[i8] = access$getBase64UrlEncodeMap$p[i7 & 63];
            }
            if (min == i && startIndex != endIndex) {
                int i9 = i2 + 1;
                byte[] bArr = mimeLineSeparatorSymbols;
                destination[i2] = bArr[0];
                i2 += 2;
                destination[i9] = bArr[1];
            }
        }
        int i10 = endIndex - startIndex;
        if (i10 == 1) {
            int i11 = (source[startIndex] & 255) << 4;
            destination[i2] = access$getBase64UrlEncodeMap$p[i11 >>> 6];
            destination[i2 + 1] = access$getBase64UrlEncodeMap$p[i11 & 63];
            int i12 = i2 + 3;
            destination[i2 + 2] = padSymbol;
            i2 += 4;
            destination[i12] = padSymbol;
            startIndex++;
        } else if (i10 == 2) {
            int i13 = startIndex + 1;
            int i14 = source[startIndex] & 255;
            startIndex += 2;
            int i15 = ((source[i13] & 255) << 2) | (i14 << 10);
            destination[i2] = access$getBase64UrlEncodeMap$p[i15 >>> 12];
            destination[i2 + 1] = access$getBase64UrlEncodeMap$p[(i15 >>> 6) & 63];
            int i16 = i2 + 3;
            destination[i2 + 2] = access$getBase64UrlEncodeMap$p[i15 & 63];
            i2 += 4;
            destination[i16] = padSymbol;
        }
        if (startIndex == endIndex) {
            return i2 - destinationOffset;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final int encodeSize(int sourceSize) {
        int i = (sourceSize + 2) / 3;
        int i2 = (i * 4) + ((this.isMimeScheme ? (i - 1) / 19 : 0) * 2);
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException("Input is too big");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d2, code lost:
    
        if (r7 == (-2)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d4, code lost:
    
        r0 = skipIllegalSymbolsIfMime(r19, r5, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d8, code lost:
    
        if (r0 < r23) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00dc, code lost:
    
        return r8 - r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00dd, code lost:
    
        r1 = r19[r0] & 255;
        r3 = new java.lang.StringBuilder("Symbol '").append((char) r1).append("'(");
        r1 = java.lang.Integer.toString(r1, kotlin.text.CharsKt.checkRadix(8));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, "toString(...)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x011b, code lost:
    
        throw new java.lang.IllegalArgumentException(r3.append(r1).append(") at index ").append(r0 - 1).append(" is prohibited after the pad character").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0123, code lost:
    
        throw new java.lang.IllegalArgumentException("The last unit of input does not have enough bits");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int decodeImpl(byte[] r19, byte[] r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.encoding.Base64.decodeImpl(byte[], byte[], int, int, int):int");
    }

    private final int decodeSize(byte[] source, int startIndex, int endIndex) {
        int i = endIndex - startIndex;
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            throw new IllegalArgumentException("Input should have at list 2 symbols for Base64 decoding, startIndex: " + startIndex + ", endIndex: " + endIndex);
        }
        if (this.isMimeScheme) {
            while (true) {
                if (startIndex >= endIndex) {
                    break;
                }
                int i2 = Base64Kt.access$getBase64DecodeMap$p()[source[startIndex] & 255];
                if (i2 < 0) {
                    if (i2 == -2) {
                        i -= endIndex - startIndex;
                        break;
                    }
                    i--;
                }
                startIndex++;
            }
        } else if (source[endIndex - 1] == 61) {
            i = source[endIndex + (-2)] == 61 ? i - 2 : i - 1;
        }
        return (int) ((i * 6) / 8);
    }

    public final byte[] charsToBytesImpl$kotlin_stdlib(CharSequence source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
        byte[] bArr = new byte[endIndex - startIndex];
        int i = 0;
        while (startIndex < endIndex) {
            char charAt = source.charAt(startIndex);
            if (charAt <= 255) {
                bArr[i] = (byte) charAt;
                i++;
            } else {
                bArr[i] = Utf8.REPLACEMENT_BYTE;
                i++;
            }
            startIndex++;
        }
        return bArr;
    }

    public final String bytesToStringImpl$kotlin_stdlib(byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        StringBuilder sb = new StringBuilder(source.length);
        for (byte b : source) {
            sb.append((char) b);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    private final int handlePaddingSymbol(byte[] source, int padIndex, int endIndex, int byteStart) {
        if (byteStart == -8) {
            throw new IllegalArgumentException("Redundant pad character at index " + padIndex);
        }
        if (byteStart != -6) {
            if (byteStart == -4) {
                int skipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(source, padIndex + 1, endIndex);
                if (skipIllegalSymbolsIfMime == endIndex || source[skipIllegalSymbolsIfMime] != 61) {
                    throw new IllegalArgumentException("Missing one pad character at index " + skipIllegalSymbolsIfMime);
                }
                return skipIllegalSymbolsIfMime + 1;
            }
            if (byteStart != -2) {
                throw new IllegalStateException("Unreachable".toString());
            }
        }
        return padIndex + 1;
    }

    private final int skipIllegalSymbolsIfMime(byte[] source, int startIndex, int endIndex) {
        if (!this.isMimeScheme) {
            return startIndex;
        }
        while (startIndex < endIndex) {
            if (Base64Kt.access$getBase64DecodeMap$p()[source[startIndex] & 255] != -1) {
                return startIndex;
            }
            startIndex++;
        }
        return startIndex;
    }

    public final void checkSourceBounds$kotlin_stdlib(int sourceSize, int startIndex, int endIndex) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(startIndex, endIndex, sourceSize);
    }

    private final void checkDestinationBounds(int destinationSize, int destinationOffset, int capacityNeeded) {
        if (destinationOffset < 0 || destinationOffset > destinationSize) {
            throw new IndexOutOfBoundsException("destination offset: " + destinationOffset + ", destination size: " + destinationSize);
        }
        int i = destinationOffset + capacityNeeded;
        if (i < 0 || i > destinationSize) {
            throw new IndexOutOfBoundsException("The destination array does not have enough capacity, destination offset: " + destinationOffset + ", destination size: " + destinationSize + ", capacity needed: " + capacityNeeded);
        }
    }

    /* compiled from: Base64.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0005R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lkotlin/io/encoding/Base64$Default;", "Lkotlin/io/encoding/Base64;", "()V", "Mime", "getMime", "()Lkotlin/io/encoding/Base64;", "UrlSafe", "getUrlSafe", "bitsPerByte", "", "bitsPerSymbol", "bytesPerGroup", "mimeGroupsPerLine", "mimeLineLength", "mimeLineSeparatorSymbols", "", "getMimeLineSeparatorSymbols$kotlin_stdlib", "()[B", "padSymbol", "", "symbolsPerGroup", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* renamed from: kotlin.io.encoding.Base64$Default, reason: from kotlin metadata */
    /* loaded from: classes3.dex */
    public static final class Companion extends Base64 {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Companion() {
            /*
                r2 = this;
                r0 = 0
                r1 = 0
                r2.<init>(r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.io.encoding.Base64.Companion.<init>():void");
        }

        public final byte[] getMimeLineSeparatorSymbols$kotlin_stdlib() {
            return Base64.mimeLineSeparatorSymbols;
        }

        public final Base64 getUrlSafe() {
            return Base64.UrlSafe;
        }

        public final Base64 getMime() {
            return Base64.Mime;
        }
    }
}
