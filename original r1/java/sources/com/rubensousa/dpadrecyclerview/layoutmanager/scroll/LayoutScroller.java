package com.rubensousa.dpadrecyclerview.layoutmanager.scroll;

import android.media.AudioManager;
import android.util.Log;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import com.rubensousa.dpadrecyclerview.layoutmanager.PivotSelector;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.focus.FocusDirection;
import com.rubensousa.dpadrecyclerview.layoutmanager.focus.SpanFocusFinder;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.PivotSelectionSmoothScroller;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.SearchPivotSmoothScroller;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutScroller.kt */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 L2\u00020\u0001:\u0004LMNOB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u000e\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%J\u0018\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u00162\b\b\u0002\u0010(\u001a\u00020\u0016J\u0006\u0010)\u001a\u00020*J\u0012\u0010+\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001b\u001a\u00020,H\u0002J\u000e\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020/J\u0018\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020%H\u0002J\u0006\u00104\u001a\u00020\u0016J\u0006\u00105\u001a\u00020*J\u000e\u00106\u001a\u00020*2\u0006\u00103\u001a\u00020%J\u000e\u00107\u001a\u00020*2\u0006\u00103\u001a\u00020%J*\u00108\u001a\u00020*2\u0006\u00103\u001a\u00020%2\b\u00109\u001a\u0004\u0018\u00010%2\u0006\u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u0016H\u0002J\u0018\u0010<\u001a\u00020*2\u0006\u0010'\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0018\u0010=\u001a\u00020*2\u0006\u0010>\u001a\u0002022\u0006\u0010;\u001a\u00020\u0016H\u0002J\u0018\u0010?\u001a\u00020*2\u0006\u00101\u001a\u0002022\b\b\u0002\u0010@\u001a\u000202J\u001e\u0010?\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u0010@\u001a\u0002022\u0006\u0010;\u001a\u00020\u0016J\u0018\u0010A\u001a\u00020*2\u0006\u0010;\u001a\u00020\u00162\b\b\u0002\u0010B\u001a\u00020\u0016J*\u0010C\u001a\u00020*2\b\u00103\u001a\u0004\u0018\u00010%2\b\u00109\u001a\u0004\u0018\u00010%2\u0006\u0010;\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0016J\u0010\u0010D\u001a\u00020*2\b\u0010E\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010F\u001a\u00020*2\u0006\u0010G\u001a\u00020HJ(\u0010I\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u0010@\u001a\u0002022\u0006\u00103\u001a\u00020%2\u0006\u0010;\u001a\u00020\u0016H\u0002J\u0018\u0010J\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u0010@\u001a\u000202H\u0002J\b\u0010K\u001a\u00020*H\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00060\u0014R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00060\u001eR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00060\"R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006P"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "layoutAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "pivotSelector", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;", "spanFocusFinder", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;)V", "alignmentQueue", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;", "audioManager", "Landroid/media/AudioManager;", "idleScrollListener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;", "<set-?>", "", "isSelectionInProgress", "()Z", "pivotSelectionScroller", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;", "recyclerView", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "searchPivotListener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;", "searchPivotScroller", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;", "selectionPivotListener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;", "addPendingAlignment", "newFocusedView", "Landroid/view/View;", "addScrollMovement", "forward", "consume", "cancelSmoothScroller", "", "getAudioManager", "Landroidx/recyclerview/widget/RecyclerView;", "hasReachedPendingAlignmentLimit", "focusDirection", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "isScrollToViewPossible", "position", "", "view", "isSearchingPivot", "onBlockLaidOut", "onChildCreated", "onChildLaidOut", "performScrollToView", "subPositionView", "selectViewHolder", "smooth", "playSoundEffect", "scrollBy", "offset", "scrollToPosition", "subPosition", "scrollToSelectedPosition", "requestFocus", "scrollToView", "setRecyclerView", "newRecyclerView", "setSmoothScroller", "smoothScroller", "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;", "startScroll", "startSmoothScrollingToPivot", "stopSmoothScrolling", "Companion", "IdleScrollListener", "SearchPivotListener", "SelectionPivotListener", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutScroller {
    public static final String TAG = "LayoutScroller";
    private final ScrollAlignmentQueue alignmentQueue;
    private AudioManager audioManager;
    private final LayoutConfiguration configuration;
    private final IdleScrollListener idleScrollListener;
    private boolean isSelectionInProgress;
    private final LayoutAlignment layoutAlignment;
    private final LayoutInfo layoutInfo;
    private final RecyclerView.LayoutManager layoutManager;
    private PivotSelectionSmoothScroller pivotSelectionScroller;
    private final PivotSelector pivotSelector;
    private DpadRecyclerView recyclerView;
    private final SearchPivotListener searchPivotListener;
    private SearchPivotSmoothScroller searchPivotScroller;
    private final SelectionPivotListener selectionPivotListener;
    private final SpanFocusFinder spanFocusFinder;

    public final boolean isSearchingPivot() {
        return this.searchPivotScroller != null;
    }

    /* renamed from: isSelectionInProgress, reason: from getter */
    public final boolean getIsSelectionInProgress() {
        return this.isSelectionInProgress;
    }

    public LayoutScroller(RecyclerView.LayoutManager layoutManager, LayoutInfo layoutInfo, LayoutAlignment layoutAlignment, LayoutConfiguration configuration, PivotSelector pivotSelector, SpanFocusFinder spanFocusFinder) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(layoutAlignment, "layoutAlignment");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(pivotSelector, "pivotSelector");
        Intrinsics.checkNotNullParameter(spanFocusFinder, "spanFocusFinder");
        this.layoutManager = layoutManager;
        this.layoutInfo = layoutInfo;
        this.layoutAlignment = layoutAlignment;
        this.configuration = configuration;
        this.pivotSelector = pivotSelector;
        this.spanFocusFinder = spanFocusFinder;
        this.alignmentQueue = new ScrollAlignmentQueue(configuration, layoutAlignment, layoutInfo);
        this.idleScrollListener = new IdleScrollListener();
        this.searchPivotListener = new SearchPivotListener();
        this.selectionPivotListener = new SelectionPivotListener();
    }

    public final void setRecyclerView(DpadRecyclerView newRecyclerView) {
        DpadRecyclerView dpadRecyclerView = this.recyclerView;
        if (dpadRecyclerView != null) {
            dpadRecyclerView.removeOnScrollListener(this.idleScrollListener);
        }
        if (newRecyclerView != null) {
            newRecyclerView.addOnScrollListener(this.idleScrollListener);
        }
        this.recyclerView = newRecyclerView;
    }

    public final void scrollToPosition(int position, int subPosition, boolean smooth) {
        DpadRecyclerView dpadRecyclerView;
        View findViewByPosition = this.layoutManager.findViewByPosition(position);
        if (!this.layoutManager.isSmoothScrolling() && findViewByPosition != null && isScrollToViewPossible(position, findViewByPosition)) {
            startScroll(position, subPosition, findViewByPosition, smooth);
            return;
        }
        if (!this.configuration.getIsLayoutEnabled()) {
            this.pivotSelector.update(position, subPosition);
            this.pivotSelector.disablePositionOffset();
            return;
        }
        if (smooth && (dpadRecyclerView = this.recyclerView) != null && !dpadRecyclerView.isLayoutRequested()) {
            this.pivotSelector.update(position, subPosition);
            this.pivotSelector.disablePositionOffset();
            startSmoothScrollingToPivot(position, subPosition);
            return;
        }
        if (this.layoutManager.isSmoothScrolling()) {
            stopSmoothScrolling();
        }
        if (findViewByPosition != null && isScrollToViewPossible(position, findViewByPosition)) {
            startScroll(position, subPosition, findViewByPosition, smooth);
        } else {
            scrollToPosition(position, subPosition);
        }
    }

    private final boolean isScrollToViewPossible(int position, View view) {
        DpadRecyclerView dpadRecyclerView = this.recyclerView;
        return (dpadRecyclerView == null || dpadRecyclerView.isLayoutRequested() || this.layoutInfo.getAdapterPositionOf(view) != position) ? false : true;
    }

    private final void startSmoothScrollingToPivot(int position, int subPosition) {
        if (!this.layoutInfo.getHasLaidOutViews()) {
            Log.w(DpadRecyclerView.TAG, "smooth scrolling is not supported when there are no views in the layout");
            return;
        }
        DpadRecyclerView dpadRecyclerView = this.recyclerView;
        if (dpadRecyclerView != null) {
            this.layoutManager.startSmoothScroll(new PivotSelectionSmoothScroller(dpadRecyclerView, position, subPosition, this.layoutInfo, this.layoutAlignment, this.selectionPivotListener));
            this.layoutInfo.setIsScrollingToTarget(true);
        }
    }

    private final void stopSmoothScrolling() {
        cancelSmoothScroller();
        DpadRecyclerView dpadRecyclerView = this.recyclerView;
        if (dpadRecyclerView != null) {
            dpadRecyclerView.stopScroll();
        }
    }

    private final void startScroll(int position, int subPosition, View view, boolean smooth) {
        this.isSelectionInProgress = true;
        View viewAtSubPosition = this.layoutAlignment.getViewAtSubPosition(view, subPosition);
        if (viewAtSubPosition == null && subPosition != 0) {
            Log.w(DpadRecyclerView.TAG, "Subposition " + position + " doesn't exist for position " + position + ",scroll instead started for subposition 0");
        }
        scrollToView(view, viewAtSubPosition, smooth, this.layoutManager.hasFocus());
        this.isSelectionInProgress = false;
    }

    public static /* synthetic */ void scrollToSelectedPosition$default(LayoutScroller layoutScroller, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = layoutScroller.layoutManager.hasFocus();
        }
        layoutScroller.scrollToSelectedPosition(z, z2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        if (r1 == (-1)) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scrollToSelectedPosition(boolean r5, boolean r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r4.layoutManager
            int r0 = r0.getItemCount()
            com.rubensousa.dpadrecyclerview.layoutmanager.PivotSelector r1 = r4.pivotSelector
            int r1 = r1.getPosition()
            com.rubensousa.dpadrecyclerview.layoutmanager.PivotSelector r2 = r4.pivotSelector
            int r2 = r2.getSubPosition()
            r3 = 0
            if (r0 != 0) goto L18
        L15:
            r1 = r3
            r2 = r1
            goto L22
        L18:
            if (r1 < r0) goto L1e
            int r1 = r0 + (-1)
            r2 = r3
            goto L22
        L1e:
            r0 = -1
            if (r1 != r0) goto L22
            goto L15
        L22:
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r4.layoutManager
            android.view.View r0 = r0.findViewByPosition(r1)
            if (r0 != 0) goto L2b
            return
        L2b:
            com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment r1 = r4.layoutAlignment
            android.view.View r1 = r1.getViewAtSubPosition(r0, r2)
            r4.scrollToView(r0, r1, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rubensousa.dpadrecyclerview.layoutmanager.scroll.LayoutScroller.scrollToSelectedPosition(boolean, boolean):void");
    }

    public static /* synthetic */ void scrollToPosition$default(LayoutScroller layoutScroller, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        layoutScroller.scrollToPosition(i, i2);
    }

    public final void scrollToPosition(int position, int subPosition) {
        if (this.pivotSelector.update(position, subPosition)) {
            this.pivotSelector.disablePositionOffset();
            this.pivotSelector.setSelectionUpdatePending();
            this.layoutManager.requestLayout();
        }
    }

    public final void setSmoothScroller(RecyclerView.SmoothScroller smoothScroller) {
        Intrinsics.checkNotNullParameter(smoothScroller, "smoothScroller");
        SearchPivotSmoothScroller searchPivotSmoothScroller = null;
        this.pivotSelectionScroller = (smoothScroller.isRunning() && (smoothScroller instanceof PivotSelectionSmoothScroller)) ? (PivotSelectionSmoothScroller) smoothScroller : null;
        if (smoothScroller.isRunning() && (smoothScroller instanceof SearchPivotSmoothScroller)) {
            searchPivotSmoothScroller = (SearchPivotSmoothScroller) smoothScroller;
        }
        this.searchPivotScroller = searchPivotSmoothScroller;
    }

    public final void cancelSmoothScroller() {
        this.layoutInfo.setIsScrollingToTarget(false);
        SearchPivotSmoothScroller searchPivotSmoothScroller = this.searchPivotScroller;
        if (searchPivotSmoothScroller != null) {
            searchPivotSmoothScroller.cancel();
        }
        this.searchPivotScroller = null;
        PivotSelectionSmoothScroller pivotSelectionSmoothScroller = this.pivotSelectionScroller;
        if (pivotSelectionSmoothScroller != null) {
            pivotSelectionSmoothScroller.cancel();
        }
        this.pivotSelectionScroller = null;
    }

    public static /* synthetic */ boolean addScrollMovement$default(LayoutScroller layoutScroller, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        return layoutScroller.addScrollMovement(z, z2);
    }

    public final boolean addScrollMovement(boolean forward, boolean consume) {
        SearchPivotSmoothScroller searchPivotSmoothScroller;
        if (!this.layoutInfo.shouldReverseLayout()) {
            if (forward && this.layoutInfo.hasCreatedLastItem()) {
                if (!this.layoutInfo.getIsLoopingAllowed()) {
                    return false;
                }
            } else if (!forward && this.layoutInfo.hasCreatedFirstItem() && !this.layoutInfo.getIsLoopingStart()) {
                return false;
            }
        } else if (forward && this.layoutInfo.hasCreatedFirstItem()) {
            if (!this.layoutInfo.getIsLoopingAllowed()) {
                return false;
            }
        } else if (!forward && this.layoutInfo.hasCreatedLastItem() && !this.layoutInfo.getIsLoopingStart()) {
            return false;
        }
        DpadRecyclerView dpadRecyclerView = this.recyclerView;
        if (dpadRecyclerView == null) {
            return false;
        }
        SearchPivotSmoothScroller searchPivotSmoothScroller2 = this.searchPivotScroller;
        if (searchPivotSmoothScroller2 == null) {
            SearchPivotSmoothScroller searchPivotSmoothScroller3 = new SearchPivotSmoothScroller(dpadRecyclerView, this.configuration.getMaxPendingMoves(), this.layoutInfo, this.spanFocusFinder, this.pivotSelector, this.layoutAlignment, this.searchPivotListener);
            this.layoutAlignment.updateScrollLimits();
            this.pivotSelector.resetPositionOffset();
            searchPivotSmoothScroller3.addScrollMovement(forward);
            this.layoutManager.startSmoothScroll(searchPivotSmoothScroller3);
        } else if (searchPivotSmoothScroller2 != null) {
            searchPivotSmoothScroller2.addScrollMovement(forward);
        }
        if (consume && (searchPivotSmoothScroller = this.searchPivotScroller) != null) {
            searchPivotSmoothScroller.consumeOneMovement();
        }
        playSoundEffect(forward, dpadRecyclerView);
        return true;
    }

    private final void playSoundEffect(boolean forward, DpadRecyclerView recyclerView) {
        if (recyclerView.getOrientation() != 1) {
            r1 = ((forward ? 1 : 0) ^ (recyclerView.getLayoutDirection() != 1 ? 0 : 1)) != 0 ? 4 : 3;
        } else if (forward) {
            r1 = 2;
        }
        AudioManager audioManager = getAudioManager(recyclerView);
        if (audioManager != null) {
            audioManager.playSoundEffect(r1);
        }
    }

    public final void scrollToView(View view, View subPositionView, boolean smooth, boolean requestFocus) {
        DpadRecyclerView dpadRecyclerView;
        int adapterPositionOf = view == null ? -1 : this.layoutInfo.getAdapterPositionOf(view);
        if (adapterPositionOf == -1) {
            return;
        }
        boolean update = this.pivotSelector.update(adapterPositionOf, this.layoutAlignment.getSubPositionOfView(view, subPositionView));
        boolean z = false;
        if (update) {
            this.pivotSelector.resetPositionOffset();
            if (this.layoutInfo.getIsLayoutInProgress()) {
                this.pivotSelector.setSelectionUpdatePending();
            } else {
                z = true;
            }
            if (this.configuration.getIsChildDrawingOrderEnabled() && (dpadRecyclerView = this.recyclerView) != null) {
                dpadRecyclerView.invalidate();
            }
        }
        if (view == null) {
            return;
        }
        if (subPositionView != null && requestFocus) {
            subPositionView.requestFocus();
        } else if (requestFocus) {
            view.requestFocus();
        }
        performScrollToView(view, subPositionView, z, smooth);
    }

    private final void performScrollToView(View view, View subPositionView, boolean selectViewHolder, boolean smooth) {
        int i;
        if (this.configuration.getIsScrollEnabled()) {
            i = this.layoutAlignment.calculateScrollOffset(view, subPositionView);
            scrollBy(i, smooth);
        } else {
            i = 0;
        }
        if (selectViewHolder) {
            this.pivotSelector.dispatchViewHolderSelected();
            if (i == 0) {
                this.pivotSelector.dispatchViewHolderSelectedAndAligned();
            }
        }
    }

    private final void scrollBy(int offset, boolean smooth) {
        if (offset == 0 || this.layoutInfo.getIsLayoutInProgress()) {
            return;
        }
        int i = 0;
        if (!this.layoutInfo.isHorizontal()) {
            i = offset;
            offset = 0;
        }
        if (smooth) {
            DpadRecyclerView dpadRecyclerView = this.recyclerView;
            if (dpadRecyclerView != null) {
                dpadRecyclerView.smoothScrollBy(offset, i);
                return;
            }
            return;
        }
        DpadRecyclerView dpadRecyclerView2 = this.recyclerView;
        if (dpadRecyclerView2 != null) {
            dpadRecyclerView2.scrollBy(offset, i);
        }
    }

    public final void onChildCreated(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        SearchPivotSmoothScroller searchPivotSmoothScroller = this.searchPivotScroller;
        if (searchPivotSmoothScroller != null) {
            searchPivotSmoothScroller.onChildCreated(view);
        }
    }

    public final void onChildLaidOut(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        SearchPivotSmoothScroller searchPivotSmoothScroller = this.searchPivotScroller;
        if (searchPivotSmoothScroller != null) {
            searchPivotSmoothScroller.onChildLaidOut(view);
        }
    }

    public final void onBlockLaidOut() {
        SearchPivotSmoothScroller searchPivotSmoothScroller = this.searchPivotScroller;
        if (searchPivotSmoothScroller != null) {
            searchPivotSmoothScroller.onBlockLaidOut();
        }
    }

    public final boolean hasReachedPendingAlignmentLimit(FocusDirection focusDirection) {
        Intrinsics.checkNotNullParameter(focusDirection, "focusDirection");
        return this.alignmentQueue.hasReachedLimit(focusDirection);
    }

    public final boolean addPendingAlignment(View newFocusedView) {
        Intrinsics.checkNotNullParameter(newFocusedView, "newFocusedView");
        RecyclerView.ViewHolder childViewHolder = this.layoutInfo.getChildViewHolder(newFocusedView);
        if (childViewHolder == null) {
            return false;
        }
        View itemView = childViewHolder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        if (newFocusedView == itemView) {
            newFocusedView = null;
        }
        return this.alignmentQueue.push(itemView, newFocusedView, this.layoutAlignment.calculateScrollOffset(itemView, newFocusedView));
    }

    private final AudioManager getAudioManager(RecyclerView recyclerView) {
        AudioManager audioManager;
        AudioManager audioManager2 = this.audioManager;
        if (audioManager2 != null) {
            return audioManager2;
        }
        try {
            audioManager = (AudioManager) ContextCompat.getSystemService(recyclerView.getContext(), AudioManager.class);
        } catch (Throwable unused) {
            audioManager = null;
        }
        this.audioManager = audioManager;
        return audioManager;
    }

    /* compiled from: LayoutScroller.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016¨\u0006\u000e"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V", "onPivotAttached", "", "adapterPosition", "", "onPivotFound", "pivotView", "Landroid/view/View;", "onPivotLaidOut", "onPivotNotFound", "targetPosition", "onSmoothScrollerStopped", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class SearchPivotListener implements SearchPivotSmoothScroller.Listener {
        public SearchPivotListener() {
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.SearchPivotSmoothScroller.Listener
        public void onPivotAttached(int adapterPosition) {
            PivotSelector.update$default(LayoutScroller.this.pivotSelector, adapterPosition, 0, 2, null);
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.SearchPivotSmoothScroller.Listener
        public void onPivotLaidOut(View pivotView) {
            Intrinsics.checkNotNullParameter(pivotView, "pivotView");
            if (LayoutScroller.this.layoutManager.hasFocus()) {
                LayoutScroller.this.isSelectionInProgress = true;
                pivotView.requestFocus();
                LayoutScroller.this.isSelectionInProgress = false;
            }
            LayoutScroller.this.addPendingAlignment(pivotView);
            LayoutScroller.this.pivotSelector.dispatchViewHolderSelected();
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.SearchPivotSmoothScroller.Listener
        public void onPivotFound(View pivotView) {
            Intrinsics.checkNotNullParameter(pivotView, "pivotView");
            LayoutScroller layoutScroller = LayoutScroller.this;
            layoutScroller.scrollToView(pivotView, null, true, layoutScroller.layoutManager.hasFocus());
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.SearchPivotSmoothScroller.Listener
        public void onPivotNotFound(int targetPosition) {
            if (targetPosition >= 0) {
                LayoutScroller.this.scrollToPosition(targetPosition, 0, true);
            } else {
                LayoutScroller.scrollToSelectedPosition$default(LayoutScroller.this, false, false, 2, null);
            }
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.SearchPivotSmoothScroller.Listener
        public void onSmoothScrollerStopped() {
            LayoutScroller.this.searchPivotScroller = null;
        }
    }

    /* compiled from: LayoutScroller.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V", "onPivotFound", "", "pivotView", "Landroid/view/View;", "position", "", "subPosition", "onPivotNotFound", "onSmoothScrollerStopped", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class SelectionPivotListener implements PivotSelectionSmoothScroller.Listener {
        public SelectionPivotListener() {
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.PivotSelectionSmoothScroller.Listener
        public void onPivotFound(View pivotView, int position, int subPosition) {
            Intrinsics.checkNotNullParameter(pivotView, "pivotView");
            if (LayoutScroller.this.layoutManager.hasFocus()) {
                LayoutScroller.this.isSelectionInProgress = true;
                View viewAtSubPosition = LayoutScroller.this.layoutAlignment.getViewAtSubPosition(pivotView, subPosition);
                if (viewAtSubPosition != null) {
                    viewAtSubPosition.requestFocus();
                } else {
                    pivotView.requestFocus();
                }
                LayoutScroller.this.isSelectionInProgress = false;
            }
            LayoutScroller.this.pivotSelector.dispatchViewHolderSelected();
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.PivotSelectionSmoothScroller.Listener
        public void onPivotNotFound(int position) {
            LayoutScroller.scrollToPosition$default(LayoutScroller.this, position, 0, 2, null);
        }

        @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.PivotSelectionSmoothScroller.Listener
        public void onSmoothScrollerStopped() {
            LayoutScroller.this.layoutInfo.setIsScrollingToTarget(false);
            LayoutScroller.this.pivotSelectionScroller = null;
        }
    }

    /* compiled from: LayoutScroller.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V", "isScrolling", "", "previousSelectedPosition", "", "onScrollStateChanged", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "newState", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class IdleScrollListener extends RecyclerView.OnScrollListener {
        private boolean isScrolling;
        private int previousSelectedPosition = -1;

        public IdleScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, newState);
            LayoutScroller.this.layoutInfo.setIsScrolling(newState != 0);
            boolean z = this.isScrolling;
            boolean z2 = newState != 0;
            this.isScrolling = z2;
            if (z == z2) {
                return;
            }
            if (z2) {
                this.previousSelectedPosition = LayoutScroller.this.pivotSelector.getPosition();
            } else if (this.previousSelectedPosition != -1) {
                LayoutScroller.this.pivotSelector.dispatchViewHolderSelectedAndAligned();
                this.previousSelectedPosition = -1;
            }
            if (this.isScrolling) {
                return;
            }
            LayoutScroller.this.alignmentQueue.consumeAll();
        }
    }
}
