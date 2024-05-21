package androidx.compose.ui.geometry;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Rect.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u0000 U2\u00020\u0001:\u0001UB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\u001e\u0010@\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020\rH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bB\u0010CJ1\u0010D\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0010\u0010E\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0003H\u0007J\u0013\u0010G\u001a\u00020\u001e2\b\u0010H\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010I\u001a\u00020JHÖ\u0001J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0003H\u0007J\u0010\u0010L\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0000H\u0007J\u000e\u0010M\u001a\u00020\u001e2\u0006\u0010H\u001a\u00020\u0000J\b\u0010N\u001a\u00020OH\u0016J\u001d\u0010P\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bQ\u0010RJ\u0018\u0010P\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\u0003H\u0007R\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u001a\u0010\u0014\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0018\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000fR\u001a\u0010\u001a\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\t\u001a\u0004\b\u001c\u0010\u000bR\u001a\u0010\u001d\u001a\u00020\u001e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\t\u001a\u0004\b\u001d\u0010 R\u001a\u0010!\u001a\u00020\u001e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\t\u001a\u0004\b!\u0010 R\u001a\u0010#\u001a\u00020\u001e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b$\u0010\t\u001a\u0004\b#\u0010 R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\t\u001a\u0004\b&\u0010\u000bR\u0011\u0010'\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b(\u0010\u000bR\u0011\u0010)\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b*\u0010\u000bR\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\t\u001a\u0004\b,\u0010\u000bR#\u0010-\u001a\u00020.8FX\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u0012\u0004\b/\u0010\t\u001a\u0004\b0\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u0010\t\u001a\u0004\b2\u0010\u000bR\u001a\u00103\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b4\u0010\u000fR\u001a\u00105\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b6\u0010\u000fR\u001a\u00107\u001a\u00020\r8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b8\u0010\u000fR\u001a\u00109\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b:\u0010\t\u001a\u0004\b;\u0010\u000b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006V"}, d2 = {"Landroidx/compose/ui/geometry/Rect;", "", "left", "", "top", "right", "bottom", "(FFFF)V", "getBottom$annotations", "()V", "getBottom", "()F", "bottomCenter", "Landroidx/compose/ui/geometry/Offset;", "getBottomCenter-F1C5BW0", "()J", "bottomLeft", "getBottomLeft-F1C5BW0", "bottomRight", "getBottomRight-F1C5BW0", "center", "getCenter-F1C5BW0", "centerLeft", "getCenterLeft-F1C5BW0", "centerRight", "getCenterRight-F1C5BW0", ViewHierarchyNode.JsonKeys.HEIGHT, "getHeight$annotations", "getHeight", "isEmpty", "", "isEmpty$annotations", "()Z", "isFinite", "isFinite$annotations", "isInfinite", "isInfinite$annotations", "getLeft$annotations", "getLeft", "maxDimension", "getMaxDimension", "minDimension", "getMinDimension", "getRight$annotations", "getRight", "size", "Landroidx/compose/ui/geometry/Size;", "getSize-NH-jbRc$annotations", "getSize-NH-jbRc", "getTop$annotations", "getTop", "topCenter", "getTopCenter-F1C5BW0", "topLeft", "getTopLeft-F1C5BW0", "topRight", "getTopRight-F1C5BW0", ViewHierarchyNode.JsonKeys.WIDTH, "getWidth$annotations", "getWidth", "component1", "component2", "component3", "component4", "contains", "offset", "contains-k-4lQ0M", "(J)Z", "copy", "deflate", "delta", "equals", "other", "hashCode", "", "inflate", "intersect", "overlaps", "toString", "", "translate", "translate-k-4lQ0M", "(J)Landroidx/compose/ui/geometry/Rect;", "translateX", "translateY", "Companion", "ui-geometry_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class Rect {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Rect Zero = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    public static /* synthetic */ Rect copy$default(Rect rect, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = rect.left;
        }
        if ((i & 2) != 0) {
            f2 = rect.top;
        }
        if ((i & 4) != 0) {
            f3 = rect.right;
        }
        if ((i & 8) != 0) {
            f4 = rect.bottom;
        }
        return rect.copy(f, f2, f3, f4);
    }

    public static /* synthetic */ void getBottom$annotations() {
    }

    public static /* synthetic */ void getHeight$annotations() {
    }

    public static /* synthetic */ void getLeft$annotations() {
    }

    public static /* synthetic */ void getRight$annotations() {
    }

    /* renamed from: getSize-NH-jbRc$annotations, reason: not valid java name */
    public static /* synthetic */ void m2425getSizeNHjbRc$annotations() {
    }

    public static /* synthetic */ void getTop$annotations() {
    }

    public static /* synthetic */ void getWidth$annotations() {
    }

    public static /* synthetic */ void isEmpty$annotations() {
    }

    public static /* synthetic */ void isFinite$annotations() {
    }

    public static /* synthetic */ void isInfinite$annotations() {
    }

    /* renamed from: component1, reason: from getter */
    public final float getLeft() {
        return this.left;
    }

    /* renamed from: component2, reason: from getter */
    public final float getTop() {
        return this.top;
    }

    /* renamed from: component3, reason: from getter */
    public final float getRight() {
        return this.right;
    }

    /* renamed from: component4, reason: from getter */
    public final float getBottom() {
        return this.bottom;
    }

    public final Rect copy(float left, float top, float right, float bottom) {
        return new Rect(left, top, right, bottom);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) other;
        return Float.compare(this.left, rect.left) == 0 && Float.compare(this.top, rect.top) == 0 && Float.compare(this.right, rect.right) == 0 && Float.compare(this.bottom, rect.bottom) == 0;
    }

    public final float getBottom() {
        return this.bottom;
    }

    public final float getHeight() {
        return this.bottom - this.top;
    }

    public final float getLeft() {
        return this.left;
    }

    public final float getRight() {
        return this.right;
    }

    public final float getTop() {
        return this.top;
    }

    public final float getWidth() {
        return this.right - this.left;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.left) * 31) + Float.hashCode(this.top)) * 31) + Float.hashCode(this.right)) * 31) + Float.hashCode(this.bottom);
    }

    public final boolean isEmpty() {
        return this.left >= this.right || this.top >= this.bottom;
    }

    public final boolean isInfinite() {
        return this.left >= Float.POSITIVE_INFINITY || this.top >= Float.POSITIVE_INFINITY || this.right >= Float.POSITIVE_INFINITY || this.bottom >= Float.POSITIVE_INFINITY;
    }

    public Rect(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    /* compiled from: Rect.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/geometry/Rect$Companion;", "", "()V", "Zero", "Landroidx/compose/ui/geometry/Rect;", "getZero$annotations", "getZero", "()Landroidx/compose/ui/geometry/Rect;", "ui-geometry_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getZero$annotations() {
        }

        private Companion() {
        }

        public final Rect getZero() {
            return Rect.Zero;
        }
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m2433getSizeNHjbRc() {
        return SizeKt.Size(getWidth(), getHeight());
    }

    public final boolean isFinite() {
        float f = this.left;
        if (!Float.isInfinite(f) && !Float.isNaN(f)) {
            float f2 = this.top;
            if (!Float.isInfinite(f2) && !Float.isNaN(f2)) {
                float f3 = this.right;
                if (!Float.isInfinite(f3) && !Float.isNaN(f3)) {
                    float f4 = this.bottom;
                    if (!Float.isInfinite(f4) && !Float.isNaN(f4)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: translate-k-4lQ0M, reason: not valid java name */
    public final Rect m2437translatek4lQ0M(long offset) {
        return new Rect(this.left + Offset.m2400getXimpl(offset), this.top + Offset.m2401getYimpl(offset), this.right + Offset.m2400getXimpl(offset), this.bottom + Offset.m2401getYimpl(offset));
    }

    public final Rect translate(float translateX, float translateY) {
        return new Rect(this.left + translateX, this.top + translateY, this.right + translateX, this.bottom + translateY);
    }

    public final Rect inflate(float delta) {
        return new Rect(this.left - delta, this.top - delta, this.right + delta, this.bottom + delta);
    }

    public final Rect deflate(float delta) {
        return inflate(-delta);
    }

    public final Rect intersect(Rect other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return new Rect(Math.max(this.left, other.left), Math.max(this.top, other.top), Math.min(this.right, other.right), Math.min(this.bottom, other.bottom));
    }

    public final boolean overlaps(Rect other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.right > other.left && other.right > this.left && this.bottom > other.top && other.bottom > this.top;
    }

    public final float getMinDimension() {
        return Math.min(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    public final float getMaxDimension() {
        return Math.max(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    /* renamed from: getTopLeft-F1C5BW0, reason: not valid java name */
    public final long m2435getTopLeftF1C5BW0() {
        return OffsetKt.Offset(this.left, this.top);
    }

    /* renamed from: getTopCenter-F1C5BW0, reason: not valid java name */
    public final long m2434getTopCenterF1C5BW0() {
        return OffsetKt.Offset(this.left + (getWidth() / 2.0f), this.top);
    }

    /* renamed from: getTopRight-F1C5BW0, reason: not valid java name */
    public final long m2436getTopRightF1C5BW0() {
        return OffsetKt.Offset(this.right, this.top);
    }

    /* renamed from: getCenterLeft-F1C5BW0, reason: not valid java name */
    public final long m2431getCenterLeftF1C5BW0() {
        return OffsetKt.Offset(this.left, this.top + (getHeight() / 2.0f));
    }

    /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public final long m2430getCenterF1C5BW0() {
        return OffsetKt.Offset(this.left + (getWidth() / 2.0f), this.top + (getHeight() / 2.0f));
    }

    /* renamed from: getCenterRight-F1C5BW0, reason: not valid java name */
    public final long m2432getCenterRightF1C5BW0() {
        return OffsetKt.Offset(this.right, this.top + (getHeight() / 2.0f));
    }

    /* renamed from: getBottomLeft-F1C5BW0, reason: not valid java name */
    public final long m2428getBottomLeftF1C5BW0() {
        return OffsetKt.Offset(this.left, this.bottom);
    }

    /* renamed from: getBottomCenter-F1C5BW0, reason: not valid java name */
    public final long m2427getBottomCenterF1C5BW0() {
        return OffsetKt.Offset(this.left + (getWidth() / 2.0f), this.bottom);
    }

    /* renamed from: getBottomRight-F1C5BW0, reason: not valid java name */
    public final long m2429getBottomRightF1C5BW0() {
        return OffsetKt.Offset(this.right, this.bottom);
    }

    /* renamed from: contains-k-4lQ0M, reason: not valid java name */
    public final boolean m2426containsk4lQ0M(long offset) {
        return Offset.m2400getXimpl(offset) >= this.left && Offset.m2400getXimpl(offset) < this.right && Offset.m2401getYimpl(offset) >= this.top && Offset.m2401getYimpl(offset) < this.bottom;
    }

    public String toString() {
        return "Rect.fromLTRB(" + GeometryUtilsKt.toStringAsFixed(this.left, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.top, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.right, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.bottom, 1) + ')';
    }
}
