package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.PinnableContainer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutPinnableItem.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010)\u001a\u00020*J\b\u0010+\u001a\u00020\u0002H\u0016J\b\u0010,\u001a\u00020*H\u0016R/\u0010\n\u001a\u0004\u0018\u00010\u00012\b\u0010\t\u001a\u0004\u0018\u00010\u00018B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00118V@VX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR/\u0010\u001b\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u00028B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b \u0010\u0010\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR(\u0010\"\u001a\u0004\u0018\u00010\u00012\b\u0010!\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b#\u0010\f\"\u0004\b$\u0010\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010%\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00118B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b(\u0010\u0018\u001a\u0004\b&\u0010\u0014\"\u0004\b'\u0010\u0016¨\u0006-"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;", "Landroidx/compose/ui/layout/PinnableContainer;", "Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;", "key", "", "pinnedItemList", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;)V", "<set-?>", "_parentPinnableContainer", "get_parentPinnableContainer", "()Landroidx/compose/ui/layout/PinnableContainer;", "set_parentPinnableContainer", "(Landroidx/compose/ui/layout/PinnableContainer;)V", "_parentPinnableContainer$delegate", "Landroidx/compose/runtime/MutableState;", "", "index", "getIndex", "()I", "setIndex", "(I)V", "index$delegate", "Landroidx/compose/runtime/MutableIntState;", "getKey", "()Ljava/lang/Object;", "parentHandle", "getParentHandle", "()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;", "setParentHandle", "(Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;)V", "parentHandle$delegate", "value", "parentPinnableContainer", "getParentPinnableContainer", "setParentPinnableContainer", "pinsCount", "getPinsCount", "setPinsCount", "pinsCount$delegate", "onDisposed", "", "pin", "release", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class LazyLayoutPinnableItem implements PinnableContainer, PinnableContainer.PinnedHandle, LazyLayoutPinnedItemList.PinnedItem {

    /* renamed from: _parentPinnableContainer$delegate, reason: from kotlin metadata */
    private final MutableState _parentPinnableContainer;

    /* renamed from: index$delegate, reason: from kotlin metadata */
    private final MutableIntState index;
    private final Object key;

    /* renamed from: parentHandle$delegate, reason: from kotlin metadata */
    private final MutableState parentHandle;
    private final LazyLayoutPinnedItemList pinnedItemList;

    /* renamed from: pinsCount$delegate, reason: from kotlin metadata */
    private final MutableIntState pinsCount;

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList.PinnedItem
    public Object getKey() {
        return this.key;
    }

    public LazyLayoutPinnableItem(Object obj, LazyLayoutPinnedItemList pinnedItemList) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(pinnedItemList, "pinnedItemList");
        this.key = obj;
        this.pinnedItemList = pinnedItemList;
        this.index = SnapshotIntStateKt.mutableIntStateOf(-1);
        this.pinsCount = SnapshotIntStateKt.mutableIntStateOf(0);
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.parentHandle = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this._parentPinnableContainer = mutableStateOf$default2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList.PinnedItem
    public int getIndex() {
        return this.index.getIntValue();
    }

    private final int getPinsCount() {
        return this.pinsCount.getIntValue();
    }

    private final PinnableContainer.PinnedHandle getParentHandle() {
        return (PinnableContainer.PinnedHandle) this.parentHandle.getValue();
    }

    private final PinnableContainer get_parentPinnableContainer() {
        return (PinnableContainer) this._parentPinnableContainer.getValue();
    }

    public final PinnableContainer getParentPinnableContainer() {
        return get_parentPinnableContainer();
    }

    public final void setParentPinnableContainer(PinnableContainer pinnableContainer) {
        Snapshot createNonObservableSnapshot = Snapshot.INSTANCE.createNonObservableSnapshot();
        try {
            Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
            try {
                if (pinnableContainer != get_parentPinnableContainer()) {
                    set_parentPinnableContainer(pinnableContainer);
                    if (getPinsCount() > 0) {
                        PinnableContainer.PinnedHandle parentHandle = getParentHandle();
                        if (parentHandle != null) {
                            parentHandle.release();
                        }
                        setParentHandle(pinnableContainer != null ? pinnableContainer.pin() : null);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } finally {
                createNonObservableSnapshot.restoreCurrent(makeCurrent);
            }
        } finally {
            createNonObservableSnapshot.dispose();
        }
    }

    @Override // androidx.compose.ui.layout.PinnableContainer
    public PinnableContainer.PinnedHandle pin() {
        if (getPinsCount() == 0) {
            this.pinnedItemList.pin$foundation_release(this);
            PinnableContainer parentPinnableContainer = getParentPinnableContainer();
            setParentHandle(parentPinnableContainer != null ? parentPinnableContainer.pin() : null);
        }
        setPinsCount(getPinsCount() + 1);
        return this;
    }

    @Override // androidx.compose.ui.layout.PinnableContainer.PinnedHandle
    public void release() {
        if (getPinsCount() <= 0) {
            throw new IllegalStateException("Release should only be called once".toString());
        }
        setPinsCount(getPinsCount() - 1);
        if (getPinsCount() == 0) {
            this.pinnedItemList.release$foundation_release(this);
            PinnableContainer.PinnedHandle parentHandle = getParentHandle();
            if (parentHandle != null) {
                parentHandle.release();
            }
            setParentHandle(null);
        }
    }

    public final void onDisposed() {
        int pinsCount = getPinsCount();
        for (int i = 0; i < pinsCount; i++) {
            release();
        }
    }

    public void setIndex(int i) {
        this.index.setIntValue(i);
    }

    private final void setPinsCount(int i) {
        this.pinsCount.setIntValue(i);
    }

    private final void setParentHandle(PinnableContainer.PinnedHandle pinnedHandle) {
        this.parentHandle.setValue(pinnedHandle);
    }

    private final void set_parentPinnableContainer(PinnableContainer pinnableContainer) {
        this._parentPinnableContainer.setValue(pinnableContainer);
    }
}
