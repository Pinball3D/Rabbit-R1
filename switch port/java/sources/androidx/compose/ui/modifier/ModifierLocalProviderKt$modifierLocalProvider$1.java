package androidx.compose.ui.modifier;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ModifierLocalProvider.kt */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00028\u00008VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"androidx/compose/ui/modifier/ModifierLocalProviderKt$modifierLocalProvider$1", "Landroidx/compose/ui/modifier/ModifierLocalProvider;", "Landroidx/compose/ui/platform/InspectorValueInfo;", "key", "Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "getKey", "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "value", "getValue", "()Ljava/lang/Object;", "value$delegate", "Landroidx/compose/runtime/State;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ModifierLocalProviderKt$modifierLocalProvider$1<T> extends InspectorValueInfo implements ModifierLocalProvider<T> {
    private final ProvidableModifierLocal<T> key;

    /* renamed from: value$delegate, reason: from kotlin metadata */
    private final State value;

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    public ProvidableModifierLocal<T> getKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModifierLocalProviderKt$modifierLocalProvider$1(ProvidableModifierLocal<T> providableModifierLocal, Function0<? extends T> function0, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.key = providableModifierLocal;
        this.value = SnapshotStateKt.derivedStateOf(function0);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    public T getValue() {
        return (T) this.value.getValue();
    }
}
