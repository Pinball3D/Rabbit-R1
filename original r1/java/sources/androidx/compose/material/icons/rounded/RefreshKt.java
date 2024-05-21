package androidx.compose.material.icons.rounded;

import androidx.compose.material.icons.Icons;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import com.google.common.net.HttpHeaders;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Refresh.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_refresh", "Landroidx/compose/ui/graphics/vector/ImageVector;", HttpHeaders.REFRESH, "Landroidx/compose/material/icons/Icons$Rounded;", "getRefresh", "(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RefreshKt {
    private static ImageVector _refresh;

    public static final ImageVector getRefresh(Icons.Rounded rounded) {
        ImageVector.Builder m3264addPathoIyEayM;
        Intrinsics.checkNotNullParameter(rounded, "<this>");
        ImageVector imageVector = _refresh;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Rounded.Refresh", Dp.m4883constructorimpl(24.0f), Dp.m4883constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, false, 224, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.INSTANCE.m2665getBlack0d7_KjU(), null);
        int m2985getButtKaPHkGw = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        int m2995getBevelLxFBmk8 = StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(17.65f, 6.35f);
        pathBuilder.curveToRelative(-1.63f, -1.63f, -3.94f, -2.57f, -6.48f, -2.31f);
        pathBuilder.curveToRelative(-3.67f, 0.37f, -6.69f, 3.35f, -7.1f, 7.02f);
        pathBuilder.curveTo(3.52f, 15.91f, 7.27f, 20.0f, 12.0f, 20.0f);
        pathBuilder.curveToRelative(3.19f, 0.0f, 5.93f, -1.87f, 7.21f, -4.56f);
        pathBuilder.curveToRelative(0.32f, -0.67f, -0.16f, -1.44f, -0.9f, -1.44f);
        pathBuilder.curveToRelative(-0.37f, 0.0f, -0.72f, 0.2f, -0.88f, 0.53f);
        pathBuilder.curveToRelative(-1.13f, 2.43f, -3.84f, 3.97f, -6.8f, 3.31f);
        pathBuilder.curveToRelative(-2.22f, -0.49f, -4.01f, -2.3f, -4.48f, -4.52f);
        pathBuilder.curveTo(5.31f, 9.44f, 8.26f, 6.0f, 12.0f, 6.0f);
        pathBuilder.curveToRelative(1.66f, 0.0f, 3.14f, 0.69f, 4.22f, 1.78f);
        pathBuilder.lineToRelative(-1.51f, 1.51f);
        pathBuilder.curveToRelative(-0.63f, 0.63f, -0.19f, 1.71f, 0.7f, 1.71f);
        pathBuilder.horizontalLineTo(19.0f);
        pathBuilder.curveToRelative(0.55f, 0.0f, 1.0f, -0.45f, 1.0f, -1.0f);
        pathBuilder.verticalLineTo(6.41f);
        pathBuilder.curveToRelative(0.0f, -0.89f, -1.08f, -1.34f, -1.71f, -0.71f);
        pathBuilder.lineToRelative(-0.64f, 0.65f);
        pathBuilder.close();
        m3264addPathoIyEayM = builder.m3264addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m2985getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m2995getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m3264addPathoIyEayM.build();
        _refresh = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
