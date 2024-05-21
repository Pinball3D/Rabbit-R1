package androidx.compose.material.icons.filled;

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

/* compiled from: Call.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_call", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Call", "Landroidx/compose/material/icons/Icons$Filled;", "getCall", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CallKt {
    private static ImageVector _call;

    public static final ImageVector getCall(Icons.Filled filled) {
        ImageVector.Builder m3264addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _call;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.Call", Dp.m4883constructorimpl(24.0f), Dp.m4883constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, false, 224, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.INSTANCE.m2665getBlack0d7_KjU(), null);
        int m2985getButtKaPHkGw = StrokeCap.INSTANCE.m2985getButtKaPHkGw();
        int m2995getBevelLxFBmk8 = StrokeJoin.INSTANCE.m2995getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(20.01f, 15.38f);
        pathBuilder.curveToRelative(-1.23f, 0.0f, -2.42f, -0.2f, -3.53f, -0.56f);
        pathBuilder.curveToRelative(-0.35f, -0.12f, -0.74f, -0.03f, -1.01f, 0.24f);
        pathBuilder.lineToRelative(-1.57f, 1.97f);
        pathBuilder.curveToRelative(-2.83f, -1.35f, -5.48f, -3.9f, -6.89f, -6.83f);
        pathBuilder.lineToRelative(1.95f, -1.66f);
        pathBuilder.curveToRelative(0.27f, -0.28f, 0.35f, -0.67f, 0.24f, -1.02f);
        pathBuilder.curveToRelative(-0.37f, -1.11f, -0.56f, -2.3f, -0.56f, -3.53f);
        pathBuilder.curveToRelative(0.0f, -0.54f, -0.45f, -0.99f, -0.99f, -0.99f);
        pathBuilder.horizontalLineTo(4.19f);
        pathBuilder.curveTo(3.65f, 3.0f, 3.0f, 3.24f, 3.0f, 3.99f);
        pathBuilder.curveTo(3.0f, 13.28f, 10.73f, 21.0f, 20.01f, 21.0f);
        pathBuilder.curveToRelative(0.71f, 0.0f, 0.99f, -0.63f, 0.99f, -1.18f);
        pathBuilder.verticalLineToRelative(-3.45f);
        pathBuilder.curveToRelative(0.0f, -0.54f, -0.45f, -0.99f, -0.99f, -0.99f);
        pathBuilder.close();
        m3264addPathoIyEayM = builder.m3264addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m2985getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m2995getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m3264addPathoIyEayM.build();
        _call = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
