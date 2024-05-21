package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidRenderEffect.android.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"asComposeRenderEffect", "Landroidx/compose/ui/graphics/RenderEffect;", "Landroid/graphics/RenderEffect;", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidRenderEffect_androidKt {
    public static final RenderEffect asComposeRenderEffect(android.graphics.RenderEffect renderEffect) {
        Intrinsics.checkNotNullParameter(renderEffect, "<this>");
        return new AndroidRenderEffect(renderEffect);
    }
}
