package androidx.compose.material.icons;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Icons.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a-\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0017\u0010\b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\b\u000bH\u0086\bø\u0001\u0000\u001aT\u0010\f\u001a\u00020\n*\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\u00012\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\t¢\u0006\u0002\b\u000bH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0014\u0010\u0015\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u0082\u0002\u0012\n\u0005\b\u009920\u0001\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"MaterialIconDimension", "", "getMaterialIconDimension$annotations", "()V", "materialIcon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "name", "", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;", "Lkotlin/ExtensionFunctionType;", "materialPath", "fillAlpha", "strokeAlpha", "pathFillType", "Landroidx/compose/ui/graphics/PathFillType;", "pathBuilder", "Landroidx/compose/ui/graphics/vector/PathBuilder;", "", "materialPath-YwgOQQI", "(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;FFILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;", "material-icons-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IconsKt {
    public static final float MaterialIconDimension = 24.0f;

    public static /* synthetic */ void getMaterialIconDimension$annotations() {
    }

    public static final ImageVector materialIcon(String name, Function1<? super ImageVector.Builder, ImageVector.Builder> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(new ImageVector.Builder(name, Dp.m4883constructorimpl(24.0f), Dp.m4883constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, false, 224, null)).build();
    }

    /* renamed from: materialPath-YwgOQQI$default, reason: not valid java name */
    public static /* synthetic */ ImageVector.Builder m965materialPathYwgOQQI$default(ImageVector.Builder materialPath, float f, float f2, int i, Function1 pathBuilder, int i2, Object obj) {
        ImageVector.Builder m3264addPathoIyEayM;
        float f3 = (i2 & 1) != 0 ? 1.0f : f;
        float f4 = (i2 & 2) != 0 ? 1.0f : f2;
        int defaultFillType = (i2 & 4) != 0 ? VectorKt.getDefaultFillType() : i;
        Intrinsics.checkNotNullParameter(materialPath, "$this$materialPath");
        Intrinsics.checkNotNullParameter(pathBuilder, "pathBuilder");
        SolidColor solidColor = new SolidColor(Color.INSTANCE.m2665getBlack0d7_KjU(), null);
        int m2985getButtKaPHkGw = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        int m2995getBevelLxFBmk8 = StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder.invoke(pathBuilder2);
        m3264addPathoIyEayM = materialPath.m3264addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : f3, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : f4, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m2985getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m2995getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        return m3264addPathoIyEayM;
    }

    /* renamed from: materialPath-YwgOQQI, reason: not valid java name */
    public static final ImageVector.Builder m964materialPathYwgOQQI(ImageVector.Builder materialPath, float f, float f2, int i, Function1<? super PathBuilder, Unit> pathBuilder) {
        ImageVector.Builder m3264addPathoIyEayM;
        Intrinsics.checkNotNullParameter(materialPath, "$this$materialPath");
        Intrinsics.checkNotNullParameter(pathBuilder, "pathBuilder");
        SolidColor solidColor = new SolidColor(Color.INSTANCE.m2665getBlack0d7_KjU(), null);
        int m2985getButtKaPHkGw = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        int m2995getBevelLxFBmk8 = StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder.invoke(pathBuilder2);
        m3264addPathoIyEayM = materialPath.m3264addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : i, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : f2, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m2985getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m2995getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        return m3264addPathoIyEayM;
    }
}
