package androidx.compose.material.icons.outlined;

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

/* compiled from: Build.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_build", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Build", "Landroidx/compose/material/icons/Icons$Outlined;", "getBuild", "(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BuildKt {
    private static ImageVector _build;

    public static final ImageVector getBuild(Icons.Outlined outlined) {
        ImageVector.Builder m3264addPathoIyEayM;
        Intrinsics.checkNotNullParameter(outlined, "<this>");
        ImageVector imageVector = _build;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.Build", Dp.m4883constructorimpl(24.0f), Dp.m4883constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, false, 224, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.INSTANCE.m2665getBlack0d7_KjU(), null);
        int m2985getButtKaPHkGw = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        int m2995getBevelLxFBmk8 = StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(22.61f, 18.99f);
        pathBuilder.lineToRelative(-9.08f, -9.08f);
        pathBuilder.curveToRelative(0.93f, -2.34f, 0.45f, -5.1f, -1.44f, -7.0f);
        pathBuilder.curveTo(9.79f, 0.61f, 6.21f, 0.4f, 3.66f, 2.26f);
        pathBuilder.lineTo(7.5f, 6.11f);
        pathBuilder.lineTo(6.08f, 7.52f);
        pathBuilder.lineTo(2.25f, 3.69f);
        pathBuilder.curveTo(0.39f, 6.23f, 0.6f, 9.82f, 2.9f, 12.11f);
        pathBuilder.curveToRelative(1.86f, 1.86f, 4.57f, 2.35f, 6.89f, 1.48f);
        pathBuilder.lineToRelative(9.11f, 9.11f);
        pathBuilder.curveToRelative(0.39f, 0.39f, 1.02f, 0.39f, 1.41f, 0.0f);
        pathBuilder.lineToRelative(2.3f, -2.3f);
        pathBuilder.curveToRelative(0.4f, -0.38f, 0.4f, -1.01f, 0.0f, -1.41f);
        pathBuilder.close();
        pathBuilder.moveTo(19.61f, 20.59f);
        pathBuilder.lineToRelative(-9.46f, -9.46f);
        pathBuilder.curveToRelative(-0.61f, 0.45f, -1.29f, 0.72f, -2.0f, 0.82f);
        pathBuilder.curveToRelative(-1.36f, 0.2f, -2.79f, -0.21f, -3.83f, -1.25f);
        pathBuilder.curveTo(3.37f, 9.76f, 2.93f, 8.5f, 3.0f, 7.26f);
        pathBuilder.lineToRelative(3.09f, 3.09f);
        pathBuilder.lineToRelative(4.24f, -4.24f);
        pathBuilder.lineToRelative(-3.09f, -3.09f);
        pathBuilder.curveToRelative(1.24f, -0.07f, 2.49f, 0.37f, 3.44f, 1.31f);
        pathBuilder.curveToRelative(1.08f, 1.08f, 1.49f, 2.57f, 1.24f, 3.96f);
        pathBuilder.curveToRelative(-0.12f, 0.71f, -0.42f, 1.37f, -0.88f, 1.96f);
        pathBuilder.lineToRelative(9.45f, 9.45f);
        pathBuilder.lineToRelative(-0.88f, 0.89f);
        pathBuilder.close();
        m3264addPathoIyEayM = builder.m3264addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m2985getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m2995getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m3264addPathoIyEayM.build();
        _build = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
