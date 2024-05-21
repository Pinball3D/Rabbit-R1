package androidx.compose.ui.graphics.colorspace;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ColorModel.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u000bJ\u000f\u0010\u0013\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/ColorModel;", "", "packedValue", "", "constructor-impl", "(J)J", "componentCount", "", "getComponentCount$annotations", "()V", "getComponentCount-impl", "(J)I", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "Companion", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class ColorModel {
    private static final long Cmyk;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long Lab;
    private static final long Rgb;
    private static final long Xyz;
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ColorModel m3036boximpl(long j) {
        return new ColorModel(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m3037constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m3038equalsimpl(long j, Object obj) {
        return (obj instanceof ColorModel) && j == ((ColorModel) obj).getPackedValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3039equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getComponentCount$annotations() {
    }

    /* renamed from: getComponentCount-impl, reason: not valid java name */
    public static final int m3040getComponentCountimpl(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m3041hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public boolean equals(Object obj) {
        return m3038equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m3041hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getPackedValue() {
        return this.packedValue;
    }

    private /* synthetic */ ColorModel(long j) {
        this.packedValue = j;
    }

    /* compiled from: ColorModel.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;", "", "()V", "Cmyk", "Landroidx/compose/ui/graphics/colorspace/ColorModel;", "getCmyk-xdoWZVw", "()J", "J", "Lab", "getLab-xdoWZVw", "Rgb", "getRgb-xdoWZVw", "Xyz", "getXyz-xdoWZVw", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getRgb-xdoWZVw, reason: not valid java name */
        public final long m3046getRgbxdoWZVw() {
            return ColorModel.Rgb;
        }

        /* renamed from: getXyz-xdoWZVw, reason: not valid java name */
        public final long m3047getXyzxdoWZVw() {
            return ColorModel.Xyz;
        }

        /* renamed from: getLab-xdoWZVw, reason: not valid java name */
        public final long m3045getLabxdoWZVw() {
            return ColorModel.Lab;
        }

        /* renamed from: getCmyk-xdoWZVw, reason: not valid java name */
        public final long m3044getCmykxdoWZVw() {
            return ColorModel.Cmyk;
        }
    }

    static {
        long j = 3;
        long j2 = j << 32;
        Rgb = m3037constructorimpl((0 & KeyboardMap.kValueMask) | j2);
        Xyz = m3037constructorimpl((1 & KeyboardMap.kValueMask) | j2);
        Lab = m3037constructorimpl(j2 | (2 & KeyboardMap.kValueMask));
        Cmyk = m3037constructorimpl((j & KeyboardMap.kValueMask) | (4 << 32));
    }

    public String toString() {
        return m3042toStringimpl(this.packedValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m3042toStringimpl(long j) {
        return m3039equalsimpl0(j, Rgb) ? "Rgb" : m3039equalsimpl0(j, Xyz) ? "Xyz" : m3039equalsimpl0(j, Lab) ? "Lab" : m3039equalsimpl0(j, Cmyk) ? "Cmyk" : "Unknown";
    }
}
