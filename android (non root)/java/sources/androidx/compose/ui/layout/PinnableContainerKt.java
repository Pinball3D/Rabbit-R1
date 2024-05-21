package androidx.compose.ui.layout;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: PinnableContainer.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0019\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"LocalPinnableContainer", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/ui/layout/PinnableContainer;", "getLocalPinnableContainer", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PinnableContainerKt {
    private static final ProvidableCompositionLocal<PinnableContainer> LocalPinnableContainer = CompositionLocalKt.compositionLocalOf$default(null, new Function0<PinnableContainer>() { // from class: androidx.compose.ui.layout.PinnableContainerKt$LocalPinnableContainer$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final PinnableContainer invoke() {
            return null;
        }
    }, 1, null);

    public static final ProvidableCompositionLocal<PinnableContainer> getLocalPinnableContainer() {
        return LocalPinnableContainer;
    }
}
