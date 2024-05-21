package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Shadow.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, d2 = {"lerp", "Landroidx/compose/ui/graphics/Shadow;", "start", "stop", "fraction", "", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ShadowKt {
    public static final Shadow lerp(Shadow start, Shadow stop, float f) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new Shadow(ColorKt.m2690lerpjxsXWHM(start.getColor(), stop.getColor(), f), OffsetKt.m2423lerpWko1d7g(start.getOffset(), stop.getOffset(), f), MathHelpersKt.lerp(start.getBlurRadius(), stop.getBlurRadius(), f), null);
    }
}
