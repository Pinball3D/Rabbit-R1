package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Effects.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/DisposableEffectScope;", "", "()V", "onDispose", "Landroidx/compose/runtime/DisposableEffectResult;", "onDisposeEffect", "Lkotlin/Function0;", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DisposableEffectScope {
    public static final int $stable = 0;

    public final DisposableEffectResult onDispose(final Function0<Unit> onDisposeEffect) {
        Intrinsics.checkNotNullParameter(onDisposeEffect, "onDisposeEffect");
        return new DisposableEffectResult() { // from class: androidx.compose.runtime.DisposableEffectScope$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                onDisposeEffect.invoke();
            }
        };
    }
}
