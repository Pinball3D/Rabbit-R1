package androidx.compose.ui.node;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MyersDiff.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0083@\u0018\u00002\u00020\u0001B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f¢\u0006\u0004\b \u0010!J\u001a\u0010\"\u001a\u00020\u00112\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b$\u0010%J\u0010\u0010&\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b'\u0010\u000bJ\u000f\u0010(\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0013R\u0011\u0010\u0018\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000bR\u0011\u0010\u001a\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000b\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Landroidx/compose/ui/node/Snake;", "", "data", "", "constructor-impl", "([I)[I", "getData", "()[I", "diagonalSize", "", "getDiagonalSize-impl", "([I)I", "endX", "getEndX-impl", "endY", "getEndY-impl", "hasAdditionOrRemoval", "", "getHasAdditionOrRemoval-impl", "([I)Z", "isAddition", "isAddition-impl", "reverse", "getReverse-impl", "startX", "getStartX-impl", "startY", "getStartY-impl", "addDiagonalToStack", "", "diagonals", "Landroidx/compose/ui/node/IntStack;", "addDiagonalToStack-impl", "([ILandroidx/compose/ui/node/IntStack;)V", "equals", "other", "equals-impl", "([ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "([I)Ljava/lang/String;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class Snake {
    private final int[] data;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Snake m4149boximpl(int[] iArr) {
        return new Snake(iArr);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int[] m4150constructorimpl(int[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m4151equalsimpl(int[] iArr, Object obj) {
        return (obj instanceof Snake) && Intrinsics.areEqual(iArr, ((Snake) obj).m4163unboximpl());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4152equalsimpl0(int[] iArr, int[] iArr2) {
        return Intrinsics.areEqual(iArr, iArr2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m4160hashCodeimpl(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    public boolean equals(Object obj) {
        return m4151equalsimpl(this.data, obj);
    }

    public final int[] getData() {
        return this.data;
    }

    public int hashCode() {
        return m4160hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int[] m4163unboximpl() {
        return this.data;
    }

    private /* synthetic */ Snake(int[] iArr) {
        this.data = iArr;
    }

    /* renamed from: getStartX-impl, reason: not valid java name */
    public static final int m4158getStartXimpl(int[] iArr) {
        return iArr[0];
    }

    /* renamed from: getStartY-impl, reason: not valid java name */
    public static final int m4159getStartYimpl(int[] iArr) {
        return iArr[1];
    }

    /* renamed from: getEndX-impl, reason: not valid java name */
    public static final int m4154getEndXimpl(int[] iArr) {
        return iArr[2];
    }

    /* renamed from: getEndY-impl, reason: not valid java name */
    public static final int m4155getEndYimpl(int[] iArr) {
        return iArr[3];
    }

    /* renamed from: getReverse-impl, reason: not valid java name */
    public static final boolean m4157getReverseimpl(int[] iArr) {
        return iArr[4] != 0;
    }

    /* renamed from: getDiagonalSize-impl, reason: not valid java name */
    public static final int m4153getDiagonalSizeimpl(int[] iArr) {
        return Math.min(m4154getEndXimpl(iArr) - m4158getStartXimpl(iArr), m4155getEndYimpl(iArr) - m4159getStartYimpl(iArr));
    }

    /* renamed from: getHasAdditionOrRemoval-impl, reason: not valid java name */
    private static final boolean m4156getHasAdditionOrRemovalimpl(int[] iArr) {
        return m4155getEndYimpl(iArr) - m4159getStartYimpl(iArr) != m4154getEndXimpl(iArr) - m4158getStartXimpl(iArr);
    }

    /* renamed from: isAddition-impl, reason: not valid java name */
    private static final boolean m4161isAdditionimpl(int[] iArr) {
        return m4155getEndYimpl(iArr) - m4159getStartYimpl(iArr) > m4154getEndXimpl(iArr) - m4158getStartXimpl(iArr);
    }

    /* renamed from: addDiagonalToStack-impl, reason: not valid java name */
    public static final void m4148addDiagonalToStackimpl(int[] iArr, IntStack diagonals) {
        Intrinsics.checkNotNullParameter(diagonals, "diagonals");
        if (m4156getHasAdditionOrRemovalimpl(iArr)) {
            if (m4157getReverseimpl(iArr)) {
                diagonals.pushDiagonal(m4158getStartXimpl(iArr), m4159getStartYimpl(iArr), m4153getDiagonalSizeimpl(iArr));
                return;
            } else if (m4161isAdditionimpl(iArr)) {
                diagonals.pushDiagonal(m4158getStartXimpl(iArr), m4159getStartYimpl(iArr) + 1, m4153getDiagonalSizeimpl(iArr));
                return;
            } else {
                diagonals.pushDiagonal(m4158getStartXimpl(iArr) + 1, m4159getStartYimpl(iArr), m4153getDiagonalSizeimpl(iArr));
                return;
            }
        }
        diagonals.pushDiagonal(m4158getStartXimpl(iArr), m4159getStartYimpl(iArr), m4154getEndXimpl(iArr) - m4158getStartXimpl(iArr));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m4162toStringimpl(int[] iArr) {
        return "Snake(" + m4158getStartXimpl(iArr) + ',' + m4159getStartYimpl(iArr) + ',' + m4154getEndXimpl(iArr) + ',' + m4155getEndYimpl(iArr) + ',' + m4157getReverseimpl(iArr) + ')';
    }

    public String toString() {
        return m4162toStringimpl(this.data);
    }
}
