package androidx.compose.ui.unit;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IntRect.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u0000 P2\u00020\u0001:\u0001PB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\u001b\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020\rø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b>\u0010?J1\u0010@\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0010\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0003H\u0007J\u0013\u0010C\u001a\u00020\u001e2\b\u0010D\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010E\u001a\u00020\u0003HÖ\u0001J\u0010\u0010F\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0003H\u0007J\u0010\u0010G\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u0000H\u0007J\u000e\u0010H\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020\u0000J\b\u0010I\u001a\u00020JH\u0016J\u001d\u0010K\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bL\u0010MJ\u0018\u0010K\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u00032\u0006\u0010O\u001a\u00020\u0003H\u0007R\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u001a\u0010\u0014\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0018\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000fR\u001a\u0010\u001a\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\t\u001a\u0004\b\u001c\u0010\u000bR\u001a\u0010\u001d\u001a\u00020\u001e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\t\u001a\u0004\b\u001d\u0010 R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\t\u001a\u0004\b\"\u0010\u000bR\u0011\u0010#\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b$\u0010\u000bR\u0011\u0010%\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b&\u0010\u000bR\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010\t\u001a\u0004\b(\u0010\u000bR#\u0010)\u001a\u00020*8FX\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u0012\u0004\b+\u0010\t\u001a\u0004\b,\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b-\u0010\t\u001a\u0004\b.\u0010\u000bR\u001a\u0010/\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b0\u0010\u000fR\u001a\u00101\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b2\u0010\u000fR\u001a\u00103\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b4\u0010\u000fR\u001a\u00105\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b6\u0010\t\u001a\u0004\b7\u0010\u000b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006Q"}, d2 = {"Landroidx/compose/ui/unit/IntRect;", "", "left", "", "top", "right", "bottom", "(IIII)V", "getBottom$annotations", "()V", "getBottom", "()I", "bottomCenter", "Landroidx/compose/ui/unit/IntOffset;", "getBottomCenter-nOcc-ac", "()J", "bottomLeft", "getBottomLeft-nOcc-ac", "bottomRight", "getBottomRight-nOcc-ac", "center", "getCenter-nOcc-ac", "centerLeft", "getCenterLeft-nOcc-ac", "centerRight", "getCenterRight-nOcc-ac", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight$annotations", "getHeight", "isEmpty", "", "isEmpty$annotations", "()Z", "getLeft$annotations", "getLeft", "maxDimension", "getMaxDimension", "minDimension", "getMinDimension", "getRight$annotations", "getRight", "size", "Landroidx/compose/ui/unit/IntSize;", "getSize-YbymL2g$annotations", "getSize-YbymL2g", "getTop$annotations", "getTop", "topCenter", "getTopCenter-nOcc-ac", "topLeft", "getTopLeft-nOcc-ac", "topRight", "getTopRight-nOcc-ac", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth$annotations", "getWidth", "component1", "component2", "component3", "component4", "contains", "offset", "contains--gyyYBs", "(J)Z", "copy", "deflate", "delta", "equals", "other", "hashCode", "inflate", "intersect", "overlaps", "toString", "", "translate", "translate--gyyYBs", "(J)Landroidx/compose/ui/unit/IntRect;", "translateX", "translateY", "Companion", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class IntRect {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final IntRect Zero = new IntRect(0, 0, 0, 0);
    private final int bottom;
    private final int left;
    private final int right;
    private final int top;

    public static /* synthetic */ IntRect copy$default(IntRect intRect, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = intRect.left;
        }
        if ((i5 & 2) != 0) {
            i2 = intRect.top;
        }
        if ((i5 & 4) != 0) {
            i3 = intRect.right;
        }
        if ((i5 & 8) != 0) {
            i4 = intRect.bottom;
        }
        return intRect.copy(i, i2, i3, i4);
    }

    public static /* synthetic */ void getBottom$annotations() {
    }

    public static /* synthetic */ void getHeight$annotations() {
    }

    public static /* synthetic */ void getLeft$annotations() {
    }

    public static /* synthetic */ void getRight$annotations() {
    }

    /* renamed from: getSize-YbymL2g$annotations, reason: not valid java name */
    public static /* synthetic */ void m5019getSizeYbymL2g$annotations() {
    }

    public static /* synthetic */ void getTop$annotations() {
    }

    public static /* synthetic */ void getWidth$annotations() {
    }

    public static /* synthetic */ void isEmpty$annotations() {
    }

    /* renamed from: component1, reason: from getter */
    public final int getLeft() {
        return this.left;
    }

    /* renamed from: component2, reason: from getter */
    public final int getTop() {
        return this.top;
    }

    /* renamed from: component3, reason: from getter */
    public final int getRight() {
        return this.right;
    }

    /* renamed from: component4, reason: from getter */
    public final int getBottom() {
        return this.bottom;
    }

    public final IntRect copy(int left, int top, int right, int bottom) {
        return new IntRect(left, top, right, bottom);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IntRect)) {
            return false;
        }
        IntRect intRect = (IntRect) other;
        return this.left == intRect.left && this.top == intRect.top && this.right == intRect.right && this.bottom == intRect.bottom;
    }

    public final int getBottom() {
        return this.bottom;
    }

    public final int getHeight() {
        return this.bottom - this.top;
    }

    public final int getLeft() {
        return this.left;
    }

    public final int getRight() {
        return this.right;
    }

    public final int getTop() {
        return this.top;
    }

    public final int getWidth() {
        return this.right - this.left;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.left) * 31) + Integer.hashCode(this.top)) * 31) + Integer.hashCode(this.right)) * 31) + Integer.hashCode(this.bottom);
    }

    public final boolean isEmpty() {
        return this.left >= this.right || this.top >= this.bottom;
    }

    public IntRect(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }

    /* compiled from: IntRect.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/unit/IntRect$Companion;", "", "()V", "Zero", "Landroidx/compose/ui/unit/IntRect;", "getZero$annotations", "getZero", "()Landroidx/compose/ui/unit/IntRect;", "ui-unit_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getZero$annotations() {
        }

        private Companion() {
        }

        public final IntRect getZero() {
            return IntRect.Zero;
        }
    }

    /* renamed from: getSize-YbymL2g, reason: not valid java name */
    public final long m5027getSizeYbymL2g() {
        return IntSizeKt.IntSize(getWidth(), getHeight());
    }

    /* renamed from: translate--gyyYBs, reason: not valid java name */
    public final IntRect m5031translategyyYBs(long offset) {
        return new IntRect(this.left + IntOffset.m5001getXimpl(offset), this.top + IntOffset.m5002getYimpl(offset), this.right + IntOffset.m5001getXimpl(offset), this.bottom + IntOffset.m5002getYimpl(offset));
    }

    public final IntRect translate(int translateX, int translateY) {
        return new IntRect(this.left + translateX, this.top + translateY, this.right + translateX, this.bottom + translateY);
    }

    public final IntRect inflate(int delta) {
        return new IntRect(this.left - delta, this.top - delta, this.right + delta, this.bottom + delta);
    }

    public final IntRect deflate(int delta) {
        return inflate(-delta);
    }

    public final IntRect intersect(IntRect other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return new IntRect(Math.max(this.left, other.left), Math.max(this.top, other.top), Math.min(this.right, other.right), Math.min(this.bottom, other.bottom));
    }

    public final boolean overlaps(IntRect other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.right > other.left && other.right > this.left && this.bottom > other.top && other.bottom > this.top;
    }

    public final int getMinDimension() {
        return Math.min(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    public final int getMaxDimension() {
        return Math.max(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    /* renamed from: getTopLeft-nOcc-ac, reason: not valid java name */
    public final long m5029getTopLeftnOccac() {
        return IntOffsetKt.IntOffset(this.left, this.top);
    }

    /* renamed from: getTopCenter-nOcc-ac, reason: not valid java name */
    public final long m5028getTopCenternOccac() {
        return IntOffsetKt.IntOffset(this.left + (getWidth() / 2), this.top);
    }

    /* renamed from: getTopRight-nOcc-ac, reason: not valid java name */
    public final long m5030getTopRightnOccac() {
        return IntOffsetKt.IntOffset(this.right, this.top);
    }

    /* renamed from: getCenterLeft-nOcc-ac, reason: not valid java name */
    public final long m5025getCenterLeftnOccac() {
        return IntOffsetKt.IntOffset(this.left, this.top + (getHeight() / 2));
    }

    /* renamed from: getCenter-nOcc-ac, reason: not valid java name */
    public final long m5024getCenternOccac() {
        return IntOffsetKt.IntOffset(this.left + (getWidth() / 2), this.top + (getHeight() / 2));
    }

    /* renamed from: getCenterRight-nOcc-ac, reason: not valid java name */
    public final long m5026getCenterRightnOccac() {
        return IntOffsetKt.IntOffset(this.right, this.top + (getHeight() / 2));
    }

    /* renamed from: getBottomLeft-nOcc-ac, reason: not valid java name */
    public final long m5022getBottomLeftnOccac() {
        return IntOffsetKt.IntOffset(this.left, this.bottom);
    }

    /* renamed from: getBottomCenter-nOcc-ac, reason: not valid java name */
    public final long m5021getBottomCenternOccac() {
        return IntOffsetKt.IntOffset(this.left + (getWidth() / 2), this.bottom);
    }

    /* renamed from: getBottomRight-nOcc-ac, reason: not valid java name */
    public final long m5023getBottomRightnOccac() {
        return IntOffsetKt.IntOffset(this.right, this.bottom);
    }

    /* renamed from: contains--gyyYBs, reason: not valid java name */
    public final boolean m5020containsgyyYBs(long offset) {
        return IntOffset.m5001getXimpl(offset) >= this.left && IntOffset.m5001getXimpl(offset) < this.right && IntOffset.m5002getYimpl(offset) >= this.top && IntOffset.m5002getYimpl(offset) < this.bottom;
    }

    public String toString() {
        return "IntRect.fromLTRB(" + this.left + ", " + this.top + ", " + this.right + ", " + this.bottom + ')';
    }
}
