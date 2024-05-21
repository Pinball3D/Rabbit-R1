package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Effects.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001e\u0012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016R\u001f\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/DisposableEffectImpl;", "Landroidx/compose/runtime/RememberObserver;", "effect", "Lkotlin/Function1;", "Landroidx/compose/runtime/DisposableEffectScope;", "Landroidx/compose/runtime/DisposableEffectResult;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "onDispose", "onAbandoned", "", "onForgotten", "onRemembered", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DisposableEffectImpl implements RememberObserver {
    private final Function1<DisposableEffectScope, DisposableEffectResult> effect;
    private DisposableEffectResult onDispose;

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DisposableEffectImpl(Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> effect) {
        Intrinsics.checkNotNullParameter(effect, "effect");
        this.effect = effect;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        DisposableEffectScope disposableEffectScope;
        Function1<DisposableEffectScope, DisposableEffectResult> function1 = this.effect;
        disposableEffectScope = EffectsKt.InternalDisposableEffectScope;
        this.onDispose = function1.invoke(disposableEffectScope);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        DisposableEffectResult disposableEffectResult = this.onDispose;
        if (disposableEffectResult != null) {
            disposableEffectResult.dispose();
        }
        this.onDispose = null;
    }
}
