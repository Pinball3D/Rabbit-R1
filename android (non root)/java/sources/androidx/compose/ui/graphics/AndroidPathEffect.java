package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPathEffect.android.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/AndroidPathEffect;", "Landroidx/compose/ui/graphics/PathEffect;", "nativePathEffect", "Landroid/graphics/PathEffect;", "(Landroid/graphics/PathEffect;)V", "getNativePathEffect", "()Landroid/graphics/PathEffect;", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidPathEffect implements PathEffect {
    private final android.graphics.PathEffect nativePathEffect;

    public final android.graphics.PathEffect getNativePathEffect() {
        return this.nativePathEffect;
    }

    public AndroidPathEffect(android.graphics.PathEffect nativePathEffect) {
        Intrinsics.checkNotNullParameter(nativePathEffect, "nativePathEffect");
        this.nativePathEffect = nativePathEffect;
    }
}
