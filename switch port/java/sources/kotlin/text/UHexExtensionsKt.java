package kotlin.text;

import io.flutter.plugin.editing.SpellCheckPlugin;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UHexExtensions.kt */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u0005\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\b\u001a\u001c\u0010\t\u001a\u00020\n*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u000b\u001a\u001c\u0010\f\u001a\u00020\r*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u000e\u001a\u001c\u0010\u000f\u001a\u00020\u0010*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u0011\u001a\u001e\u0010\u0012\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0013\u0010\u0014\u001a2\u0010\u0012\u001a\u00020\u0002*\u00020\u00072\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001e\u0010\u0012\u001a\u00020\u0002*\u00020\u00072\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001e\u0010\u0012\u001a\u00020\u0002*\u00020\n2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001e\u0010\u0012\u001a\u00020\u0002*\u00020\r2\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001e\u0010\u0012\u001a\u00020\u0002*\u00020\u00102\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"hexToUByte", "Lkotlin/UByte;", "", "format", "Lkotlin/text/HexFormat;", "(Ljava/lang/String;Lkotlin/text/HexFormat;)B", "hexToUByteArray", "Lkotlin/UByteArray;", "(Ljava/lang/String;Lkotlin/text/HexFormat;)[B", "hexToUInt", "Lkotlin/UInt;", "(Ljava/lang/String;Lkotlin/text/HexFormat;)I", "hexToULong", "Lkotlin/ULong;", "(Ljava/lang/String;Lkotlin/text/HexFormat;)J", "hexToUShort", "Lkotlin/UShort;", "(Ljava/lang/String;Lkotlin/text/HexFormat;)S", "toHexString", "toHexString-ZQbaR00", "(BLkotlin/text/HexFormat;)Ljava/lang/String;", SpellCheckPlugin.START_INDEX_KEY, "", SpellCheckPlugin.END_INDEX_KEY, "toHexString-lZCiFrA", "([BIILkotlin/text/HexFormat;)Ljava/lang/String;", "toHexString-zHuV2wU", "([BLkotlin/text/HexFormat;)Ljava/lang/String;", "toHexString-8M7LxHw", "(ILkotlin/text/HexFormat;)Ljava/lang/String;", "toHexString-8UJCm-I", "(JLkotlin/text/HexFormat;)Ljava/lang/String;", "toHexString-r3ox_E0", "(SLkotlin/text/HexFormat;)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UHexExtensionsKt {
    /* renamed from: toHexString-zHuV2wU, reason: not valid java name */
    private static final String m7008toHexStringzHuV2wU(byte[] toHexString, HexFormat format) {
        Intrinsics.checkNotNullParameter(toHexString, "$this$toHexString");
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(toHexString, format);
    }

    /* renamed from: toHexString-zHuV2wU$default, reason: not valid java name */
    static /* synthetic */ String m7009toHexStringzHuV2wU$default(byte[] toHexString, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(toHexString, "$this$toHexString");
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(toHexString, format);
    }

    /* renamed from: toHexString-lZCiFrA$default, reason: not valid java name */
    static /* synthetic */ String m7005toHexStringlZCiFrA$default(byte[] toHexString, int i, int i2, HexFormat format, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = UByteArray.m5775getSizeimpl(toHexString);
        }
        if ((i3 & 4) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(toHexString, "$this$toHexString");
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(toHexString, i, i2, format);
    }

    /* renamed from: toHexString-lZCiFrA, reason: not valid java name */
    private static final String m7004toHexStringlZCiFrA(byte[] toHexString, int i, int i2, HexFormat format) {
        Intrinsics.checkNotNullParameter(toHexString, "$this$toHexString");
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(toHexString, i, i2, format);
    }

    static /* synthetic */ byte[] hexToUByteArray$default(String str, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UByteArray.m5769constructorimpl(HexExtensionsKt.hexToByteArray(str, format));
    }

    private static final byte[] hexToUByteArray(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UByteArray.m5769constructorimpl(HexExtensionsKt.hexToByteArray(str, format));
    }

    /* renamed from: toHexString-ZQbaR00, reason: not valid java name */
    private static final String m7002toHexStringZQbaR00(byte b, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(b, format);
    }

    /* renamed from: toHexString-ZQbaR00$default, reason: not valid java name */
    static /* synthetic */ String m7003toHexStringZQbaR00$default(byte b, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(b, format);
    }

    private static final byte hexToUByte(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UByte.m5716constructorimpl(HexExtensionsKt.hexToByte(str, format));
    }

    static /* synthetic */ byte hexToUByte$default(String str, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UByte.m5716constructorimpl(HexExtensionsKt.hexToByte(str, format));
    }

    /* renamed from: toHexString-r3ox_E0, reason: not valid java name */
    private static final String m7006toHexStringr3ox_E0(short s, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(s, format);
    }

    /* renamed from: toHexString-r3ox_E0$default, reason: not valid java name */
    static /* synthetic */ String m7007toHexStringr3ox_E0$default(short s, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(s, format);
    }

    private static final short hexToUShort(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UShort.m5979constructorimpl(HexExtensionsKt.hexToShort(str, format));
    }

    static /* synthetic */ short hexToUShort$default(String str, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UShort.m5979constructorimpl(HexExtensionsKt.hexToShort(str, format));
    }

    /* renamed from: toHexString-8M7LxHw, reason: not valid java name */
    private static final String m6998toHexString8M7LxHw(int i, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(i, format);
    }

    /* renamed from: toHexString-8M7LxHw$default, reason: not valid java name */
    static /* synthetic */ String m6999toHexString8M7LxHw$default(int i, HexFormat format, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(i, format);
    }

    private static final int hexToUInt(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UInt.m5793constructorimpl(HexExtensionsKt.hexToInt(str, format));
    }

    static /* synthetic */ int hexToUInt$default(String str, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return UInt.m5793constructorimpl(HexExtensionsKt.hexToInt(str, format));
    }

    /* renamed from: toHexString-8UJCm-I, reason: not valid java name */
    private static final String m7000toHexString8UJCmI(long j, HexFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(j, format);
    }

    /* renamed from: toHexString-8UJCm-I$default, reason: not valid java name */
    static /* synthetic */ String m7001toHexString8UJCmI$default(long j, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(format, "format");
        return HexExtensionsKt.toHexString(j, format);
    }

    private static final long hexToULong(String str, HexFormat format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return ULong.m5872constructorimpl(HexExtensionsKt.hexToLong(str, format));
    }

    static /* synthetic */ long hexToULong$default(String str, HexFormat format, int i, Object obj) {
        if ((i & 1) != 0) {
            format = HexFormat.INSTANCE.getDefault();
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return ULong.m5872constructorimpl(HexExtensionsKt.hexToLong(str, format));
    }
}
