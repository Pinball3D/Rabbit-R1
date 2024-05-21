package androidx.compose.material.icons.twotone;

import androidx.compose.material.icons.Icons;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Star.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_star", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Star", "Landroidx/compose/material/icons/Icons$TwoTone;", "getStar", "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StarKt {
    private static ImageVector _star;

    public static final ImageVector getStar(Icons.TwoTone twoTone) {
        ImageVector.Builder m3264addPathoIyEayM;
        Intrinsics.checkNotNullParameter(twoTone, "<this>");
        ImageVector imageVector = _star;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("TwoTone.Star", Dp.m4883constructorimpl(24.0f), Dp.m4883constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, false, 224, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.INSTANCE.m2665getBlack0d7_KjU(), null);
        int m2985getButtKaPHkGw = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        int m2995getBevelLxFBmk8 = StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(12.0f, 15.4f);
        pathBuilder.lineToRelative(-3.76f, 2.27f);
        pathBuilder.lineToRelative(1.0f, -4.28f);
        pathBuilder.lineToRelative(-3.32f, -2.88f);
        pathBuilder.lineToRelative(4.38f, -0.38f);
        pathBuilder.lineToRelative(1.7f, -4.03f);
        pathBuilder.lineToRelative(1.71f, 4.04f);
        pathBuilder.lineToRelative(4.38f, 0.38f);
        pathBuilder.lineToRelative(-3.32f, 2.88f);
        pathBuilder.lineToRelative(1.0f, 4.28f);
        pathBuilder.close();
        builder.m3264addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 0.3f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 0.3f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m2985getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m2995getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType2 = VectorKt.getDefaultFillType();
        SolidColor solidColor2 = new SolidColor(Color.INSTANCE.m2665getBlack0d7_KjU(), null);
        int m2985getButtKaPHkGw2 = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        int m2995getBevelLxFBmk82 = StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder2.moveTo(22.0f, 9.24f);
        pathBuilder2.lineToRelative(-7.19f, -0.62f);
        pathBuilder2.lineTo(12.0f, 2.0f);
        pathBuilder2.lineTo(9.19f, 8.63f);
        pathBuilder2.lineTo(2.0f, 9.24f);
        pathBuilder2.lineToRelative(5.46f, 4.73f);
        pathBuilder2.lineTo(5.82f, 21.0f);
        pathBuilder2.lineTo(12.0f, 17.27f);
        pathBuilder2.lineTo(18.18f, 21.0f);
        pathBuilder2.lineToRelative(-1.63f, -7.03f);
        pathBuilder2.lineTo(22.0f, 9.24f);
        pathBuilder2.close();
        pathBuilder2.moveTo(12.0f, 15.4f);
        pathBuilder2.lineToRelative(-3.76f, 2.27f);
        pathBuilder2.lineToRelative(1.0f, -4.28f);
        pathBuilder2.lineToRelative(-3.32f, -2.88f);
        pathBuilder2.lineToRelative(4.38f, -0.38f);
        pathBuilder2.lineTo(12.0f, 6.1f);
        pathBuilder2.lineToRelative(1.71f, 4.04f);
        pathBuilder2.lineToRelative(4.38f, 0.38f);
        pathBuilder2.lineToRelative(-3.32f, 2.88f);
        pathBuilder2.lineToRelative(1.0f, 4.28f);
        pathBuilder2.lineTo(12.0f, 15.4f);
        pathBuilder2.close();
        m3264addPathoIyEayM = builder.m3264addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType2, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor2, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m2985getButtKaPHkGw2, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m2995getBevelLxFBmk82, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m3264addPathoIyEayM.build();
        _star = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
