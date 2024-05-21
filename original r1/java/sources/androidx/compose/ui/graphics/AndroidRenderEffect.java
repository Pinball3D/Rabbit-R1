package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidRenderEffect.android.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\u0003H\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/AndroidRenderEffect;", "Landroidx/compose/ui/graphics/RenderEffect;", "androidRenderEffect", "Landroid/graphics/RenderEffect;", "(Landroid/graphics/RenderEffect;)V", "getAndroidRenderEffect", "()Landroid/graphics/RenderEffect;", "createRenderEffect", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidRenderEffect extends RenderEffect {
    private final android.graphics.RenderEffect androidRenderEffect;

    @Override // androidx.compose.ui.graphics.RenderEffect
    /* renamed from: createRenderEffect, reason: from getter */
    protected android.graphics.RenderEffect getAndroidRenderEffect() {
        return this.androidRenderEffect;
    }

    public final android.graphics.RenderEffect getAndroidRenderEffect() {
        return this.androidRenderEffect;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRenderEffect(android.graphics.RenderEffect androidRenderEffect) {
        super(null);
        Intrinsics.checkNotNullParameter(androidRenderEffect, "androidRenderEffect");
        this.androidRenderEffect = androidRenderEffect;
    }
}
