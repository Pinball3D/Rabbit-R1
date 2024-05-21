package androidx.compose.ui.layout;

import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Landroidx/compose/ui/layout/NoOpSubcomposeSlotReusePolicy;", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "()V", "areCompatible", "", "slotId", "", "reusableSlotId", "getSlotsToRetain", "", "slotIds", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class NoOpSubcomposeSlotReusePolicy implements SubcomposeSlotReusePolicy {
    public static final NoOpSubcomposeSlotReusePolicy INSTANCE = new NoOpSubcomposeSlotReusePolicy();

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean areCompatible(Object slotId, Object reusableSlotId) {
        return false;
    }

    private NoOpSubcomposeSlotReusePolicy() {
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(SubcomposeSlotReusePolicy.SlotIdsSet slotIds) {
        Intrinsics.checkNotNullParameter(slotIds, "slotIds");
        slotIds.clear();
    }
}
