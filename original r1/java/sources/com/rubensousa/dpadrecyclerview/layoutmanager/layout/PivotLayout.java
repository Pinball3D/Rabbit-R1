package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadLoopDirection;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.OnChildLaidOutListener;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import com.rubensousa.dpadrecyclerview.layoutmanager.PivotSelector;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.grid.GridLayoutEngineer;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.linear.LinearLayoutEngineer;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.LayoutScroller;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PivotLayout.kt */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000 F2\u00020\u0001:\u0003EFGB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u001fJ\b\u0010\"\u001a\u00020\u001dH\u0002J\u001c\u0010#\u001a\u00020\u001f2\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010'\u001a\u00020(H\u0002J\u0016\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010J\u001e\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010J\u0016\u0010/\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010J\u001a\u00100\u001a\u00020\u001f2\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010'\u001a\u00020(J\u000e\u00101\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020(J\u0010\u00102\u001a\u00020\u001f2\b\u0010'\u001a\u0004\u0018\u000103J\u0006\u00104\u001a\u000203J$\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010'\u001a\u00020(H\u0002J\u000e\u00107\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0018J\u0006\u00108\u001a\u00020\u001fJ\u001c\u00109\u001a\u00020\u001f2\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010'\u001a\u00020(H\u0002J\b\u0010:\u001a\u00020\u001fH\u0002J$\u0010;\u001a\u00020\u00102\u0006\u0010<\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010'\u001a\u00020(H\u0002J\"\u0010=\u001a\u00020\u00102\u0006\u0010>\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010'\u001a\u00020(J\"\u0010?\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00102\n\u0010$\u001a\u00060%R\u00020&2\u0006\u0010'\u001a\u00020(J\u0010\u0010A\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u001bJ\u0006\u0010B\u001a\u00020\u001fJ\f\u0010C\u001a\u00020D*\u00020(H\u0002R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\u0012\u001a\u00060\u0013R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006H"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "pivotSelector", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;", "scroller", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "anchor", "", "Ljava/lang/Integer;", "childLayoutListener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;", "itemChanges", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;", "layoutCompleteListeners", "Ljava/util/ArrayList;", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnLayoutCompletedListener;", "Lkotlin/collections/ArrayList;", "layoutListener", "Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;", "structureEngineer", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;", "addOnLayoutCompletedListener", "", "listener", "clearOnLayoutCompletedListeners", "createStructureEngineer", "layoutChildren", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "onItemsAdded", "positionStart", "itemCount", "onItemsMoved", "from", "to", "onItemsRemoved", "onLayoutChildren", "onLayoutCompleted", "onRestoreInstanceState", "Landroid/os/Parcelable;", "onSaveInstanceState", "preLayoutChildren", "pivotPosition", "removeOnLayoutCompletedListener", "reset", "restoreAnchorState", "saveAnchorState", "scrollBy", "offset", "scrollHorizontallyBy", "dx", "scrollVerticallyBy", "dy", "setOnChildLaidOutListener", "updateStructure", "asString", "", "ChildLayoutListener", "Companion", "SavedState", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PivotLayout {
    public static final String TAG = "PivotLayout";
    private Integer anchor;
    private final ChildLayoutListener childLayoutListener;
    private final LayoutConfiguration configuration;
    private final ItemChanges itemChanges;
    private final LayoutAlignment layoutAlignment;
    private final ArrayList<DpadRecyclerView.OnLayoutCompletedListener> layoutCompleteListeners;
    private final LayoutInfo layoutInfo;
    private OnChildLaidOutListener layoutListener;
    private final RecyclerView.LayoutManager layoutManager;
    private final PivotSelector pivotSelector;
    private final LayoutScroller scroller;
    private StructureEngineer structureEngineer;

    public final void setOnChildLaidOutListener(OnChildLaidOutListener listener) {
        this.layoutListener = listener;
    }

    public PivotLayout(RecyclerView.LayoutManager layoutManager, LayoutAlignment layoutAlignment, LayoutConfiguration configuration, PivotSelector pivotSelector, LayoutScroller scroller, LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutAlignment, "layoutAlignment");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(pivotSelector, "pivotSelector");
        Intrinsics.checkNotNullParameter(scroller, "scroller");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutManager = layoutManager;
        this.layoutAlignment = layoutAlignment;
        this.configuration = configuration;
        this.pivotSelector = pivotSelector;
        this.scroller = scroller;
        this.layoutInfo = layoutInfo;
        this.childLayoutListener = new ChildLayoutListener();
        this.structureEngineer = createStructureEngineer();
        this.layoutCompleteListeners = new ArrayList<>();
        this.itemChanges = new ItemChanges();
    }

    public final void updateStructure() {
        this.structureEngineer = createStructureEngineer();
        reset();
    }

    private final StructureEngineer createStructureEngineer() {
        if (this.configuration.getSpanCount() > 1) {
            return new GridLayoutEngineer(this.layoutManager, this.layoutInfo, this.layoutAlignment, this.childLayoutListener);
        }
        return new LinearLayoutEngineer(this.layoutManager, this.layoutInfo, this.layoutAlignment, this.childLayoutListener);
    }

    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "OnLayoutChildren: " + asString(state));
        }
        this.layoutInfo.setLayoutInProgress();
        if (state.getItemCount() == 0 || !this.configuration.getIsLayoutEnabled()) {
            this.layoutManager.removeAndRecycleAllViews(recycler);
            reset();
            return;
        }
        this.pivotSelector.consumePendingSelectionChanges(state);
        this.structureEngineer.onLayoutStarted(state);
        if (state.isPreLayout()) {
            preLayoutChildren(this.pivotSelector.getPosition(), recycler, state);
        } else {
            layoutChildren(recycler, state);
        }
    }

    private final void preLayoutChildren(int pivotPosition, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.layoutManager.getChildCount() == 0) {
            return;
        }
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "PreLayoutStart: " + asString(state));
            this.structureEngineer.logChildren();
        }
        this.structureEngineer.preLayoutChildren(pivotPosition, recycler, state);
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "PreLayoutFinished");
            this.structureEngineer.logChildren();
        }
    }

    private final void layoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "LayoutStart for pivot " + this.pivotSelector.getPosition() + ": " + asString(state));
            this.structureEngineer.logChildren();
        }
        if (this.configuration.getKeepLayoutAnchor()) {
            saveAnchorState();
        }
        this.structureEngineer.layoutChildren(this.pivotSelector.getPosition(), this.itemChanges, recycler, state);
        if (this.configuration.getKeepLayoutAnchor()) {
            restoreAnchorState(recycler, state);
        }
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "LayoutFinished");
            this.structureEngineer.logChildren();
        }
        this.structureEngineer.onLayoutFinished();
    }

    private final void saveAnchorState() {
        int findLastVisiblePosition;
        Integer valueOf;
        if (!this.layoutInfo.shouldReverseLayout()) {
            findLastVisiblePosition = this.layoutInfo.findFirstVisiblePosition();
        } else {
            findLastVisiblePosition = this.layoutInfo.findLastVisiblePosition();
        }
        if (findLastVisiblePosition == -1) {
            return;
        }
        PivotSelector.update$default(this.pivotSelector, findLastVisiblePosition, 0, 2, null);
        View findViewByPosition = this.layoutInfo.findViewByPosition(findLastVisiblePosition);
        if (findViewByPosition != null) {
            if (!this.layoutInfo.shouldReverseLayout()) {
                valueOf = Integer.valueOf(this.layoutInfo.getDecoratedStart(findViewByPosition));
            } else {
                valueOf = Integer.valueOf(this.layoutInfo.getDecoratedEnd(findViewByPosition));
            }
            this.anchor = valueOf;
        }
    }

    private final void restoreAnchorState(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View findViewByPosition;
        int decoratedEnd;
        Integer num = this.anchor;
        if (num != null) {
            int intValue = num.intValue();
            if (this.pivotSelector.getPosition() != -1 && (findViewByPosition = this.layoutInfo.findViewByPosition(this.pivotSelector.getPosition())) != null) {
                if (!this.layoutInfo.shouldReverseLayout()) {
                    decoratedEnd = this.layoutInfo.getDecoratedStart(findViewByPosition);
                } else {
                    decoratedEnd = this.layoutInfo.getDecoratedEnd(findViewByPosition);
                }
                scrollBy(decoratedEnd - intValue, recycler, state);
            }
            this.anchor = null;
        }
    }

    public final void reset() {
        this.structureEngineer.clear();
    }

    public final void onItemsAdded(int positionStart, int itemCount) {
        this.itemChanges.setInsertionPosition(positionStart);
        this.itemChanges.setInsertionItemCount(itemCount);
    }

    public final void onItemsRemoved(int positionStart, int itemCount) {
        this.itemChanges.setRemovalPosition(positionStart);
        this.itemChanges.setRemovalItemCount(itemCount);
    }

    public final void onItemsMoved(int from, int to, int itemCount) {
        this.itemChanges.setMoveFromPosition(from);
        this.itemChanges.setMoveToPosition(to);
        this.itemChanges.setMoveItemCount(itemCount);
    }

    public final void onLayoutCompleted(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.itemChanges.reset();
        this.layoutInfo.onLayoutCompleted();
        Iterator<T> it = this.layoutCompleteListeners.iterator();
        while (it.hasNext()) {
            ((DpadRecyclerView.OnLayoutCompletedListener) it.next()).onLayoutCompleted(state);
        }
    }

    public final void addOnLayoutCompletedListener(DpadRecyclerView.OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.layoutCompleteListeners.add(listener);
    }

    public final void removeOnLayoutCompletedListener(DpadRecyclerView.OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.layoutCompleteListeners.remove(listener);
    }

    public final void clearOnLayoutCompletedListeners() {
        this.layoutCompleteListeners.clear();
    }

    public final int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.configuration.isVertical()) {
            return 0;
        }
        return scrollBy(dx, recycler, state);
    }

    public final int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.configuration.isHorizontal()) {
            return 0;
        }
        return scrollBy(dy, recycler, state);
    }

    public final Parcelable onSaveInstanceState() {
        return new SavedState(this.pivotSelector.getPosition(), this.layoutInfo.getIsLoopingStart(), this.layoutInfo.getIsLoopingAllowed(), this.layoutInfo.getConfiguration().getLoopDirection());
    }

    public final void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            SavedState savedState = (SavedState) state;
            PivotSelector.update$default(this.pivotSelector, savedState.getSelectedPosition(), 0, 2, null);
            this.layoutInfo.updateLoopingState(savedState.isLoopingStart(), savedState.isLoopingAllowed());
            this.layoutInfo.getConfiguration().setLoopDirection(savedState.getLoopDirection());
            if (savedState.getSelectedPosition() != -1) {
                this.pivotSelector.setSelectionUpdatePending();
                this.layoutManager.requestLayout();
            }
        }
    }

    private final int scrollBy(int offset, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() == 0 || offset == 0 || !this.configuration.getIsLayoutEnabled()) {
            return 0;
        }
        return this.structureEngineer.scrollBy(this.layoutAlignment.getCappedScroll(offset), recycler, state, true);
    }

    private final String asString(RecyclerView.State state) {
        int remainingScrollHorizontal;
        if (this.layoutInfo.isVertical()) {
            remainingScrollHorizontal = state.getRemainingScrollVertical();
        } else {
            remainingScrollHorizontal = state.getRemainingScrollHorizontal();
        }
        return "itemCount=" + state.getItemCount() + ", didStructureChange=" + state.didStructureChange() + ", remainingScroll=" + remainingScrollHorizontal + ", predictiveAnimations=" + state.willRunPredictiveAnimations();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PivotLayout.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0082\b\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J\t\u0010\u0015\u001a\u00020\u000bHÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\b\u0010\u0017\u001a\u00020\u0006H\u0016J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0006H\u0016R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\rR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\""}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "selectedPosition", "", "isLoopingStart", "", "isLoopingAllowed", "loopDirection", "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "(IZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V", "()Z", "getLoopDirection", "()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "getSelectedPosition", "()I", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "flags", "CREATOR", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class SavedState implements Parcelable {

        /* renamed from: CREATOR, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean isLoopingAllowed;
        private final boolean isLoopingStart;
        private final DpadLoopDirection loopDirection;
        private final int selectedPosition;

        public static /* synthetic */ SavedState copy$default(SavedState savedState, int i, boolean z, boolean z2, DpadLoopDirection dpadLoopDirection, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = savedState.selectedPosition;
            }
            if ((i2 & 2) != 0) {
                z = savedState.isLoopingStart;
            }
            if ((i2 & 4) != 0) {
                z2 = savedState.isLoopingAllowed;
            }
            if ((i2 & 8) != 0) {
                dpadLoopDirection = savedState.loopDirection;
            }
            return savedState.copy(i, z, z2, dpadLoopDirection);
        }

        /* renamed from: component1, reason: from getter */
        public final int getSelectedPosition() {
            return this.selectedPosition;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getIsLoopingStart() {
            return this.isLoopingStart;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getIsLoopingAllowed() {
            return this.isLoopingAllowed;
        }

        /* renamed from: component4, reason: from getter */
        public final DpadLoopDirection getLoopDirection() {
            return this.loopDirection;
        }

        public final SavedState copy(int selectedPosition, boolean isLoopingStart, boolean isLoopingAllowed, DpadLoopDirection loopDirection) {
            Intrinsics.checkNotNullParameter(loopDirection, "loopDirection");
            return new SavedState(selectedPosition, isLoopingStart, isLoopingAllowed, loopDirection);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SavedState)) {
                return false;
            }
            SavedState savedState = (SavedState) other;
            return this.selectedPosition == savedState.selectedPosition && this.isLoopingStart == savedState.isLoopingStart && this.isLoopingAllowed == savedState.isLoopingAllowed && this.loopDirection == savedState.loopDirection;
        }

        public final DpadLoopDirection getLoopDirection() {
            return this.loopDirection;
        }

        public final int getSelectedPosition() {
            return this.selectedPosition;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.selectedPosition) * 31) + Boolean.hashCode(this.isLoopingStart)) * 31) + Boolean.hashCode(this.isLoopingAllowed)) * 31) + this.loopDirection.hashCode();
        }

        public final boolean isLoopingAllowed() {
            return this.isLoopingAllowed;
        }

        public final boolean isLoopingStart() {
            return this.isLoopingStart;
        }

        public String toString() {
            return "SavedState(selectedPosition=" + this.selectedPosition + ", isLoopingStart=" + this.isLoopingStart + ", isLoopingAllowed=" + this.isLoopingAllowed + ", loopDirection=" + this.loopDirection + ')';
        }

        public SavedState(int i, boolean z, boolean z2, DpadLoopDirection loopDirection) {
            Intrinsics.checkNotNullParameter(loopDirection, "loopDirection");
            this.selectedPosition = i;
            this.isLoopingStart = z;
            this.isLoopingAllowed = z2;
            this.loopDirection = loopDirection;
        }

        /* compiled from: PivotLayout.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$SavedState;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        /* renamed from: com.rubensousa.dpadrecyclerview.layoutmanager.layout.PivotLayout$SavedState$CREATOR, reason: from kotlin metadata */
        /* loaded from: classes3.dex */
        public static final class Companion implements Parcelable.Creator<SavedState> {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public SavedState(Parcel parcel) {
            this(parcel.readInt(), parcel.readByte() == 1, parcel.readByte() == 1, DpadLoopDirection.values()[parcel.readInt()]);
            Intrinsics.checkNotNullParameter(parcel, "parcel");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            parcel.writeInt(this.selectedPosition);
            parcel.writeByte(this.isLoopingStart ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isLoopingAllowed ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.loopDirection.ordinal());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PivotLayout.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)V", "onBlockLaidOut", "", "onChildCreated", "view", "Landroid/view/View;", "onChildLaidOut", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class ChildLayoutListener implements OnChildLayoutListener {
        public ChildLayoutListener() {
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.OnChildLayoutListener
        public void onChildCreated(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            PivotLayout.this.scroller.onChildCreated(view);
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.OnChildLayoutListener
        public void onChildLaidOut(View view) {
            RecyclerView.ViewHolder childViewHolder;
            Intrinsics.checkNotNullParameter(view, "view");
            PivotLayout.this.scroller.onChildLaidOut(view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
            DpadLayoutParams dpadLayoutParams = (DpadLayoutParams) layoutParams;
            if (!PivotLayout.this.scroller.isSearchingPivot() && !view.hasFocus() && dpadLayoutParams.getAbsoluteAdapterPosition() == PivotLayout.this.pivotSelector.getPosition()) {
                LayoutScroller.scrollToSelectedPosition$default(PivotLayout.this.scroller, PivotLayout.this.configuration.getIsSmoothFocusChangesEnabled(), false, 2, null);
            }
            OnChildLaidOutListener onChildLaidOutListener = PivotLayout.this.layoutListener;
            if (onChildLaidOutListener != null) {
                PivotLayout pivotLayout = PivotLayout.this;
                RecyclerView recyclerView = pivotLayout.layoutInfo.getRecyclerView();
                if (recyclerView == null || (childViewHolder = pivotLayout.layoutInfo.getChildViewHolder(view)) == null) {
                    return;
                }
                onChildLaidOutListener.onChildLaidOut(recyclerView, childViewHolder);
            }
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.OnChildLayoutListener
        public void onBlockLaidOut() {
            PivotLayout.this.scroller.onBlockLaidOut();
        }
    }
}
