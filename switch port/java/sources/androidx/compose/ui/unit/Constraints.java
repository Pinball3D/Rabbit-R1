package androidx.compose.ui.unit;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Constraints.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 02\u00020\u0001:\u00010B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J>\u0010#\u001a\u00020\u00002\b\b\u0002\u0010 \u001a\u00020\u00072\b\b\u0002\u0010\u001c\u001a\u00020\u00072\b\b\u0002\u0010\u001e\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u0007ø\u0001\u0001ø\u0001\u0002ø\u0001\u0000¢\u0006\u0004\b$\u0010%J\u001a\u0010&\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b+\u0010\tJ\u000f\u0010,\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u001a\u0010\u0010\u001a\u00020\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\rR\u001a\u0010\u0017\u001a\u00020\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\rR\u0011\u0010\u001a\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\tR\u0011\u0010\u001c\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\tR\u0011\u0010\u001e\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\tR\u0011\u0010 \u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b!\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\"\u0010\u0012\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u00061"}, d2 = {"Landroidx/compose/ui/unit/Constraints;", "", "value", "", "constructor-impl", "(J)J", "focusIndex", "", "getFocusIndex-impl", "(J)I", "hasBoundedHeight", "", "getHasBoundedHeight-impl", "(J)Z", "hasBoundedWidth", "getHasBoundedWidth-impl", "hasFixedHeight", "getHasFixedHeight$annotations", "()V", "getHasFixedHeight-impl", "hasFixedWidth", "getHasFixedWidth$annotations", "getHasFixedWidth-impl", "isZero", "isZero$annotations", "isZero-impl", "maxHeight", "getMaxHeight-impl", "maxWidth", "getMaxWidth-impl", "minHeight", "getMinHeight-impl", "minWidth", "getMinWidth-impl", "getValue$annotations", "copy", "copy-Zbe2FdA", "(JIIII)J", "equals", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "Companion", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class Constraints {
    private static final long FocusMask = 3;
    public static final int Infinity = Integer.MAX_VALUE;
    private static final int MaxFocusBits = 18;
    private static final long MaxFocusHeight = 3;
    private static final long MaxFocusWidth = 1;
    private static final int MaxNonFocusBits = 13;
    private static final int MinFocusBits = 16;
    private static final long MinFocusHeight = 2;
    private static final int MinFocusMask = 65535;
    private static final long MinFocusWidth = 0;
    private static final int MinNonFocusBits = 15;
    private final long value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int[] MinHeightOffsets = {18, 20, 17, 15};
    private static final int MaxFocusMask = 262143;
    private static final int MinNonFocusMask = 32767;
    private static final int MaxNonFocusMask = 8191;
    private static final int[] WidthMask = {65535, MaxFocusMask, MinNonFocusMask, MaxNonFocusMask};
    private static final int[] HeightMask = {MinNonFocusMask, MaxNonFocusMask, 65535, MaxFocusMask};

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Constraints m4827boximpl(long j) {
        return new Constraints(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m4828constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4831equalsimpl(long j, Object obj) {
        return (obj instanceof Constraints) && j == ((Constraints) obj).getValue();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4832equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getFocusIndex-impl, reason: not valid java name */
    private static final int m4833getFocusIndeximpl(long j) {
        return (int) (j & 3);
    }

    public static /* synthetic */ void getHasFixedHeight$annotations() {
    }

    public static /* synthetic */ void getHasFixedWidth$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4842hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public static /* synthetic */ void isZero$annotations() {
    }

    public boolean equals(Object obj) {
        return m4831equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4842hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getValue() {
        return this.value;
    }

    private /* synthetic */ Constraints(long j) {
        this.value = j;
    }

    /* renamed from: getMinWidth-impl, reason: not valid java name */
    public static final int m4841getMinWidthimpl(long j) {
        return ((int) (j >> MinFocusHeight)) & WidthMask[m4833getFocusIndeximpl(j)];
    }

    /* renamed from: getMaxWidth-impl, reason: not valid java name */
    public static final int m4839getMaxWidthimpl(long j) {
        int i = ((int) (j >> 33)) & WidthMask[m4833getFocusIndeximpl(j)];
        if (i == 0) {
            return Integer.MAX_VALUE;
        }
        return i - 1;
    }

    /* renamed from: getMinHeight-impl, reason: not valid java name */
    public static final int m4840getMinHeightimpl(long j) {
        int m4833getFocusIndeximpl = m4833getFocusIndeximpl(j);
        return ((int) (j >> MinHeightOffsets[m4833getFocusIndeximpl])) & HeightMask[m4833getFocusIndeximpl];
    }

    /* renamed from: getMaxHeight-impl, reason: not valid java name */
    public static final int m4838getMaxHeightimpl(long j) {
        int m4833getFocusIndeximpl = m4833getFocusIndeximpl(j);
        int i = ((int) (j >> (MinHeightOffsets[m4833getFocusIndeximpl] + 31))) & HeightMask[m4833getFocusIndeximpl];
        if (i == 0) {
            return Integer.MAX_VALUE;
        }
        return i - 1;
    }

    /* renamed from: getHasBoundedWidth-impl, reason: not valid java name */
    public static final boolean m4835getHasBoundedWidthimpl(long j) {
        return (((int) (j >> 33)) & WidthMask[m4833getFocusIndeximpl(j)]) != 0;
    }

    /* renamed from: getHasBoundedHeight-impl, reason: not valid java name */
    public static final boolean m4834getHasBoundedHeightimpl(long j) {
        int m4833getFocusIndeximpl = m4833getFocusIndeximpl(j);
        return (((int) (j >> (MinHeightOffsets[m4833getFocusIndeximpl] + 31))) & HeightMask[m4833getFocusIndeximpl]) != 0;
    }

    /* renamed from: getHasFixedWidth-impl, reason: not valid java name */
    public static final boolean m4837getHasFixedWidthimpl(long j) {
        return m4839getMaxWidthimpl(j) == m4841getMinWidthimpl(j);
    }

    /* renamed from: getHasFixedHeight-impl, reason: not valid java name */
    public static final boolean m4836getHasFixedHeightimpl(long j) {
        return m4838getMaxHeightimpl(j) == m4840getMinHeightimpl(j);
    }

    /* renamed from: isZero-impl, reason: not valid java name */
    public static final boolean m4843isZeroimpl(long j) {
        return m4839getMaxWidthimpl(j) == 0 || m4838getMaxHeightimpl(j) == 0;
    }

    /* renamed from: copy-Zbe2FdA$default, reason: not valid java name */
    public static /* synthetic */ long m4830copyZbe2FdA$default(long j, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = m4841getMinWidthimpl(j);
        }
        int i6 = i;
        if ((i5 & 2) != 0) {
            i2 = m4839getMaxWidthimpl(j);
        }
        int i7 = i2;
        if ((i5 & 4) != 0) {
            i3 = m4840getMinHeightimpl(j);
        }
        int i8 = i3;
        if ((i5 & 8) != 0) {
            i4 = m4838getMaxHeightimpl(j);
        }
        return m4829copyZbe2FdA(j, i6, i7, i8, i4);
    }

    /* renamed from: copy-Zbe2FdA, reason: not valid java name */
    public static final long m4829copyZbe2FdA(long j, int i, int i2, int i3, int i4) {
        if (i3 < 0 || i < 0) {
            throw new IllegalArgumentException(("minHeight(" + i3 + ") and minWidth(" + i + ") must be >= 0").toString());
        }
        if (i2 < i && i2 != Integer.MAX_VALUE) {
            throw new IllegalArgumentException(("maxWidth(" + i2 + ") must be >= minWidth(" + i + ')').toString());
        }
        if (i4 < i3 && i4 != Integer.MAX_VALUE) {
            throw new IllegalArgumentException(("maxHeight(" + i4 + ") must be >= minHeight(" + i3 + ')').toString());
        }
        return INSTANCE.m4846createConstraintsZbe2FdA$ui_unit_release(i, i2, i3, i4);
    }

    public String toString() {
        return m4844toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4844toStringimpl(long j) {
        int m4839getMaxWidthimpl = m4839getMaxWidthimpl(j);
        String valueOf = m4839getMaxWidthimpl == Integer.MAX_VALUE ? "Infinity" : String.valueOf(m4839getMaxWidthimpl);
        int m4838getMaxHeightimpl = m4838getMaxHeightimpl(j);
        return "Constraints(minWidth = " + m4841getMinWidthimpl(j) + ", maxWidth = " + valueOf + ", minHeight = " + m4840getMinHeightimpl(j) + ", maxHeight = " + (m4838getMaxHeightimpl != Integer.MAX_VALUE ? String.valueOf(m4838getMaxHeightimpl) : "Infinity") + ')';
    }

    /* compiled from: Constraints.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\bH\u0002J8\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\bH\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001f\u0010 J(\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\bH\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b$\u0010%J \u0010&\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\bH\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b'\u0010(J \u0010)\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\bH\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b*\u0010(R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006+"}, d2 = {"Landroidx/compose/ui/unit/Constraints$Companion;", "", "()V", "FocusMask", "", "HeightMask", "", "Infinity", "", "MaxFocusBits", "MaxFocusHeight", "MaxFocusMask", "MaxFocusWidth", "MaxNonFocusBits", "MaxNonFocusMask", "MinFocusBits", "MinFocusHeight", "MinFocusMask", "MinFocusWidth", "MinHeightOffsets", "MinNonFocusBits", "MinNonFocusMask", "WidthMask", "bitsNeedForSize", "size", "createConstraints", "Landroidx/compose/ui/unit/Constraints;", "minWidth", "maxWidth", "minHeight", "maxHeight", "createConstraints-Zbe2FdA$ui_unit_release", "(IIII)J", "fixed", ViewHierarchyNode.JsonKeys.WIDTH, ViewHierarchyNode.JsonKeys.HEIGHT, "fixed-JhjzzOo", "(II)J", "fixedHeight", "fixedHeight-OenEA2s", "(I)J", "fixedWidth", "fixedWidth-OenEA2s", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: fixed-JhjzzOo, reason: not valid java name */
        public final long m4847fixedJhjzzOo(int width, int height) {
            if (width < 0 || height < 0) {
                throw new IllegalArgumentException(("width(" + width + ") and height(" + height + ") must be >= 0").toString());
            }
            return m4846createConstraintsZbe2FdA$ui_unit_release(width, width, height, height);
        }

        /* renamed from: fixedWidth-OenEA2s, reason: not valid java name */
        public final long m4849fixedWidthOenEA2s(int width) {
            if (width < 0) {
                throw new IllegalArgumentException(("width(" + width + ") must be >= 0").toString());
            }
            return m4846createConstraintsZbe2FdA$ui_unit_release(width, width, 0, Integer.MAX_VALUE);
        }

        /* renamed from: fixedHeight-OenEA2s, reason: not valid java name */
        public final long m4848fixedHeightOenEA2s(int height) {
            if (height < 0) {
                throw new IllegalArgumentException(("height(" + height + ") must be >= 0").toString());
            }
            return m4846createConstraintsZbe2FdA$ui_unit_release(0, Integer.MAX_VALUE, height, height);
        }

        /* renamed from: createConstraints-Zbe2FdA$ui_unit_release, reason: not valid java name */
        public final long m4846createConstraintsZbe2FdA$ui_unit_release(int minWidth, int maxWidth, int minHeight, int maxHeight) {
            long j;
            int i = maxHeight == Integer.MAX_VALUE ? minHeight : maxHeight;
            int bitsNeedForSize = bitsNeedForSize(i);
            int i2 = maxWidth == Integer.MAX_VALUE ? minWidth : maxWidth;
            int bitsNeedForSize2 = bitsNeedForSize(i2);
            if (bitsNeedForSize + bitsNeedForSize2 > 31) {
                throw new IllegalArgumentException("Can't represent a width of " + i2 + " and height of " + i + " in Constraints");
            }
            if (bitsNeedForSize2 == 13) {
                j = 3;
            } else if (bitsNeedForSize2 == 18) {
                j = Constraints.MaxFocusWidth;
            } else if (bitsNeedForSize2 == 15) {
                j = Constraints.MinFocusHeight;
            } else {
                if (bitsNeedForSize2 != 16) {
                    throw new IllegalStateException("Should only have the provided constants.");
                }
                j = 0;
            }
            int i3 = maxWidth == Integer.MAX_VALUE ? 0 : maxWidth + 1;
            int i4 = maxHeight != Integer.MAX_VALUE ? maxHeight + 1 : 0;
            int i5 = Constraints.MinHeightOffsets[(int) j];
            return Constraints.m4828constructorimpl((i3 << 33) | j | (minWidth << Constraints.MinFocusHeight) | (minHeight << i5) | (i4 << (i5 + 31)));
        }

        private final int bitsNeedForSize(int size) {
            if (size < Constraints.MaxNonFocusMask) {
                return 13;
            }
            if (size < Constraints.MinNonFocusMask) {
                return 15;
            }
            if (size < 65535) {
                return 16;
            }
            if (size < Constraints.MaxFocusMask) {
                return 18;
            }
            throw new IllegalArgumentException("Can't represent a size of " + size + " in Constraints");
        }
    }
}
