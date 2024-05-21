package androidx.compose.foundation.gestures;

import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0002X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;", "Landroidx/compose/ui/modifier/ModifierLocalProvider;", "", "()V", "key", "Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "getKey", "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "value", "getValue", "()Ljava/lang/Boolean;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ModifierLocalScrollableContainerProvider implements ModifierLocalProvider<Boolean> {
    public static final ModifierLocalScrollableContainerProvider INSTANCE = new ModifierLocalScrollableContainerProvider();
    private static final ProvidableModifierLocal<Boolean> key = ScrollableKt.getModifierLocalScrollableContainer();
    private static final boolean value = true;

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    public ProvidableModifierLocal<Boolean> getKey() {
        return key;
    }

    private ModifierLocalScrollableContainerProvider() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    public Boolean getValue() {
        return Boolean.valueOf(value);
    }
}
