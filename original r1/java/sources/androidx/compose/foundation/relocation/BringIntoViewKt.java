package androidx.compose.foundation.relocation;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: BringIntoView.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u001c\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"ModifierLocalBringIntoViewParent", "Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "Landroidx/compose/foundation/relocation/BringIntoViewParent;", "getModifierLocalBringIntoViewParent", "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BringIntoViewKt {
    private static final ProvidableModifierLocal<BringIntoViewParent> ModifierLocalBringIntoViewParent = ModifierLocalKt.modifierLocalOf(new Function0<BringIntoViewParent>() { // from class: androidx.compose.foundation.relocation.BringIntoViewKt$ModifierLocalBringIntoViewParent$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final BringIntoViewParent invoke() {
            return null;
        }
    });

    public static final ProvidableModifierLocal<BringIntoViewParent> getModifierLocalBringIntoViewParent() {
        return ModifierLocalBringIntoViewParent;
    }
}
