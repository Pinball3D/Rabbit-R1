package androidx.compose.ui.platform;

import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DisposableSaveableStateRegistry.android.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0096\u0001J\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\rH\u0096\u0001J\u0006\u0010\u000e\u001a\u00020\u0005J\u001d\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00110\u0010H\u0096\u0001J!\u0010\u0012\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\r2\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0004H\u0096\u0001R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;", "Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "saveableStateRegistry", "onDispose", "Lkotlin/Function0;", "", "(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Lkotlin/jvm/functions/Function0;)V", "canBeSaved", "", "value", "", "consumeRestored", "key", "", "dispose", "performSave", "", "", "registerProvider", "Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;", "valueProvider", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DisposableSaveableStateRegistry implements SaveableStateRegistry {
    private final /* synthetic */ SaveableStateRegistry $$delegate_0;
    private final Function0<Unit> onDispose;

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean canBeSaved(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.$$delegate_0.canBeSaved(value);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Object consumeRestored(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.$$delegate_0.consumeRestored(key);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Map<String, List<Object>> performSave() {
        return this.$$delegate_0.performSave();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public SaveableStateRegistry.Entry registerProvider(String key, Function0<? extends Object> valueProvider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(valueProvider, "valueProvider");
        return this.$$delegate_0.registerProvider(key, valueProvider);
    }

    public DisposableSaveableStateRegistry(SaveableStateRegistry saveableStateRegistry, Function0<Unit> onDispose) {
        Intrinsics.checkNotNullParameter(saveableStateRegistry, "saveableStateRegistry");
        Intrinsics.checkNotNullParameter(onDispose, "onDispose");
        this.onDispose = onDispose;
        this.$$delegate_0 = saveableStateRegistry;
    }

    public final void dispose() {
        this.onDispose.invoke();
    }
}
