package androidx.compose.ui.graphics.vector;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PathNode.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0013\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019B\u001b\b\u0004\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0006\u0082\u0001\u0013\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,¨\u0006-"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode;", "", "isCurve", "", "isQuad", "(ZZ)V", "()Z", "ArcTo", "Close", "CurveTo", "HorizontalTo", "LineTo", "MoveTo", "QuadTo", "ReflectiveCurveTo", "ReflectiveQuadTo", "RelativeArcTo", "RelativeCurveTo", "RelativeHorizontalTo", "RelativeLineTo", "RelativeMoveTo", "RelativeQuadTo", "RelativeReflectiveCurveTo", "RelativeReflectiveQuadTo", "RelativeVerticalTo", "VerticalTo", "Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode$Close;", "Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode$LineTo;", "Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;", "Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class PathNode {
    private final boolean isCurve;
    private final boolean isQuad;

    public /* synthetic */ PathNode(boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2);
    }

    /* renamed from: isCurve, reason: from getter */
    public final boolean getIsCurve() {
        return this.isCurve;
    }

    /* renamed from: isQuad, reason: from getter */
    public final boolean getIsQuad() {
        return this.isQuad;
    }

    private PathNode(boolean z, boolean z2) {
        this.isCurve = z;
        this.isQuad = z2;
    }

    public /* synthetic */ PathNode(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, null);
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$Close;", "Landroidx/compose/ui/graphics/vector/PathNode;", "()V", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Close extends PathNode {
        public static final Close INSTANCE = new Close();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Close() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.Close.<init>():void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dx", "", "dy", "(FF)V", "getDx", "()F", "getDy", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeMoveTo extends PathNode {
        private final float dx;
        private final float dy;

        public static /* synthetic */ RelativeMoveTo copy$default(RelativeMoveTo relativeMoveTo, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeMoveTo.dx;
            }
            if ((i & 2) != 0) {
                f2 = relativeMoveTo.dy;
            }
            return relativeMoveTo.copy(f, f2);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDx() {
            return this.dx;
        }

        /* renamed from: component2, reason: from getter */
        public final float getDy() {
            return this.dy;
        }

        public final RelativeMoveTo copy(float dx, float dy) {
            return new RelativeMoveTo(dx, dy);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RelativeMoveTo)) {
                return false;
            }
            RelativeMoveTo relativeMoveTo = (RelativeMoveTo) other;
            return Float.compare(this.dx, relativeMoveTo.dx) == 0 && Float.compare(this.dy, relativeMoveTo.dy) == 0;
        }

        public final float getDx() {
            return this.dx;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return (Float.hashCode(this.dx) * 31) + Float.hashCode(this.dy);
        }

        public String toString() {
            return "RelativeMoveTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public RelativeMoveTo(float r4, float r5) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.dx = r4
                r3.dy = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.RelativeMoveTo.<init>(float, float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", ViewHierarchyNode.JsonKeys.X, "", ViewHierarchyNode.JsonKeys.Y, "(FF)V", "getX", "()F", "getY", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class MoveTo extends PathNode {
        private final float x;
        private final float y;

        public static /* synthetic */ MoveTo copy$default(MoveTo moveTo, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = moveTo.x;
            }
            if ((i & 2) != 0) {
                f2 = moveTo.y;
            }
            return moveTo.copy(f, f2);
        }

        /* renamed from: component1, reason: from getter */
        public final float getX() {
            return this.x;
        }

        /* renamed from: component2, reason: from getter */
        public final float getY() {
            return this.y;
        }

        public final MoveTo copy(float x, float y) {
            return new MoveTo(x, y);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MoveTo)) {
                return false;
            }
            MoveTo moveTo = (MoveTo) other;
            return Float.compare(this.x, moveTo.x) == 0 && Float.compare(this.y, moveTo.y) == 0;
        }

        public final float getX() {
            return this.x;
        }

        public final float getY() {
            return this.y;
        }

        public int hashCode() {
            return (Float.hashCode(this.x) * 31) + Float.hashCode(this.y);
        }

        public String toString() {
            return "MoveTo(x=" + this.x + ", y=" + this.y + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public MoveTo(float r4, float r5) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.x = r4
                r3.y = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.MoveTo.<init>(float, float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dx", "", "dy", "(FF)V", "getDx", "()F", "getDy", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeLineTo extends PathNode {
        private final float dx;
        private final float dy;

        public static /* synthetic */ RelativeLineTo copy$default(RelativeLineTo relativeLineTo, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeLineTo.dx;
            }
            if ((i & 2) != 0) {
                f2 = relativeLineTo.dy;
            }
            return relativeLineTo.copy(f, f2);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDx() {
            return this.dx;
        }

        /* renamed from: component2, reason: from getter */
        public final float getDy() {
            return this.dy;
        }

        public final RelativeLineTo copy(float dx, float dy) {
            return new RelativeLineTo(dx, dy);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RelativeLineTo)) {
                return false;
            }
            RelativeLineTo relativeLineTo = (RelativeLineTo) other;
            return Float.compare(this.dx, relativeLineTo.dx) == 0 && Float.compare(this.dy, relativeLineTo.dy) == 0;
        }

        public final float getDx() {
            return this.dx;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return (Float.hashCode(this.dx) * 31) + Float.hashCode(this.dy);
        }

        public String toString() {
            return "RelativeLineTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public RelativeLineTo(float r4, float r5) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.dx = r4
                r3.dy = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.RelativeLineTo.<init>(float, float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$LineTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", ViewHierarchyNode.JsonKeys.X, "", ViewHierarchyNode.JsonKeys.Y, "(FF)V", "getX", "()F", "getY", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class LineTo extends PathNode {
        private final float x;
        private final float y;

        public static /* synthetic */ LineTo copy$default(LineTo lineTo, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = lineTo.x;
            }
            if ((i & 2) != 0) {
                f2 = lineTo.y;
            }
            return lineTo.copy(f, f2);
        }

        /* renamed from: component1, reason: from getter */
        public final float getX() {
            return this.x;
        }

        /* renamed from: component2, reason: from getter */
        public final float getY() {
            return this.y;
        }

        public final LineTo copy(float x, float y) {
            return new LineTo(x, y);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LineTo)) {
                return false;
            }
            LineTo lineTo = (LineTo) other;
            return Float.compare(this.x, lineTo.x) == 0 && Float.compare(this.y, lineTo.y) == 0;
        }

        public final float getX() {
            return this.x;
        }

        public final float getY() {
            return this.y;
        }

        public int hashCode() {
            return (Float.hashCode(this.x) * 31) + Float.hashCode(this.y);
        }

        public String toString() {
            return "LineTo(x=" + this.x + ", y=" + this.y + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public LineTo(float r4, float r5) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.x = r4
                r3.y = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.LineTo.<init>(float, float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dx", "", "(F)V", "getDx", "()F", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeHorizontalTo extends PathNode {
        private final float dx;

        public static /* synthetic */ RelativeHorizontalTo copy$default(RelativeHorizontalTo relativeHorizontalTo, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeHorizontalTo.dx;
            }
            return relativeHorizontalTo.copy(f);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDx() {
            return this.dx;
        }

        public final RelativeHorizontalTo copy(float dx) {
            return new RelativeHorizontalTo(dx);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RelativeHorizontalTo) && Float.compare(this.dx, ((RelativeHorizontalTo) other).dx) == 0;
        }

        public final float getDx() {
            return this.dx;
        }

        public int hashCode() {
            return Float.hashCode(this.dx);
        }

        public String toString() {
            return "RelativeHorizontalTo(dx=" + this.dx + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public RelativeHorizontalTo(float r4) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.dx = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.RelativeHorizontalTo.<init>(float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", ViewHierarchyNode.JsonKeys.X, "", "(F)V", "getX", "()F", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class HorizontalTo extends PathNode {
        private final float x;

        public static /* synthetic */ HorizontalTo copy$default(HorizontalTo horizontalTo, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                f = horizontalTo.x;
            }
            return horizontalTo.copy(f);
        }

        /* renamed from: component1, reason: from getter */
        public final float getX() {
            return this.x;
        }

        public final HorizontalTo copy(float x) {
            return new HorizontalTo(x);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof HorizontalTo) && Float.compare(this.x, ((HorizontalTo) other).x) == 0;
        }

        public final float getX() {
            return this.x;
        }

        public int hashCode() {
            return Float.hashCode(this.x);
        }

        public String toString() {
            return "HorizontalTo(x=" + this.x + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public HorizontalTo(float r4) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.x = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.HorizontalTo.<init>(float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dy", "", "(F)V", "getDy", "()F", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeVerticalTo extends PathNode {
        private final float dy;

        public static /* synthetic */ RelativeVerticalTo copy$default(RelativeVerticalTo relativeVerticalTo, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeVerticalTo.dy;
            }
            return relativeVerticalTo.copy(f);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDy() {
            return this.dy;
        }

        public final RelativeVerticalTo copy(float dy) {
            return new RelativeVerticalTo(dy);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RelativeVerticalTo) && Float.compare(this.dy, ((RelativeVerticalTo) other).dy) == 0;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return Float.hashCode(this.dy);
        }

        public String toString() {
            return "RelativeVerticalTo(dy=" + this.dy + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public RelativeVerticalTo(float r4) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.dy = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.RelativeVerticalTo.<init>(float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", ViewHierarchyNode.JsonKeys.Y, "", "(F)V", "getY", "()F", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class VerticalTo extends PathNode {
        private final float y;

        public static /* synthetic */ VerticalTo copy$default(VerticalTo verticalTo, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                f = verticalTo.y;
            }
            return verticalTo.copy(f);
        }

        /* renamed from: component1, reason: from getter */
        public final float getY() {
            return this.y;
        }

        public final VerticalTo copy(float y) {
            return new VerticalTo(y);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof VerticalTo) && Float.compare(this.y, ((VerticalTo) other).y) == 0;
        }

        public final float getY() {
            return this.y;
        }

        public int hashCode() {
            return Float.hashCode(this.y);
        }

        public String toString() {
            return "VerticalTo(y=" + this.y + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public VerticalTo(float r4) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.y = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.VerticalTo.<init>(float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003JE\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006 "}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dx1", "", "dy1", "dx2", "dy2", "dx3", "dy3", "(FFFFFF)V", "getDx1", "()F", "getDx2", "getDx3", "getDy1", "getDy2", "getDy3", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeCurveTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dx3;
        private final float dy1;
        private final float dy2;
        private final float dy3;

        public static /* synthetic */ RelativeCurveTo copy$default(RelativeCurveTo relativeCurveTo, float f, float f2, float f3, float f4, float f5, float f6, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeCurveTo.dx1;
            }
            if ((i & 2) != 0) {
                f2 = relativeCurveTo.dy1;
            }
            float f7 = f2;
            if ((i & 4) != 0) {
                f3 = relativeCurveTo.dx2;
            }
            float f8 = f3;
            if ((i & 8) != 0) {
                f4 = relativeCurveTo.dy2;
            }
            float f9 = f4;
            if ((i & 16) != 0) {
                f5 = relativeCurveTo.dx3;
            }
            float f10 = f5;
            if ((i & 32) != 0) {
                f6 = relativeCurveTo.dy3;
            }
            return relativeCurveTo.copy(f, f7, f8, f9, f10, f6);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDx1() {
            return this.dx1;
        }

        /* renamed from: component2, reason: from getter */
        public final float getDy1() {
            return this.dy1;
        }

        /* renamed from: component3, reason: from getter */
        public final float getDx2() {
            return this.dx2;
        }

        /* renamed from: component4, reason: from getter */
        public final float getDy2() {
            return this.dy2;
        }

        /* renamed from: component5, reason: from getter */
        public final float getDx3() {
            return this.dx3;
        }

        /* renamed from: component6, reason: from getter */
        public final float getDy3() {
            return this.dy3;
        }

        public final RelativeCurveTo copy(float dx1, float dy1, float dx2, float dy2, float dx3, float dy3) {
            return new RelativeCurveTo(dx1, dy1, dx2, dy2, dx3, dy3);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RelativeCurveTo)) {
                return false;
            }
            RelativeCurveTo relativeCurveTo = (RelativeCurveTo) other;
            return Float.compare(this.dx1, relativeCurveTo.dx1) == 0 && Float.compare(this.dy1, relativeCurveTo.dy1) == 0 && Float.compare(this.dx2, relativeCurveTo.dx2) == 0 && Float.compare(this.dy2, relativeCurveTo.dy2) == 0 && Float.compare(this.dx3, relativeCurveTo.dx3) == 0 && Float.compare(this.dy3, relativeCurveTo.dy3) == 0;
        }

        public final float getDx1() {
            return this.dx1;
        }

        public final float getDx2() {
            return this.dx2;
        }

        public final float getDx3() {
            return this.dx3;
        }

        public final float getDy1() {
            return this.dy1;
        }

        public final float getDy2() {
            return this.dy2;
        }

        public final float getDy3() {
            return this.dy3;
        }

        public int hashCode() {
            return (((((((((Float.hashCode(this.dx1) * 31) + Float.hashCode(this.dy1)) * 31) + Float.hashCode(this.dx2)) * 31) + Float.hashCode(this.dy2)) * 31) + Float.hashCode(this.dx3)) * 31) + Float.hashCode(this.dy3);
        }

        public String toString() {
            return "RelativeCurveTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ", dx3=" + this.dx3 + ", dy3=" + this.dy3 + ')';
        }

        public RelativeCurveTo(float f, float f2, float f3, float f4, float f5, float f6) {
            super(true, false, 2, null);
            this.dx1 = f;
            this.dy1 = f2;
            this.dx2 = f3;
            this.dy2 = f4;
            this.dx3 = f5;
            this.dy3 = f6;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003JE\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006 "}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "x1", "", "y1", "x2", "y2", "x3", "y3", "(FFFFFF)V", "getX1", "()F", "getX2", "getX3", "getY1", "getY2", "getY3", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class CurveTo extends PathNode {
        private final float x1;
        private final float x2;
        private final float x3;
        private final float y1;
        private final float y2;
        private final float y3;

        public static /* synthetic */ CurveTo copy$default(CurveTo curveTo, float f, float f2, float f3, float f4, float f5, float f6, int i, Object obj) {
            if ((i & 1) != 0) {
                f = curveTo.x1;
            }
            if ((i & 2) != 0) {
                f2 = curveTo.y1;
            }
            float f7 = f2;
            if ((i & 4) != 0) {
                f3 = curveTo.x2;
            }
            float f8 = f3;
            if ((i & 8) != 0) {
                f4 = curveTo.y2;
            }
            float f9 = f4;
            if ((i & 16) != 0) {
                f5 = curveTo.x3;
            }
            float f10 = f5;
            if ((i & 32) != 0) {
                f6 = curveTo.y3;
            }
            return curveTo.copy(f, f7, f8, f9, f10, f6);
        }

        /* renamed from: component1, reason: from getter */
        public final float getX1() {
            return this.x1;
        }

        /* renamed from: component2, reason: from getter */
        public final float getY1() {
            return this.y1;
        }

        /* renamed from: component3, reason: from getter */
        public final float getX2() {
            return this.x2;
        }

        /* renamed from: component4, reason: from getter */
        public final float getY2() {
            return this.y2;
        }

        /* renamed from: component5, reason: from getter */
        public final float getX3() {
            return this.x3;
        }

        /* renamed from: component6, reason: from getter */
        public final float getY3() {
            return this.y3;
        }

        public final CurveTo copy(float x1, float y1, float x2, float y2, float x3, float y3) {
            return new CurveTo(x1, y1, x2, y2, x3, y3);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CurveTo)) {
                return false;
            }
            CurveTo curveTo = (CurveTo) other;
            return Float.compare(this.x1, curveTo.x1) == 0 && Float.compare(this.y1, curveTo.y1) == 0 && Float.compare(this.x2, curveTo.x2) == 0 && Float.compare(this.y2, curveTo.y2) == 0 && Float.compare(this.x3, curveTo.x3) == 0 && Float.compare(this.y3, curveTo.y3) == 0;
        }

        public final float getX1() {
            return this.x1;
        }

        public final float getX2() {
            return this.x2;
        }

        public final float getX3() {
            return this.x3;
        }

        public final float getY1() {
            return this.y1;
        }

        public final float getY2() {
            return this.y2;
        }

        public final float getY3() {
            return this.y3;
        }

        public int hashCode() {
            return (((((((((Float.hashCode(this.x1) * 31) + Float.hashCode(this.y1)) * 31) + Float.hashCode(this.x2)) * 31) + Float.hashCode(this.y2)) * 31) + Float.hashCode(this.x3)) * 31) + Float.hashCode(this.y3);
        }

        public String toString() {
            return "CurveTo(x1=" + this.x1 + ", y1=" + this.y1 + ", x2=" + this.x2 + ", y2=" + this.y2 + ", x3=" + this.x3 + ", y3=" + this.y3 + ')';
        }

        public CurveTo(float f, float f2, float f3, float f4, float f5, float f6) {
            super(true, false, 2, null);
            this.x1 = f;
            this.y1 = f2;
            this.x2 = f3;
            this.y2 = f4;
            this.x3 = f5;
            this.y3 = f6;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dx1", "", "dy1", "dx2", "dy2", "(FFFF)V", "getDx1", "()F", "getDx2", "getDy1", "getDy2", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeReflectiveCurveTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dy1;
        private final float dy2;

        public static /* synthetic */ RelativeReflectiveCurveTo copy$default(RelativeReflectiveCurveTo relativeReflectiveCurveTo, float f, float f2, float f3, float f4, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeReflectiveCurveTo.dx1;
            }
            if ((i & 2) != 0) {
                f2 = relativeReflectiveCurveTo.dy1;
            }
            if ((i & 4) != 0) {
                f3 = relativeReflectiveCurveTo.dx2;
            }
            if ((i & 8) != 0) {
                f4 = relativeReflectiveCurveTo.dy2;
            }
            return relativeReflectiveCurveTo.copy(f, f2, f3, f4);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDx1() {
            return this.dx1;
        }

        /* renamed from: component2, reason: from getter */
        public final float getDy1() {
            return this.dy1;
        }

        /* renamed from: component3, reason: from getter */
        public final float getDx2() {
            return this.dx2;
        }

        /* renamed from: component4, reason: from getter */
        public final float getDy2() {
            return this.dy2;
        }

        public final RelativeReflectiveCurveTo copy(float dx1, float dy1, float dx2, float dy2) {
            return new RelativeReflectiveCurveTo(dx1, dy1, dx2, dy2);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RelativeReflectiveCurveTo)) {
                return false;
            }
            RelativeReflectiveCurveTo relativeReflectiveCurveTo = (RelativeReflectiveCurveTo) other;
            return Float.compare(this.dx1, relativeReflectiveCurveTo.dx1) == 0 && Float.compare(this.dy1, relativeReflectiveCurveTo.dy1) == 0 && Float.compare(this.dx2, relativeReflectiveCurveTo.dx2) == 0 && Float.compare(this.dy2, relativeReflectiveCurveTo.dy2) == 0;
        }

        public final float getDx1() {
            return this.dx1;
        }

        public final float getDx2() {
            return this.dx2;
        }

        public final float getDy1() {
            return this.dy1;
        }

        public final float getDy2() {
            return this.dy2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.dx1) * 31) + Float.hashCode(this.dy1)) * 31) + Float.hashCode(this.dx2)) * 31) + Float.hashCode(this.dy2);
        }

        public String toString() {
            return "RelativeReflectiveCurveTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ')';
        }

        public RelativeReflectiveCurveTo(float f, float f2, float f3, float f4) {
            super(true, false, 2, null);
            this.dx1 = f;
            this.dy1 = f2;
            this.dx2 = f3;
            this.dy2 = f4;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "x1", "", "y1", "x2", "y2", "(FFFF)V", "getX1", "()F", "getX2", "getY1", "getY2", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class ReflectiveCurveTo extends PathNode {
        private final float x1;
        private final float x2;
        private final float y1;
        private final float y2;

        public static /* synthetic */ ReflectiveCurveTo copy$default(ReflectiveCurveTo reflectiveCurveTo, float f, float f2, float f3, float f4, int i, Object obj) {
            if ((i & 1) != 0) {
                f = reflectiveCurveTo.x1;
            }
            if ((i & 2) != 0) {
                f2 = reflectiveCurveTo.y1;
            }
            if ((i & 4) != 0) {
                f3 = reflectiveCurveTo.x2;
            }
            if ((i & 8) != 0) {
                f4 = reflectiveCurveTo.y2;
            }
            return reflectiveCurveTo.copy(f, f2, f3, f4);
        }

        /* renamed from: component1, reason: from getter */
        public final float getX1() {
            return this.x1;
        }

        /* renamed from: component2, reason: from getter */
        public final float getY1() {
            return this.y1;
        }

        /* renamed from: component3, reason: from getter */
        public final float getX2() {
            return this.x2;
        }

        /* renamed from: component4, reason: from getter */
        public final float getY2() {
            return this.y2;
        }

        public final ReflectiveCurveTo copy(float x1, float y1, float x2, float y2) {
            return new ReflectiveCurveTo(x1, y1, x2, y2);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ReflectiveCurveTo)) {
                return false;
            }
            ReflectiveCurveTo reflectiveCurveTo = (ReflectiveCurveTo) other;
            return Float.compare(this.x1, reflectiveCurveTo.x1) == 0 && Float.compare(this.y1, reflectiveCurveTo.y1) == 0 && Float.compare(this.x2, reflectiveCurveTo.x2) == 0 && Float.compare(this.y2, reflectiveCurveTo.y2) == 0;
        }

        public final float getX1() {
            return this.x1;
        }

        public final float getX2() {
            return this.x2;
        }

        public final float getY1() {
            return this.y1;
        }

        public final float getY2() {
            return this.y2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.x1) * 31) + Float.hashCode(this.y1)) * 31) + Float.hashCode(this.x2)) * 31) + Float.hashCode(this.y2);
        }

        public String toString() {
            return "ReflectiveCurveTo(x1=" + this.x1 + ", y1=" + this.y1 + ", x2=" + this.x2 + ", y2=" + this.y2 + ')';
        }

        public ReflectiveCurveTo(float f, float f2, float f3, float f4) {
            super(true, false, 2, null);
            this.x1 = f;
            this.y1 = f2;
            this.x2 = f3;
            this.y2 = f4;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dx1", "", "dy1", "dx2", "dy2", "(FFFF)V", "getDx1", "()F", "getDx2", "getDy1", "getDy2", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeQuadTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dy1;
        private final float dy2;

        public static /* synthetic */ RelativeQuadTo copy$default(RelativeQuadTo relativeQuadTo, float f, float f2, float f3, float f4, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeQuadTo.dx1;
            }
            if ((i & 2) != 0) {
                f2 = relativeQuadTo.dy1;
            }
            if ((i & 4) != 0) {
                f3 = relativeQuadTo.dx2;
            }
            if ((i & 8) != 0) {
                f4 = relativeQuadTo.dy2;
            }
            return relativeQuadTo.copy(f, f2, f3, f4);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDx1() {
            return this.dx1;
        }

        /* renamed from: component2, reason: from getter */
        public final float getDy1() {
            return this.dy1;
        }

        /* renamed from: component3, reason: from getter */
        public final float getDx2() {
            return this.dx2;
        }

        /* renamed from: component4, reason: from getter */
        public final float getDy2() {
            return this.dy2;
        }

        public final RelativeQuadTo copy(float dx1, float dy1, float dx2, float dy2) {
            return new RelativeQuadTo(dx1, dy1, dx2, dy2);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RelativeQuadTo)) {
                return false;
            }
            RelativeQuadTo relativeQuadTo = (RelativeQuadTo) other;
            return Float.compare(this.dx1, relativeQuadTo.dx1) == 0 && Float.compare(this.dy1, relativeQuadTo.dy1) == 0 && Float.compare(this.dx2, relativeQuadTo.dx2) == 0 && Float.compare(this.dy2, relativeQuadTo.dy2) == 0;
        }

        public final float getDx1() {
            return this.dx1;
        }

        public final float getDx2() {
            return this.dx2;
        }

        public final float getDy1() {
            return this.dy1;
        }

        public final float getDy2() {
            return this.dy2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.dx1) * 31) + Float.hashCode(this.dy1)) * 31) + Float.hashCode(this.dx2)) * 31) + Float.hashCode(this.dy2);
        }

        public String toString() {
            return "RelativeQuadTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ')';
        }

        public RelativeQuadTo(float f, float f2, float f3, float f4) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.dx1 = f;
            this.dy1 = f2;
            this.dx2 = f3;
            this.dy2 = f4;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "x1", "", "y1", "x2", "y2", "(FFFF)V", "getX1", "()F", "getX2", "getY1", "getY2", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class QuadTo extends PathNode {
        private final float x1;
        private final float x2;
        private final float y1;
        private final float y2;

        public static /* synthetic */ QuadTo copy$default(QuadTo quadTo, float f, float f2, float f3, float f4, int i, Object obj) {
            if ((i & 1) != 0) {
                f = quadTo.x1;
            }
            if ((i & 2) != 0) {
                f2 = quadTo.y1;
            }
            if ((i & 4) != 0) {
                f3 = quadTo.x2;
            }
            if ((i & 8) != 0) {
                f4 = quadTo.y2;
            }
            return quadTo.copy(f, f2, f3, f4);
        }

        /* renamed from: component1, reason: from getter */
        public final float getX1() {
            return this.x1;
        }

        /* renamed from: component2, reason: from getter */
        public final float getY1() {
            return this.y1;
        }

        /* renamed from: component3, reason: from getter */
        public final float getX2() {
            return this.x2;
        }

        /* renamed from: component4, reason: from getter */
        public final float getY2() {
            return this.y2;
        }

        public final QuadTo copy(float x1, float y1, float x2, float y2) {
            return new QuadTo(x1, y1, x2, y2);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof QuadTo)) {
                return false;
            }
            QuadTo quadTo = (QuadTo) other;
            return Float.compare(this.x1, quadTo.x1) == 0 && Float.compare(this.y1, quadTo.y1) == 0 && Float.compare(this.x2, quadTo.x2) == 0 && Float.compare(this.y2, quadTo.y2) == 0;
        }

        public final float getX1() {
            return this.x1;
        }

        public final float getX2() {
            return this.x2;
        }

        public final float getY1() {
            return this.y1;
        }

        public final float getY2() {
            return this.y2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.x1) * 31) + Float.hashCode(this.y1)) * 31) + Float.hashCode(this.x2)) * 31) + Float.hashCode(this.y2);
        }

        public String toString() {
            return "QuadTo(x1=" + this.x1 + ", y1=" + this.y1 + ", x2=" + this.x2 + ", y2=" + this.y2 + ')';
        }

        public QuadTo(float f, float f2, float f3, float f4) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.x1 = f;
            this.y1 = f2;
            this.x2 = f3;
            this.y2 = f4;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "dx", "", "dy", "(FF)V", "getDx", "()F", "getDy", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeReflectiveQuadTo extends PathNode {
        private final float dx;
        private final float dy;

        public static /* synthetic */ RelativeReflectiveQuadTo copy$default(RelativeReflectiveQuadTo relativeReflectiveQuadTo, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeReflectiveQuadTo.dx;
            }
            if ((i & 2) != 0) {
                f2 = relativeReflectiveQuadTo.dy;
            }
            return relativeReflectiveQuadTo.copy(f, f2);
        }

        /* renamed from: component1, reason: from getter */
        public final float getDx() {
            return this.dx;
        }

        /* renamed from: component2, reason: from getter */
        public final float getDy() {
            return this.dy;
        }

        public final RelativeReflectiveQuadTo copy(float dx, float dy) {
            return new RelativeReflectiveQuadTo(dx, dy);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RelativeReflectiveQuadTo)) {
                return false;
            }
            RelativeReflectiveQuadTo relativeReflectiveQuadTo = (RelativeReflectiveQuadTo) other;
            return Float.compare(this.dx, relativeReflectiveQuadTo.dx) == 0 && Float.compare(this.dy, relativeReflectiveQuadTo.dy) == 0;
        }

        public final float getDx() {
            return this.dx;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return (Float.hashCode(this.dx) * 31) + Float.hashCode(this.dy);
        }

        public String toString() {
            return "RelativeReflectiveQuadTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }

        public RelativeReflectiveQuadTo(float f, float f2) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.dx = f;
            this.dy = f2;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", ViewHierarchyNode.JsonKeys.X, "", ViewHierarchyNode.JsonKeys.Y, "(FF)V", "getX", "()F", "getY", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class ReflectiveQuadTo extends PathNode {
        private final float x;
        private final float y;

        public static /* synthetic */ ReflectiveQuadTo copy$default(ReflectiveQuadTo reflectiveQuadTo, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = reflectiveQuadTo.x;
            }
            if ((i & 2) != 0) {
                f2 = reflectiveQuadTo.y;
            }
            return reflectiveQuadTo.copy(f, f2);
        }

        /* renamed from: component1, reason: from getter */
        public final float getX() {
            return this.x;
        }

        /* renamed from: component2, reason: from getter */
        public final float getY() {
            return this.y;
        }

        public final ReflectiveQuadTo copy(float x, float y) {
            return new ReflectiveQuadTo(x, y);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ReflectiveQuadTo)) {
                return false;
            }
            ReflectiveQuadTo reflectiveQuadTo = (ReflectiveQuadTo) other;
            return Float.compare(this.x, reflectiveQuadTo.x) == 0 && Float.compare(this.y, reflectiveQuadTo.y) == 0;
        }

        public final float getX() {
            return this.x;
        }

        public final float getY() {
            return this.y;
        }

        public int hashCode() {
            return (Float.hashCode(this.x) * 31) + Float.hashCode(this.y);
        }

        public String toString() {
            return "ReflectiveQuadTo(x=" + this.x + ", y=" + this.y + ')';
        }

        public ReflectiveQuadTo(float f, float f2) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.x = f;
            this.y = f2;
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003JO\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\r¨\u0006\""}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "horizontalEllipseRadius", "", "verticalEllipseRadius", "theta", "isMoreThanHalf", "", "isPositiveArc", "arcStartDx", "arcStartDy", "(FFFZZFF)V", "getArcStartDx", "()F", "getArcStartDy", "getHorizontalEllipseRadius", "()Z", "getTheta", "getVerticalEllipseRadius", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class RelativeArcTo extends PathNode {
        private final float arcStartDx;
        private final float arcStartDy;
        private final float horizontalEllipseRadius;
        private final boolean isMoreThanHalf;
        private final boolean isPositiveArc;
        private final float theta;
        private final float verticalEllipseRadius;

        public static /* synthetic */ RelativeArcTo copy$default(RelativeArcTo relativeArcTo, float f, float f2, float f3, boolean z, boolean z2, float f4, float f5, int i, Object obj) {
            if ((i & 1) != 0) {
                f = relativeArcTo.horizontalEllipseRadius;
            }
            if ((i & 2) != 0) {
                f2 = relativeArcTo.verticalEllipseRadius;
            }
            float f6 = f2;
            if ((i & 4) != 0) {
                f3 = relativeArcTo.theta;
            }
            float f7 = f3;
            if ((i & 8) != 0) {
                z = relativeArcTo.isMoreThanHalf;
            }
            boolean z3 = z;
            if ((i & 16) != 0) {
                z2 = relativeArcTo.isPositiveArc;
            }
            boolean z4 = z2;
            if ((i & 32) != 0) {
                f4 = relativeArcTo.arcStartDx;
            }
            float f8 = f4;
            if ((i & 64) != 0) {
                f5 = relativeArcTo.arcStartDy;
            }
            return relativeArcTo.copy(f, f6, f7, z3, z4, f8, f5);
        }

        /* renamed from: component1, reason: from getter */
        public final float getHorizontalEllipseRadius() {
            return this.horizontalEllipseRadius;
        }

        /* renamed from: component2, reason: from getter */
        public final float getVerticalEllipseRadius() {
            return this.verticalEllipseRadius;
        }

        /* renamed from: component3, reason: from getter */
        public final float getTheta() {
            return this.theta;
        }

        /* renamed from: component4, reason: from getter */
        public final boolean getIsMoreThanHalf() {
            return this.isMoreThanHalf;
        }

        /* renamed from: component5, reason: from getter */
        public final boolean getIsPositiveArc() {
            return this.isPositiveArc;
        }

        /* renamed from: component6, reason: from getter */
        public final float getArcStartDx() {
            return this.arcStartDx;
        }

        /* renamed from: component7, reason: from getter */
        public final float getArcStartDy() {
            return this.arcStartDy;
        }

        public final RelativeArcTo copy(float horizontalEllipseRadius, float verticalEllipseRadius, float theta, boolean isMoreThanHalf, boolean isPositiveArc, float arcStartDx, float arcStartDy) {
            return new RelativeArcTo(horizontalEllipseRadius, verticalEllipseRadius, theta, isMoreThanHalf, isPositiveArc, arcStartDx, arcStartDy);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RelativeArcTo)) {
                return false;
            }
            RelativeArcTo relativeArcTo = (RelativeArcTo) other;
            return Float.compare(this.horizontalEllipseRadius, relativeArcTo.horizontalEllipseRadius) == 0 && Float.compare(this.verticalEllipseRadius, relativeArcTo.verticalEllipseRadius) == 0 && Float.compare(this.theta, relativeArcTo.theta) == 0 && this.isMoreThanHalf == relativeArcTo.isMoreThanHalf && this.isPositiveArc == relativeArcTo.isPositiveArc && Float.compare(this.arcStartDx, relativeArcTo.arcStartDx) == 0 && Float.compare(this.arcStartDy, relativeArcTo.arcStartDy) == 0;
        }

        public final float getArcStartDx() {
            return this.arcStartDx;
        }

        public final float getArcStartDy() {
            return this.arcStartDy;
        }

        public final float getHorizontalEllipseRadius() {
            return this.horizontalEllipseRadius;
        }

        public final float getTheta() {
            return this.theta;
        }

        public final float getVerticalEllipseRadius() {
            return this.verticalEllipseRadius;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((Float.hashCode(this.horizontalEllipseRadius) * 31) + Float.hashCode(this.verticalEllipseRadius)) * 31) + Float.hashCode(this.theta)) * 31;
            boolean z = this.isMoreThanHalf;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode + i) * 31;
            boolean z2 = this.isPositiveArc;
            return ((((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + Float.hashCode(this.arcStartDx)) * 31) + Float.hashCode(this.arcStartDy);
        }

        public final boolean isMoreThanHalf() {
            return this.isMoreThanHalf;
        }

        public final boolean isPositiveArc() {
            return this.isPositiveArc;
        }

        public String toString() {
            return "RelativeArcTo(horizontalEllipseRadius=" + this.horizontalEllipseRadius + ", verticalEllipseRadius=" + this.verticalEllipseRadius + ", theta=" + this.theta + ", isMoreThanHalf=" + this.isMoreThanHalf + ", isPositiveArc=" + this.isPositiveArc + ", arcStartDx=" + this.arcStartDx + ", arcStartDy=" + this.arcStartDy + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public RelativeArcTo(float r4, float r5, float r6, boolean r7, boolean r8, float r9, float r10) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.horizontalEllipseRadius = r4
                r3.verticalEllipseRadius = r5
                r3.theta = r6
                r3.isMoreThanHalf = r7
                r3.isPositiveArc = r8
                r3.arcStartDx = r9
                r3.arcStartDy = r10
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.RelativeArcTo.<init>(float, float, float, boolean, boolean, float, float):void");
        }
    }

    /* compiled from: PathNode.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003JO\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\r¨\u0006\""}, d2 = {"Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;", "Landroidx/compose/ui/graphics/vector/PathNode;", "horizontalEllipseRadius", "", "verticalEllipseRadius", "theta", "isMoreThanHalf", "", "isPositiveArc", "arcStartX", "arcStartY", "(FFFZZFF)V", "getArcStartX", "()F", "getArcStartY", "getHorizontalEllipseRadius", "()Z", "getTheta", "getVerticalEllipseRadius", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "", "hashCode", "", "toString", "", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class ArcTo extends PathNode {
        private final float arcStartX;
        private final float arcStartY;
        private final float horizontalEllipseRadius;
        private final boolean isMoreThanHalf;
        private final boolean isPositiveArc;
        private final float theta;
        private final float verticalEllipseRadius;

        public static /* synthetic */ ArcTo copy$default(ArcTo arcTo, float f, float f2, float f3, boolean z, boolean z2, float f4, float f5, int i, Object obj) {
            if ((i & 1) != 0) {
                f = arcTo.horizontalEllipseRadius;
            }
            if ((i & 2) != 0) {
                f2 = arcTo.verticalEllipseRadius;
            }
            float f6 = f2;
            if ((i & 4) != 0) {
                f3 = arcTo.theta;
            }
            float f7 = f3;
            if ((i & 8) != 0) {
                z = arcTo.isMoreThanHalf;
            }
            boolean z3 = z;
            if ((i & 16) != 0) {
                z2 = arcTo.isPositiveArc;
            }
            boolean z4 = z2;
            if ((i & 32) != 0) {
                f4 = arcTo.arcStartX;
            }
            float f8 = f4;
            if ((i & 64) != 0) {
                f5 = arcTo.arcStartY;
            }
            return arcTo.copy(f, f6, f7, z3, z4, f8, f5);
        }

        /* renamed from: component1, reason: from getter */
        public final float getHorizontalEllipseRadius() {
            return this.horizontalEllipseRadius;
        }

        /* renamed from: component2, reason: from getter */
        public final float getVerticalEllipseRadius() {
            return this.verticalEllipseRadius;
        }

        /* renamed from: component3, reason: from getter */
        public final float getTheta() {
            return this.theta;
        }

        /* renamed from: component4, reason: from getter */
        public final boolean getIsMoreThanHalf() {
            return this.isMoreThanHalf;
        }

        /* renamed from: component5, reason: from getter */
        public final boolean getIsPositiveArc() {
            return this.isPositiveArc;
        }

        /* renamed from: component6, reason: from getter */
        public final float getArcStartX() {
            return this.arcStartX;
        }

        /* renamed from: component7, reason: from getter */
        public final float getArcStartY() {
            return this.arcStartY;
        }

        public final ArcTo copy(float horizontalEllipseRadius, float verticalEllipseRadius, float theta, boolean isMoreThanHalf, boolean isPositiveArc, float arcStartX, float arcStartY) {
            return new ArcTo(horizontalEllipseRadius, verticalEllipseRadius, theta, isMoreThanHalf, isPositiveArc, arcStartX, arcStartY);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ArcTo)) {
                return false;
            }
            ArcTo arcTo = (ArcTo) other;
            return Float.compare(this.horizontalEllipseRadius, arcTo.horizontalEllipseRadius) == 0 && Float.compare(this.verticalEllipseRadius, arcTo.verticalEllipseRadius) == 0 && Float.compare(this.theta, arcTo.theta) == 0 && this.isMoreThanHalf == arcTo.isMoreThanHalf && this.isPositiveArc == arcTo.isPositiveArc && Float.compare(this.arcStartX, arcTo.arcStartX) == 0 && Float.compare(this.arcStartY, arcTo.arcStartY) == 0;
        }

        public final float getArcStartX() {
            return this.arcStartX;
        }

        public final float getArcStartY() {
            return this.arcStartY;
        }

        public final float getHorizontalEllipseRadius() {
            return this.horizontalEllipseRadius;
        }

        public final float getTheta() {
            return this.theta;
        }

        public final float getVerticalEllipseRadius() {
            return this.verticalEllipseRadius;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((Float.hashCode(this.horizontalEllipseRadius) * 31) + Float.hashCode(this.verticalEllipseRadius)) * 31) + Float.hashCode(this.theta)) * 31;
            boolean z = this.isMoreThanHalf;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode + i) * 31;
            boolean z2 = this.isPositiveArc;
            return ((((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + Float.hashCode(this.arcStartX)) * 31) + Float.hashCode(this.arcStartY);
        }

        public final boolean isMoreThanHalf() {
            return this.isMoreThanHalf;
        }

        public final boolean isPositiveArc() {
            return this.isPositiveArc;
        }

        public String toString() {
            return "ArcTo(horizontalEllipseRadius=" + this.horizontalEllipseRadius + ", verticalEllipseRadius=" + this.verticalEllipseRadius + ", theta=" + this.theta + ", isMoreThanHalf=" + this.isMoreThanHalf + ", isPositiveArc=" + this.isPositiveArc + ", arcStartX=" + this.arcStartX + ", arcStartY=" + this.arcStartY + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ArcTo(float r4, float r5, float r6, boolean r7, boolean r8, float r9, float r10) {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                r3.horizontalEllipseRadius = r4
                r3.verticalEllipseRadius = r5
                r3.theta = r6
                r3.isMoreThanHalf = r7
                r3.isPositiveArc = r8
                r3.arcStartX = r9
                r3.arcStartY = r10
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathNode.ArcTo.<init>(float, float, float, boolean, boolean, float, float):void");
        }
    }
}
