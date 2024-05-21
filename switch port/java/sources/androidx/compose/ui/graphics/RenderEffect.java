package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AndroidRenderEffect.android.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\u0006\u001a\u00020\u0004H%J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0001\u0003\t\n\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/graphics/RenderEffect;", "", "()V", "internalRenderEffect", "Landroid/graphics/RenderEffect;", "asAndroidRenderEffect", "createRenderEffect", "isSupported", "", "Landroidx/compose/ui/graphics/AndroidRenderEffect;", "Landroidx/compose/ui/graphics/BlurEffect;", "Landroidx/compose/ui/graphics/OffsetEffect;", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class RenderEffect {
    private android.graphics.RenderEffect internalRenderEffect;

    public /* synthetic */ RenderEffect(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    protected abstract android.graphics.RenderEffect createRenderEffect();

    public boolean isSupported() {
        return true;
    }

    private RenderEffect() {
    }

    public final android.graphics.RenderEffect asAndroidRenderEffect() {
        android.graphics.RenderEffect renderEffect = this.internalRenderEffect;
        if (renderEffect != null) {
            return renderEffect;
        }
        android.graphics.RenderEffect createRenderEffect = createRenderEffect();
        this.internalRenderEffect = createRenderEffect;
        return createRenderEffect;
    }
}
