package com.rubensousa.dpadrecyclerview.layoutmanager;

import android.util.Log;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.DpadViewHolder;
import com.rubensousa.dpadrecyclerview.OnViewHolderSelectedListener;
import com.rubensousa.dpadrecyclerview.SubPositionAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PivotSelector.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0000\u0018\u0000 >2\u00020\u0001:\u0001>B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0017J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\nH\u0002J\u0006\u0010 \u001a\u00020\u001cJ\u0006\u0010!\u001a\u00020\u001cJ\u0018\u0010\"\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nH\u0002J\u000e\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u001cJ\u0006\u0010'\u001a\u00020\u001cJ\u0006\u0010(\u001a\u00020\u001cJ\u0006\u0010)\u001a\u00020\nJ\b\u0010*\u001a\u00020\bH\u0002J\u0016\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010-\u001a\u00020\u001cJ\u001e\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u0016\u00101\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u000e\u00102\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020%J\u0006\u00103\u001a\u00020\u001cJ\u000e\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\bJ\u000e\u00106\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0017J\u0006\u00107\u001a\u00020\u001cJ\u0010\u00108\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u00109\u001a\u00020\u001c2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0006\u0010:\u001a\u00020\u001cJ\u0018\u0010;\u001a\u00020\b2\u0006\u0010<\u001a\u00020\n2\b\b\u0002\u0010=\u001a\u00020\nR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\b\u0012\u0004\u0012\u00020\u0017`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\r¨\u0006?"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "isSelectionUpdatePending", "", "<set-?>", "", "position", "getPosition", "()I", "positionOffset", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "requestLayoutRunnable", "Ljava/lang/Runnable;", "selectedViewHolder", "Lcom/rubensousa/dpadrecyclerview/DpadViewHolder;", "selectionListeners", "Ljava/util/ArrayList;", "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;", "Lkotlin/collections/ArrayList;", "subPosition", "getSubPosition", "addOnViewHolderSelectedListener", "", "listener", "applyPositionOffset", "itemCount", "clear", "clearOnViewHolderSelectedListeners", "constrainPivotPosition", "consumePendingSelectionChanges", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "disablePositionOffset", "dispatchViewHolderSelected", "dispatchViewHolderSelectedAndAligned", "getCurrentSubPositions", "hasSelectionListeners", "onItemsAdded", "positionStart", "onItemsChanged", "onItemsMoved", "fromPosition", "toPosition", "onItemsRemoved", "onLayoutChildren", "onLayoutCompleted", "removeCurrentViewHolderSelection", "clearSelection", "removeOnViewHolderSelectedListener", "resetPositionOffset", "scheduleNewLayout", "setRecyclerView", "setSelectionUpdatePending", "update", "newPosition", "newSubPosition", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PivotSelector {
    public static final int OFFSET_DISABLED = Integer.MIN_VALUE;
    private boolean isSelectionUpdatePending;
    private final LayoutInfo layoutInfo;
    private final RecyclerView.LayoutManager layoutManager;
    private int position;
    private int positionOffset;
    private RecyclerView recyclerView;
    private final Runnable requestLayoutRunnable;
    private DpadViewHolder selectedViewHolder;
    private final ArrayList<OnViewHolderSelectedListener> selectionListeners;
    private int subPosition;

    public final void disablePositionOffset() {
        this.positionOffset = Integer.MIN_VALUE;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int getSubPosition() {
        return this.subPosition;
    }

    public final void resetPositionOffset() {
        this.positionOffset = 0;
    }

    public final void setRecyclerView(RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
    }

    public final void setSelectionUpdatePending() {
        this.isSelectionUpdatePending = true;
    }

    public PivotSelector(RecyclerView.LayoutManager layoutManager, LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutManager = layoutManager;
        this.layoutInfo = layoutInfo;
        this.position = -1;
        this.selectionListeners = new ArrayList<>();
        this.requestLayoutRunnable = new Runnable() { // from class: com.rubensousa.dpadrecyclerview.layoutmanager.PivotSelector$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PivotSelector.requestLayoutRunnable$lambda$0(PivotSelector.this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestLayoutRunnable$lambda$0(PivotSelector this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.layoutManager.requestLayout();
    }

    public static /* synthetic */ boolean update$default(PivotSelector pivotSelector, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return pivotSelector.update(i, i2);
    }

    public final boolean update(int newPosition, int newSubPosition) {
        int i = this.position;
        int i2 = this.subPosition;
        int constrainPivotPosition = constrainPivotPosition(newPosition, this.layoutManager.getItemCount());
        this.position = constrainPivotPosition;
        this.subPosition = newSubPosition;
        return (constrainPivotPosition == i && newSubPosition == i2) ? false : true;
    }

    public final boolean consumePendingSelectionChanges(RecyclerView.State state) {
        boolean z;
        Intrinsics.checkNotNullParameter(state, "state");
        int i = this.position;
        if (i != -1 && this.positionOffset != Integer.MIN_VALUE) {
            applyPositionOffset(state.getItemCount());
            this.subPosition = 0;
            z = true;
        } else {
            this.position = constrainPivotPosition(i, state.getItemCount());
            z = false;
        }
        this.positionOffset = 0;
        return z;
    }

    private final void applyPositionOffset(int itemCount) {
        int i = this.position;
        int constrainPivotPosition = constrainPivotPosition(this.positionOffset + i, itemCount);
        this.position = constrainPivotPosition;
        if (constrainPivotPosition != i) {
            setSelectionUpdatePending();
        }
    }

    private final int constrainPivotPosition(int position, int itemCount) {
        if (itemCount == 0) {
            return -1;
        }
        return Math.max(0, Math.min(itemCount - 1, position));
    }

    public final void onLayoutChildren(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (state.getItemCount() == 0) {
            this.isSelectionUpdatePending = this.position != -1;
            this.position = -1;
            this.subPosition = 0;
        } else if (this.position >= state.getItemCount()) {
            this.position = state.getItemCount() - 1;
            this.subPosition = 0;
        } else {
            if (this.position != -1 || state.getItemCount() <= 0) {
                return;
            }
            this.position = 0;
            this.positionOffset = 0;
            setSelectionUpdatePending();
        }
    }

    public final void onLayoutCompleted() {
        if (this.isSelectionUpdatePending) {
            this.isSelectionUpdatePending = false;
            dispatchViewHolderSelected();
            dispatchViewHolderSelectedAndAligned();
        }
    }

    public final int getCurrentSubPositions() {
        List<SubPositionAlignment> subPositionAlignments;
        DpadViewHolder dpadViewHolder = this.selectedViewHolder;
        if (dpadViewHolder == null || (subPositionAlignments = dpadViewHolder.getSubPositionAlignments()) == null) {
            return 0;
        }
        return subPositionAlignments.size();
    }

    public final void onItemsAdded(int positionStart, int itemCount) {
        int i;
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(DpadRecyclerView.TAG, "onItemsAdded: " + itemCount + ", positionStart: " + positionStart + ", totalItems: " + this.layoutManager.getItemCount());
        }
        int i2 = this.position;
        if (i2 == -1 || (i = this.positionOffset) == Integer.MIN_VALUE || positionStart > i2 + i) {
            return;
        }
        this.positionOffset = i + itemCount;
    }

    public final void onItemsChanged() {
        resetPositionOffset();
    }

    public final void onItemsRemoved(int positionStart, int itemCount) {
        int i;
        int i2;
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(DpadRecyclerView.TAG, "onItemsRemoved: " + itemCount + ", positionStart: " + positionStart + ", totalItems: " + this.layoutManager.getItemCount());
        }
        int i3 = this.position;
        if (i3 == -1 || (i = this.positionOffset) == Integer.MIN_VALUE || positionStart > (i2 = i3 + i)) {
            return;
        }
        if (positionStart + itemCount <= i2) {
            this.positionOffset = i - itemCount;
            return;
        }
        this.positionOffset = i + (positionStart - i2);
        applyPositionOffset(this.layoutManager.getItemCount());
        this.positionOffset = Integer.MIN_VALUE;
        setSelectionUpdatePending();
    }

    public final void onItemsMoved(int fromPosition, int toPosition, int itemCount) {
        int i;
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(DpadRecyclerView.TAG, "onItemsMoved " + itemCount + " fromPosition " + fromPosition + ", toPosition: " + toPosition + ", totalItems: " + this.layoutManager.getItemCount());
        }
        int i2 = this.position;
        if (i2 == -1 || (i = this.positionOffset) == Integer.MIN_VALUE) {
            return;
        }
        int i3 = i2 + i;
        if (fromPosition <= i3 && i3 < fromPosition + itemCount) {
            this.positionOffset = i + (toPosition - fromPosition);
            return;
        }
        if (fromPosition < i3 && toPosition > i3 - itemCount) {
            this.positionOffset = i - itemCount;
        } else {
            if (fromPosition <= i3 || toPosition >= i3) {
                return;
            }
            this.positionOffset = i + itemCount;
        }
    }

    public final void clear() {
        boolean z = this.position != -1;
        this.position = -1;
        this.positionOffset = 0;
        if (z) {
            dispatchViewHolderSelected();
            dispatchViewHolderSelectedAndAligned();
        }
    }

    public final void dispatchViewHolderSelected() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            return;
        }
        int i = this.position;
        View findViewByPosition = i == -1 ? null : this.layoutInfo.findViewByPosition(i);
        RecyclerView.ViewHolder childViewHolder = findViewByPosition != null ? recyclerView.getChildViewHolder(findViewByPosition) : null;
        DpadViewHolder dpadViewHolder = this.selectedViewHolder;
        if (childViewHolder != dpadViewHolder) {
            if (dpadViewHolder != null) {
                dpadViewHolder.onViewHolderDeselected();
            }
            if (childViewHolder instanceof DpadViewHolder) {
                DpadViewHolder dpadViewHolder2 = (DpadViewHolder) childViewHolder;
                this.selectedViewHolder = dpadViewHolder2;
                dpadViewHolder2.onViewHolderSelected();
            } else {
                this.selectedViewHolder = null;
            }
        }
        if (hasSelectionListeners()) {
            if (childViewHolder != null) {
                Iterator<T> it = this.selectionListeners.iterator();
                while (it.hasNext()) {
                    ((OnViewHolderSelectedListener) it.next()).onViewHolderSelected(recyclerView, childViewHolder, this.position, this.subPosition);
                }
            } else {
                Iterator<T> it2 = this.selectionListeners.iterator();
                while (it2.hasNext()) {
                    ((OnViewHolderSelectedListener) it2.next()).onViewHolderSelected(recyclerView, null, -1, 0);
                }
            }
            if (this.layoutInfo.getIsLayoutInProgress() || recyclerView.isLayoutRequested()) {
                return;
            }
            int childCount = this.layoutInfo.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.layoutInfo.getChildAt(i2);
                if (childAt != null && childAt.isLayoutRequested()) {
                    scheduleNewLayout(recyclerView);
                    return;
                }
            }
        }
    }

    public final void dispatchViewHolderSelectedAndAligned() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            return;
        }
        int i = this.position;
        View findViewByPosition = i == -1 ? null : this.layoutInfo.findViewByPosition(i);
        RecyclerView.ViewHolder childViewHolder = findViewByPosition != null ? recyclerView.getChildViewHolder(findViewByPosition) : null;
        if (childViewHolder instanceof DpadViewHolder) {
            ((DpadViewHolder) childViewHolder).onViewHolderSelectedAndAligned();
        }
        if (hasSelectionListeners()) {
            if (childViewHolder != null) {
                Iterator<T> it = this.selectionListeners.iterator();
                while (it.hasNext()) {
                    ((OnViewHolderSelectedListener) it.next()).onViewHolderSelectedAndAligned(recyclerView, childViewHolder, this.position, this.subPosition);
                }
            } else {
                Iterator<T> it2 = this.selectionListeners.iterator();
                while (it2.hasNext()) {
                    ((OnViewHolderSelectedListener) it2.next()).onViewHolderSelectedAndAligned(recyclerView, null, -1, 0);
                }
            }
        }
    }

    public final void addOnViewHolderSelectedListener(OnViewHolderSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.selectionListeners.add(listener);
    }

    public final void removeOnViewHolderSelectedListener(OnViewHolderSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.selectionListeners.remove(listener);
    }

    public final void clearOnViewHolderSelectedListeners() {
        this.selectionListeners.clear();
    }

    public final void removeCurrentViewHolderSelection(boolean clearSelection) {
        if (clearSelection) {
            this.position = 0;
            this.positionOffset = 0;
        }
        DpadViewHolder dpadViewHolder = this.selectedViewHolder;
        if (dpadViewHolder != null) {
            dpadViewHolder.onViewHolderDeselected();
        }
        this.selectedViewHolder = null;
    }

    private final void scheduleNewLayout(RecyclerView recyclerView) {
        ViewCompat.postOnAnimation(recyclerView, this.requestLayoutRunnable);
    }

    private final boolean hasSelectionListeners() {
        return !this.selectionListeners.isEmpty();
    }
}
