package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageVector.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u009c\u0001\b\u0000\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\f\u0012\b\b\u0002\u0010\u0016\u001a\u00020\f\u0012\b\b\u0002\u0010\u0017\u001a\u00020\fø\u0001\u0000¢\u0006\u0002\u0010\u0018J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0096\u0002J\b\u00101\u001a\u000202H\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001c\u0010\u0007\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u0013\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u0011\u0010\u000e\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001cR\u001c\u0010\u0010\u001a\u00020\u0011ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010#\u001a\u0004\b&\u0010\"R\u001c\u0010\u0012\u001a\u00020\u0013ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010#\u001a\u0004\b'\u0010\"R\u0011\u0010\u0014\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001cR\u0011\u0010\u000f\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001cR\u0011\u0010\u0016\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001cR\u0011\u0010\u0017\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001cR\u0011\u0010\u0015\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001c\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00063"}, d2 = {"Landroidx/compose/ui/graphics/vector/VectorPath;", "Landroidx/compose/ui/graphics/vector/VectorNode;", "name", "", "pathData", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "pathFillType", "Landroidx/compose/ui/graphics/PathFillType;", "fill", "Landroidx/compose/ui/graphics/Brush;", "fillAlpha", "", "stroke", "strokeAlpha", "strokeLineWidth", "strokeLineCap", "Landroidx/compose/ui/graphics/StrokeCap;", "strokeLineJoin", "Landroidx/compose/ui/graphics/StrokeJoin;", "strokeLineMiter", "trimPathStart", "trimPathEnd", "trimPathOffset", "(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getFill", "()Landroidx/compose/ui/graphics/Brush;", "getFillAlpha", "()F", "getName", "()Ljava/lang/String;", "getPathData", "()Ljava/util/List;", "getPathFillType-Rg-k1Os", "()I", "I", "getStroke", "getStrokeAlpha", "getStrokeLineCap-KaPHkGw", "getStrokeLineJoin-LxFBmk8", "getStrokeLineMiter", "getStrokeLineWidth", "getTrimPathEnd", "getTrimPathOffset", "getTrimPathStart", "equals", "", "other", "", "hashCode", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorPath extends VectorNode {
    public static final int $stable = 0;
    private final Brush fill;
    private final float fillAlpha;
    private final String name;
    private final List<PathNode> pathData;
    private final int pathFillType;
    private final Brush stroke;
    private final float strokeAlpha;
    private final int strokeLineCap;
    private final int strokeLineJoin;
    private final float strokeLineMiter;
    private final float strokeLineWidth;
    private final float trimPathEnd;
    private final float trimPathOffset;
    private final float trimPathStart;

    public /* synthetic */ VectorPath(String str, List list, int i, Brush brush, float f, Brush brush2, float f2, float f3, int i2, int i3, float f4, float f5, float f6, float f7, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, i, brush, f, brush2, f2, f3, i2, i3, f4, f5, f6, f7);
    }

    public final Brush getFill() {
        return this.fill;
    }

    public final float getFillAlpha() {
        return this.fillAlpha;
    }

    public final String getName() {
        return this.name;
    }

    public final List<PathNode> getPathData() {
        return this.pathData;
    }

    /* renamed from: getPathFillType-Rg-k1Os, reason: not valid java name and from getter */
    public final int getPathFillType() {
        return this.pathFillType;
    }

    public final Brush getStroke() {
        return this.stroke;
    }

    public final float getStrokeAlpha() {
        return this.strokeAlpha;
    }

    /* renamed from: getStrokeLineCap-KaPHkGw, reason: not valid java name and from getter */
    public final int getStrokeLineCap() {
        return this.strokeLineCap;
    }

    /* renamed from: getStrokeLineJoin-LxFBmk8, reason: not valid java name and from getter */
    public final int getStrokeLineJoin() {
        return this.strokeLineJoin;
    }

    public final float getStrokeLineMiter() {
        return this.strokeLineMiter;
    }

    public final float getStrokeLineWidth() {
        return this.strokeLineWidth;
    }

    public final float getTrimPathEnd() {
        return this.trimPathEnd;
    }

    public final float getTrimPathOffset() {
        return this.trimPathOffset;
    }

    public final float getTrimPathStart() {
        return this.trimPathStart;
    }

    public /* synthetic */ VectorPath(String str, List list, int i, Brush brush, float f, Brush brush2, float f2, float f3, int i2, int i3, float f4, float f5, float f6, float f7, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? "" : str, list, i, (i4 & 8) != 0 ? null : brush, (i4 & 16) != 0 ? 1.0f : f, (i4 & 32) != 0 ? null : brush2, (i4 & 64) != 0 ? 1.0f : f2, (i4 & 128) != 0 ? 0.0f : f3, (i4 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : i2, (i4 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : i3, (i4 & 1024) != 0 ? 4.0f : f4, (i4 & 2048) != 0 ? 0.0f : f5, (i4 & 4096) != 0 ? 1.0f : f6, (i4 & 8192) != 0 ? 0.0f : f7, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    private VectorPath(String name, List<? extends PathNode> pathData, int i, Brush brush, float f, Brush brush2, float f2, float f3, int i2, int i3, float f4, float f5, float f6, float f7) {
        super(null);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        this.name = name;
        this.pathData = pathData;
        this.pathFillType = i;
        this.fill = brush;
        this.fillAlpha = f;
        this.stroke = brush2;
        this.strokeAlpha = f2;
        this.strokeLineWidth = f3;
        this.strokeLineCap = i2;
        this.strokeLineJoin = i3;
        this.strokeLineMiter = f4;
        this.trimPathStart = f5;
        this.trimPathEnd = f6;
        this.trimPathOffset = f7;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && getClass() == other.getClass()) {
            VectorPath vectorPath = (VectorPath) other;
            return Intrinsics.areEqual(this.name, vectorPath.name) && Intrinsics.areEqual(this.fill, vectorPath.fill) && this.fillAlpha == vectorPath.fillAlpha && Intrinsics.areEqual(this.stroke, vectorPath.stroke) && this.strokeAlpha == vectorPath.strokeAlpha && this.strokeLineWidth == vectorPath.strokeLineWidth && StrokeCap.m2981equalsimpl0(this.strokeLineCap, vectorPath.strokeLineCap) && StrokeJoin.m2991equalsimpl0(this.strokeLineJoin, vectorPath.strokeLineJoin) && this.strokeLineMiter == vectorPath.strokeLineMiter && this.trimPathStart == vectorPath.trimPathStart && this.trimPathEnd == vectorPath.trimPathEnd && this.trimPathOffset == vectorPath.trimPathOffset && PathFillType.m2911equalsimpl0(this.pathFillType, vectorPath.pathFillType) && Intrinsics.areEqual(this.pathData, vectorPath.pathData);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.name.hashCode() * 31) + this.pathData.hashCode()) * 31;
        Brush brush = this.fill;
        int hashCode2 = (((hashCode + (brush != null ? brush.hashCode() : 0)) * 31) + Float.hashCode(this.fillAlpha)) * 31;
        Brush brush2 = this.stroke;
        return ((((((((((((((((((hashCode2 + (brush2 != null ? brush2.hashCode() : 0)) * 31) + Float.hashCode(this.strokeAlpha)) * 31) + Float.hashCode(this.strokeLineWidth)) * 31) + StrokeCap.m2982hashCodeimpl(this.strokeLineCap)) * 31) + StrokeJoin.m2992hashCodeimpl(this.strokeLineJoin)) * 31) + Float.hashCode(this.strokeLineMiter)) * 31) + Float.hashCode(this.trimPathStart)) * 31) + Float.hashCode(this.trimPathEnd)) * 31) + Float.hashCode(this.trimPathOffset)) * 31) + PathFillType.m2912hashCodeimpl(this.pathFillType);
    }
}
