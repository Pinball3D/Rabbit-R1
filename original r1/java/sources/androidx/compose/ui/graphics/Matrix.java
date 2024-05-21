package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Matrix.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087@\u0018\u0000 G2\u00020\u0001:\u0001GB\u0014\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0086\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\u001b\u001a\u00020 2\u0006\u0010!\u001a\u00020 ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#J\u0015\u0010\u001b\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020$¢\u0006\u0004\b\u001e\u0010%J\r\u0010&\u001a\u00020\u0018¢\u0006\u0004\b'\u0010\u001aJ\u0015\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000e¢\u0006\u0004\b*\u0010+J\u0015\u0010,\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000e¢\u0006\u0004\b-\u0010+J\u0015\u0010.\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u000e¢\u0006\u0004\b/\u0010+J+\u00100\u001a\u00020\u00182\b\b\u0002\u00101\u001a\u00020\u000e2\b\b\u0002\u00102\u001a\u00020\u000e2\b\b\u0002\u00103\u001a\u00020\u000e¢\u0006\u0004\b4\u00105J(\u00106\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u000eH\u0086\n¢\u0006\u0004\b8\u00109J\u001b\u0010:\u001a\u00020\u00182\u0006\u0010;\u001a\u00020\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b<\u0010=J\u001e\u0010>\u001a\u00020\u00182\u0006\u0010?\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b@\u0010=J\u000f\u0010A\u001a\u00020BH\u0016¢\u0006\u0004\bC\u0010DJ+\u0010E\u001a\u00020\u00182\b\b\u0002\u00101\u001a\u00020\u000e2\b\b\u0002\u00102\u001a\u00020\u000e2\b\b\u0002\u00103\u001a\u00020\u000e¢\u0006\u0004\bF\u00105R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006H"}, d2 = {"Landroidx/compose/ui/graphics/Matrix;", "", "values", "", "constructor-impl", "([F)[F", "getValues", "()[F", "equals", "", "other", "equals-impl", "([FLjava/lang/Object;)Z", "get", "", "row", "", "column", "get-impl", "([FII)F", "hashCode", "hashCode-impl", "([F)I", "invert", "", "invert-impl", "([F)V", "map", "rect", "Landroidx/compose/ui/geometry/MutableRect;", "map-impl", "([FLandroidx/compose/ui/geometry/MutableRect;)V", "Landroidx/compose/ui/geometry/Offset;", "point", "map-MK-Hz9U", "([FJ)J", "Landroidx/compose/ui/geometry/Rect;", "([FLandroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;", "reset", "reset-impl", "rotateX", "degrees", "rotateX-impl", "([FF)V", "rotateY", "rotateY-impl", "rotateZ", "rotateZ-impl", "scale", ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y, "z", "scale-impl", "([FFFF)V", "set", "v", "set-impl", "([FIIF)V", "setFrom", "matrix", "setFrom-58bKbWc", "([F[F)V", "timesAssign", "m", "timesAssign-58bKbWc", "toString", "", "toString-impl", "([F)Ljava/lang/String;", "translate", "translate-impl", "Companion", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class Matrix {
    public static final int Perspective0 = 3;
    public static final int Perspective1 = 7;
    public static final int Perspective2 = 15;
    public static final int ScaleX = 0;
    public static final int ScaleY = 5;
    public static final int ScaleZ = 10;
    public static final int SkewX = 4;
    public static final int SkewY = 1;
    public static final int TranslateX = 12;
    public static final int TranslateY = 13;
    public static final int TranslateZ = 14;
    private final float[] values;

    /* renamed from: box-impl */
    public static final /* synthetic */ Matrix m2862boximpl(float[] fArr) {
        return new Matrix(fArr);
    }

    /* renamed from: constructor-impl */
    public static float[] m2863constructorimpl(float[] values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return values;
    }

    /* renamed from: equals-impl */
    public static boolean m2865equalsimpl(float[] fArr, Object obj) {
        return (obj instanceof Matrix) && Intrinsics.areEqual(fArr, ((Matrix) obj).m2885unboximpl());
    }

    /* renamed from: equals-impl0 */
    public static final boolean m2866equalsimpl0(float[] fArr, float[] fArr2) {
        return Intrinsics.areEqual(fArr, fArr2);
    }

    /* renamed from: hashCode-impl */
    public static int m2868hashCodeimpl(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    public boolean equals(Object obj) {
        return m2865equalsimpl(this.values, obj);
    }

    public final float[] getValues() {
        return this.values;
    }

    public int hashCode() {
        return m2868hashCodeimpl(this.values);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ float[] m2885unboximpl() {
        return this.values;
    }

    private /* synthetic */ Matrix(float[] fArr) {
        this.values = fArr;
    }

    /* renamed from: constructor-impl$default */
    public static /* synthetic */ float[] m2864constructorimpl$default(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
        }
        return m2863constructorimpl(fArr);
    }

    /* renamed from: get-impl */
    public static final float m2867getimpl(float[] fArr, int i, int i2) {
        return fArr[(i * 4) + i2];
    }

    /* renamed from: set-impl */
    public static final void m2879setimpl(float[] fArr, int i, int i2, float f) {
        fArr[(i * 4) + i2] = f;
    }

    /* renamed from: map-MK-Hz9U */
    public static final long m2870mapMKHz9U(float[] fArr, long j) {
        float m2400getXimpl = Offset.m2400getXimpl(j);
        float m2401getYimpl = Offset.m2401getYimpl(j);
        float f = 1 / (((fArr[3] * m2400getXimpl) + (fArr[7] * m2401getYimpl)) + fArr[15]);
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            f = 0.0f;
        }
        return OffsetKt.Offset(((fArr[0] * m2400getXimpl) + (fArr[4] * m2401getYimpl) + fArr[12]) * f, f * ((fArr[1] * m2400getXimpl) + (fArr[5] * m2401getYimpl) + fArr[13]));
    }

    /* renamed from: map-impl */
    public static final Rect m2871mapimpl(float[] fArr, Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        long m2870mapMKHz9U = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getTop()));
        long m2870mapMKHz9U2 = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getBottom()));
        long m2870mapMKHz9U3 = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getTop()));
        long m2870mapMKHz9U4 = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getBottom()));
        return new Rect(Math.min(Math.min(Offset.m2400getXimpl(m2870mapMKHz9U), Offset.m2400getXimpl(m2870mapMKHz9U2)), Math.min(Offset.m2400getXimpl(m2870mapMKHz9U3), Offset.m2400getXimpl(m2870mapMKHz9U4))), Math.min(Math.min(Offset.m2401getYimpl(m2870mapMKHz9U), Offset.m2401getYimpl(m2870mapMKHz9U2)), Math.min(Offset.m2401getYimpl(m2870mapMKHz9U3), Offset.m2401getYimpl(m2870mapMKHz9U4))), Math.max(Math.max(Offset.m2400getXimpl(m2870mapMKHz9U), Offset.m2400getXimpl(m2870mapMKHz9U2)), Math.max(Offset.m2400getXimpl(m2870mapMKHz9U3), Offset.m2400getXimpl(m2870mapMKHz9U4))), Math.max(Math.max(Offset.m2401getYimpl(m2870mapMKHz9U), Offset.m2401getYimpl(m2870mapMKHz9U2)), Math.max(Offset.m2401getYimpl(m2870mapMKHz9U3), Offset.m2401getYimpl(m2870mapMKHz9U4))));
    }

    /* renamed from: map-impl */
    public static final void m2872mapimpl(float[] fArr, MutableRect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        long m2870mapMKHz9U = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getTop()));
        long m2870mapMKHz9U2 = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getLeft(), rect.getBottom()));
        long m2870mapMKHz9U3 = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getTop()));
        long m2870mapMKHz9U4 = m2870mapMKHz9U(fArr, OffsetKt.Offset(rect.getRight(), rect.getBottom()));
        rect.setLeft(Math.min(Math.min(Offset.m2400getXimpl(m2870mapMKHz9U), Offset.m2400getXimpl(m2870mapMKHz9U2)), Math.min(Offset.m2400getXimpl(m2870mapMKHz9U3), Offset.m2400getXimpl(m2870mapMKHz9U4))));
        rect.setTop(Math.min(Math.min(Offset.m2401getYimpl(m2870mapMKHz9U), Offset.m2401getYimpl(m2870mapMKHz9U2)), Math.min(Offset.m2401getYimpl(m2870mapMKHz9U3), Offset.m2401getYimpl(m2870mapMKHz9U4))));
        rect.setRight(Math.max(Math.max(Offset.m2400getXimpl(m2870mapMKHz9U), Offset.m2400getXimpl(m2870mapMKHz9U2)), Math.max(Offset.m2400getXimpl(m2870mapMKHz9U3), Offset.m2400getXimpl(m2870mapMKHz9U4))));
        rect.setBottom(Math.max(Math.max(Offset.m2401getYimpl(m2870mapMKHz9U), Offset.m2401getYimpl(m2870mapMKHz9U2)), Math.max(Offset.m2401getYimpl(m2870mapMKHz9U3), Offset.m2401getYimpl(m2870mapMKHz9U4))));
    }

    /* renamed from: timesAssign-58bKbWc */
    public static final void m2881timesAssign58bKbWc(float[] fArr, float[] m) {
        float m2887dotp89u6pk;
        float m2887dotp89u6pk2;
        float m2887dotp89u6pk3;
        float m2887dotp89u6pk4;
        float m2887dotp89u6pk5;
        float m2887dotp89u6pk6;
        float m2887dotp89u6pk7;
        float m2887dotp89u6pk8;
        float m2887dotp89u6pk9;
        float m2887dotp89u6pk10;
        float m2887dotp89u6pk11;
        float m2887dotp89u6pk12;
        float m2887dotp89u6pk13;
        float m2887dotp89u6pk14;
        float m2887dotp89u6pk15;
        float m2887dotp89u6pk16;
        Intrinsics.checkNotNullParameter(m, "m");
        m2887dotp89u6pk = MatrixKt.m2887dotp89u6pk(fArr, 0, m, 0);
        m2887dotp89u6pk2 = MatrixKt.m2887dotp89u6pk(fArr, 0, m, 1);
        m2887dotp89u6pk3 = MatrixKt.m2887dotp89u6pk(fArr, 0, m, 2);
        m2887dotp89u6pk4 = MatrixKt.m2887dotp89u6pk(fArr, 0, m, 3);
        m2887dotp89u6pk5 = MatrixKt.m2887dotp89u6pk(fArr, 1, m, 0);
        m2887dotp89u6pk6 = MatrixKt.m2887dotp89u6pk(fArr, 1, m, 1);
        m2887dotp89u6pk7 = MatrixKt.m2887dotp89u6pk(fArr, 1, m, 2);
        m2887dotp89u6pk8 = MatrixKt.m2887dotp89u6pk(fArr, 1, m, 3);
        m2887dotp89u6pk9 = MatrixKt.m2887dotp89u6pk(fArr, 2, m, 0);
        m2887dotp89u6pk10 = MatrixKt.m2887dotp89u6pk(fArr, 2, m, 1);
        m2887dotp89u6pk11 = MatrixKt.m2887dotp89u6pk(fArr, 2, m, 2);
        m2887dotp89u6pk12 = MatrixKt.m2887dotp89u6pk(fArr, 2, m, 3);
        m2887dotp89u6pk13 = MatrixKt.m2887dotp89u6pk(fArr, 3, m, 0);
        m2887dotp89u6pk14 = MatrixKt.m2887dotp89u6pk(fArr, 3, m, 1);
        m2887dotp89u6pk15 = MatrixKt.m2887dotp89u6pk(fArr, 3, m, 2);
        m2887dotp89u6pk16 = MatrixKt.m2887dotp89u6pk(fArr, 3, m, 3);
        fArr[0] = m2887dotp89u6pk;
        fArr[1] = m2887dotp89u6pk2;
        fArr[2] = m2887dotp89u6pk3;
        fArr[3] = m2887dotp89u6pk4;
        fArr[4] = m2887dotp89u6pk5;
        fArr[5] = m2887dotp89u6pk6;
        fArr[6] = m2887dotp89u6pk7;
        fArr[7] = m2887dotp89u6pk8;
        fArr[8] = m2887dotp89u6pk9;
        fArr[9] = m2887dotp89u6pk10;
        fArr[10] = m2887dotp89u6pk11;
        fArr[11] = m2887dotp89u6pk12;
        fArr[12] = m2887dotp89u6pk13;
        fArr[13] = m2887dotp89u6pk14;
        fArr[14] = m2887dotp89u6pk15;
        fArr[15] = m2887dotp89u6pk16;
    }

    public String toString() {
        return m2882toStringimpl(this.values);
    }

    /* renamed from: toString-impl */
    public static String m2882toStringimpl(float[] fArr) {
        StringBuilder sb = new StringBuilder("\n            |");
        sb.append(fArr[0]).append(' ').append(fArr[1]).append(' ').append(fArr[2]).append(' ').append(fArr[3]).append("|\n            |").append(fArr[4]).append(' ').append(fArr[5]).append(' ').append(fArr[6]).append(' ').append(fArr[7]).append("|\n            |").append(fArr[8]).append(' ').append(fArr[9]).append(' ').append(fArr[10]).append(' ');
        sb.append(fArr[11]).append("|\n            |").append(fArr[12]).append(' ').append(fArr[13]).append(' ').append(fArr[14]).append(' ').append(fArr[15]).append("|\n        ");
        return StringsKt.trimIndent(sb.toString());
    }

    /* renamed from: setFrom-58bKbWc */
    public static final void m2880setFrom58bKbWc(float[] fArr, float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        for (int i = 0; i < 16; i++) {
            fArr[i] = matrix[i];
        }
    }

    /* renamed from: rotateX-impl */
    public static final void m2874rotateXimpl(float[] fArr, float f) {
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[5];
        float f5 = fArr[6];
        float f6 = fArr[9];
        float f7 = fArr[10];
        float f8 = fArr[13];
        float f9 = fArr[14];
        fArr[1] = (f2 * cos) - (f3 * sin);
        fArr[2] = (f2 * sin) + (f3 * cos);
        fArr[5] = (f4 * cos) - (f5 * sin);
        fArr[6] = (f4 * sin) + (f5 * cos);
        fArr[9] = (f6 * cos) - (f7 * sin);
        fArr[10] = (f6 * sin) + (f7 * cos);
        fArr[13] = (f8 * cos) - (f9 * sin);
        fArr[14] = (f8 * sin) + (f9 * cos);
    }

    /* renamed from: rotateY-impl */
    public static final void m2875rotateYimpl(float[] fArr, float f) {
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float f2 = fArr[0];
        float f3 = fArr[2];
        float f4 = fArr[4];
        float f5 = fArr[6];
        float f6 = fArr[8];
        float f7 = fArr[10];
        float f8 = fArr[12];
        float f9 = fArr[14];
        fArr[0] = (f2 * cos) + (f3 * sin);
        fArr[2] = ((-f2) * sin) + (f3 * cos);
        fArr[4] = (f4 * cos) + (f5 * sin);
        fArr[6] = ((-f4) * sin) + (f5 * cos);
        fArr[8] = (f6 * cos) + (f7 * sin);
        fArr[10] = ((-f6) * sin) + (f7 * cos);
        fArr[12] = (f8 * cos) + (f9 * sin);
        fArr[14] = ((-f8) * sin) + (f9 * cos);
    }

    /* renamed from: rotateZ-impl */
    public static final void m2876rotateZimpl(float[] fArr, float f) {
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float f2 = fArr[0];
        float f3 = fArr[4];
        float f4 = -sin;
        float f5 = fArr[1];
        float f6 = fArr[5];
        float f7 = fArr[2];
        float f8 = fArr[6];
        float f9 = fArr[3];
        float f10 = fArr[7];
        fArr[0] = (cos * f2) + (sin * f3);
        fArr[1] = (cos * f5) + (sin * f6);
        fArr[2] = (cos * f7) + (sin * f8);
        fArr[3] = (cos * f9) + (sin * f10);
        fArr[4] = (f2 * f4) + (f3 * cos);
        fArr[5] = (f5 * f4) + (f6 * cos);
        fArr[6] = (f7 * f4) + (f8 * cos);
        fArr[7] = (f4 * f9) + (cos * f10);
    }

    /* renamed from: scale-impl$default */
    public static /* synthetic */ void m2878scaleimpl$default(float[] fArr, float f, float f2, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1.0f;
        }
        if ((i & 4) != 0) {
            f3 = 1.0f;
        }
        m2877scaleimpl(fArr, f, f2, f3);
    }

    /* renamed from: translate-impl$default */
    public static /* synthetic */ void m2884translateimpl$default(float[] fArr, float f, float f2, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        m2883translateimpl(fArr, f, f2, f3);
    }

    /* renamed from: invert-impl */
    public static final void m2869invertimpl(float[] fArr) {
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        float f10 = fArr[9];
        float f11 = fArr[10];
        float f12 = fArr[11];
        float f13 = fArr[12];
        float f14 = fArr[13];
        float f15 = fArr[14];
        float f16 = fArr[15];
        float f17 = (f * f6) - (f2 * f5);
        float f18 = (f * f7) - (f3 * f5);
        float f19 = (f * f8) - (f4 * f5);
        float f20 = (f2 * f7) - (f3 * f6);
        float f21 = (f2 * f8) - (f4 * f6);
        float f22 = (f3 * f8) - (f4 * f7);
        float f23 = (f9 * f14) - (f10 * f13);
        float f24 = (f9 * f15) - (f11 * f13);
        float f25 = (f9 * f16) - (f12 * f13);
        float f26 = (f10 * f15) - (f11 * f14);
        float f27 = (f10 * f16) - (f12 * f14);
        float f28 = (f11 * f16) - (f12 * f15);
        float f29 = (((((f17 * f28) - (f18 * f27)) + (f19 * f26)) + (f20 * f25)) - (f21 * f24)) + (f22 * f23);
        if (f29 == 0.0f) {
            return;
        }
        float f30 = 1.0f / f29;
        fArr[0] = (((f6 * f28) - (f7 * f27)) + (f8 * f26)) * f30;
        fArr[1] = ((((-f2) * f28) + (f3 * f27)) - (f4 * f26)) * f30;
        fArr[2] = (((f14 * f22) - (f15 * f21)) + (f16 * f20)) * f30;
        fArr[3] = ((((-f10) * f22) + (f11 * f21)) - (f12 * f20)) * f30;
        float f31 = -f5;
        fArr[4] = (((f31 * f28) + (f7 * f25)) - (f8 * f24)) * f30;
        fArr[5] = (((f28 * f) - (f3 * f25)) + (f4 * f24)) * f30;
        float f32 = -f13;
        fArr[6] = (((f32 * f22) + (f15 * f19)) - (f16 * f18)) * f30;
        fArr[7] = (((f22 * f9) - (f11 * f19)) + (f12 * f18)) * f30;
        fArr[8] = (((f5 * f27) - (f6 * f25)) + (f8 * f23)) * f30;
        fArr[9] = ((((-f) * f27) + (f25 * f2)) - (f4 * f23)) * f30;
        fArr[10] = (((f13 * f21) - (f14 * f19)) + (f16 * f17)) * f30;
        fArr[11] = ((((-f9) * f21) + (f19 * f10)) - (f12 * f17)) * f30;
        fArr[12] = (((f31 * f26) + (f6 * f24)) - (f7 * f23)) * f30;
        fArr[13] = (((f * f26) - (f2 * f24)) + (f3 * f23)) * f30;
        fArr[14] = (((f32 * f20) + (f14 * f18)) - (f15 * f17)) * f30;
        fArr[15] = (((f9 * f20) - (f10 * f18)) + (f11 * f17)) * f30;
    }

    /* renamed from: reset-impl */
    public static final void m2873resetimpl(float[] fArr) {
        int i = 0;
        while (i < 4) {
            int i2 = 0;
            while (i2 < 4) {
                fArr[(i2 * 4) + i] = i == i2 ? 1.0f : 0.0f;
                i2++;
            }
            i++;
        }
    }

    /* renamed from: scale-impl */
    public static final void m2877scaleimpl(float[] fArr, float f, float f2, float f3) {
        fArr[0] = fArr[0] * f;
        fArr[1] = fArr[1] * f;
        fArr[2] = fArr[2] * f;
        fArr[3] = fArr[3] * f;
        fArr[4] = fArr[4] * f2;
        fArr[5] = fArr[5] * f2;
        fArr[6] = fArr[6] * f2;
        fArr[7] = fArr[7] * f2;
        fArr[8] = fArr[8] * f3;
        fArr[9] = fArr[9] * f3;
        fArr[10] = fArr[10] * f3;
        fArr[11] = fArr[11] * f3;
    }

    /* renamed from: translate-impl */
    public static final void m2883translateimpl(float[] fArr, float f, float f2, float f3) {
        float f4 = (fArr[0] * f) + (fArr[4] * f2) + (fArr[8] * f3) + fArr[12];
        float f5 = (fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f3) + fArr[13];
        float f6 = (fArr[2] * f) + (fArr[6] * f2) + (fArr[10] * f3) + fArr[14];
        float f7 = (fArr[3] * f) + (fArr[7] * f2) + (fArr[11] * f3) + fArr[15];
        fArr[12] = f4;
        fArr[13] = f5;
        fArr[14] = f6;
        fArr[15] = f7;
    }
}
