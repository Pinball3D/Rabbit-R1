package com.rubensousa.dpadrecyclerview.layoutmanager.focus;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.FocusableDirection;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import com.rubensousa.dpadrecyclerview.layoutmanager.PivotSelector;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import com.rubensousa.dpadrecyclerview.layoutmanager.scroll.LayoutScroller;
import io.sentry.SentryBaseEvent;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusDispatcher.kt */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u00018B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ8\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00162\u0016\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\b\u0012\u0004\u0012\u00020\u001c`\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J8\u0010\u0017\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u00102\u0016\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\b\u0012\u0004\u0012\u00020\u001c`\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0006\u0010\"\u001a\u00020\u0018J\u0006\u0010#\u001a\u00020\u0018J@\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020(2\u0016\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\b\u0012\u0004\u0012\u00020\u001c`\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u0016H\u0002J6\u0010*\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u00162\u0016\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\b\u0012\u0004\u0012\u00020\u001c`\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\u000e\u0010+\u001a\u00020\u00182\u0006\u0010,\u001a\u00020%J\"\u0010-\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010.\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001fJ \u0010/\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u001c2\b\u0010.\u001a\u0004\u0018\u00010\u001cJ\u0018\u00101\u001a\u00020%2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u00102\u001a\u0004\u0018\u000103J\u000e\u00104\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u000205J\u000e\u00106\u001a\u00020\u00182\u0006\u00107\u001a\u00020\u0016R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;", "", "layout", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "scroller", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "pivotSelector", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;", "spanFocusFinder", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;)V", "addFocusableChildrenRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;", "defaultFocusInterceptor", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/DefaultFocusInterceptor;", "focusInterceptor", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;", "parentRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "addFocusableChildren", "", "recyclerView", "views", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "direction", "", "focusableMode", SentryBaseEvent.JsonKeys.REQUEST, "clearParentRecyclerView", "focusSelectedView", "focusSpan", "", "focusedPosition", "movement", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "isFocusSearchEnabled", "onAddFocusables", "onFocusChanged", "gainFocus", "onInterceptFocusSearch", "focused", "onRequestChildFocus", "child", "onRequestFocusInDescendants", "previouslyFocusedRect", "Landroid/graphics/Rect;", "updateFocusableDirection", "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;", "updateParentRecyclerView", "childRecyclerView", "AddFocusableChildrenRequest", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FocusDispatcher {
    private final AddFocusableChildrenRequest addFocusableChildrenRequest;
    private final LayoutConfiguration configuration;
    private final DefaultFocusInterceptor defaultFocusInterceptor;
    private FocusInterceptor focusInterceptor;
    private final RecyclerView.LayoutManager layout;
    private final LayoutInfo layoutInfo;
    private RecyclerView parentRecyclerView;
    private final PivotSelector pivotSelector;
    private final LayoutScroller scroller;
    private final SpanFocusFinder spanFocusFinder;

    /* compiled from: FocusDispatcher.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[FocusableDirection.values().length];
            try {
                iArr[FocusableDirection.CONTINUOUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusableDirection.CIRCULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusableDirection.STANDARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusDirection.values().length];
            try {
                iArr2[FocusDirection.NEXT_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FocusDirection.PREVIOUS_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusDirection.NEXT_COLUMN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FocusDirection.PREVIOUS_COLUMN.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public final void clearParentRecyclerView() {
        this.parentRecyclerView = null;
    }

    public FocusDispatcher(RecyclerView.LayoutManager layout, LayoutConfiguration configuration, LayoutScroller scroller, LayoutInfo layoutInfo, PivotSelector pivotSelector, SpanFocusFinder spanFocusFinder) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(scroller, "scroller");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(pivotSelector, "pivotSelector");
        Intrinsics.checkNotNullParameter(spanFocusFinder, "spanFocusFinder");
        this.layout = layout;
        this.configuration = configuration;
        this.scroller = scroller;
        this.layoutInfo = layoutInfo;
        this.pivotSelector = pivotSelector;
        this.spanFocusFinder = spanFocusFinder;
        this.addFocusableChildrenRequest = new AddFocusableChildrenRequest(layoutInfo);
        DefaultFocusInterceptor defaultFocusInterceptor = new DefaultFocusInterceptor(layoutInfo, configuration, null, 4, null);
        this.defaultFocusInterceptor = defaultFocusInterceptor;
        this.focusInterceptor = defaultFocusInterceptor;
    }

    public final void updateParentRecyclerView(RecyclerView childRecyclerView) {
        Intrinsics.checkNotNullParameter(childRecyclerView, "childRecyclerView");
        for (ViewParent parent = childRecyclerView.getParent(); parent != null && (parent instanceof ViewGroup); parent = ((ViewGroup) parent).getParent()) {
            if (parent instanceof RecyclerView) {
                this.parentRecyclerView = (RecyclerView) parent;
                return;
            }
        }
    }

    public final void updateFocusableDirection(FocusableDirection direction) {
        ContinuousFocusInterceptor continuousFocusInterceptor;
        Intrinsics.checkNotNullParameter(direction, "direction");
        int i = WhenMappings.$EnumSwitchMapping$0[direction.ordinal()];
        if (i == 1) {
            continuousFocusInterceptor = new ContinuousFocusInterceptor(this.layoutInfo);
        } else if (i == 2) {
            continuousFocusInterceptor = new CircularFocusInterceptor(this.layoutInfo);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            continuousFocusInterceptor = this.defaultFocusInterceptor;
        }
        this.focusInterceptor = continuousFocusInterceptor;
    }

    public final void onFocusChanged(boolean gainFocus) {
        View findViewByPosition;
        if (gainFocus && this.scroller.isSearchingPivot()) {
            return;
        }
        if ((!gainFocus || this.configuration.getIsLayoutEnabled()) && gainFocus && this.pivotSelector.getPosition() != -1) {
            for (int position = this.pivotSelector.getPosition(); position < this.layout.getItemCount() && (findViewByPosition = this.layout.findViewByPosition(position)) != null; position++) {
                if (this.layoutInfo.isViewFocusable(findViewByPosition)) {
                    if (findViewByPosition.hasFocus()) {
                        return;
                    }
                    findViewByPosition.requestFocus();
                    return;
                }
            }
        }
    }

    public final void focusSelectedView() {
        View findViewByAdapterPosition = this.layoutInfo.findViewByAdapterPosition(this.pivotSelector.getPosition());
        if (findViewByAdapterPosition == null || !this.layoutInfo.isViewFocusable(findViewByAdapterPosition) || findViewByAdapterPosition.hasFocus()) {
            return;
        }
        findViewByAdapterPosition.requestFocus();
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d7, code lost:
    
        if (com.rubensousa.dpadrecyclerview.layoutmanager.scroll.LayoutScroller.addScrollMovement$default(r7.scroller, false, false, 2, null) != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00fb, code lost:
    
        if (com.rubensousa.dpadrecyclerview.layoutmanager.scroll.LayoutScroller.addScrollMovement$default(r7.scroller, true, false, 2, null) != false) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0100 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onInterceptFocusSearch(androidx.recyclerview.widget.RecyclerView r8, android.view.View r9, int r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rubensousa.dpadrecyclerview.layoutmanager.focus.FocusDispatcher.onInterceptFocusSearch(androidx.recyclerview.widget.RecyclerView, android.view.View, int):android.view.View");
    }

    private final boolean isFocusSearchEnabled(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager;
        if (this.configuration.getIsFocusSearchDisabled()) {
            return false;
        }
        if (!this.configuration.getIsFocusSearchEnabledDuringAnimations() && recyclerView.isAnimating()) {
            return false;
        }
        RecyclerView recyclerView2 = this.parentRecyclerView;
        if (recyclerView2 == null || (layoutManager = recyclerView2.getLayoutManager()) == null) {
            return true;
        }
        return !layoutManager.isSmoothScrolling();
    }

    public final boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> views, int direction, int focusableMode) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(views, "views");
        if (this.configuration.getIsFocusSearchDisabled()) {
            return true;
        }
        if (recyclerView.hasFocus()) {
            if (this.scroller.isSearchingPivot()) {
                return true;
            }
            addFocusableChildren(recyclerView, views, direction, focusableMode);
            return true;
        }
        int size = views.size();
        View findViewByPosition = this.layoutInfo.findViewByPosition(this.pivotSelector.getPosition());
        if (findViewByPosition != null) {
            findViewByPosition.addFocusables(views, direction, focusableMode);
        }
        if (views.size() == size && recyclerView.isFocusable()) {
            views.add(recyclerView);
        }
        return true;
    }

    public final boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        View findViewByPosition;
        if (this.configuration.getIsFocusSearchDisabled() || (findViewByPosition = this.layout.findViewByPosition(this.pivotSelector.getPosition())) == null) {
            return false;
        }
        return findViewByPosition.requestFocus(direction, previouslyFocusedRect);
    }

    public final boolean onRequestChildFocus(RecyclerView recyclerView, View child, View focused) {
        int adapterPositionOf;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(child, "child");
        if (!isFocusSearchEnabled(recyclerView) || (adapterPositionOf = this.layoutInfo.getAdapterPositionOf(child)) == -1) {
            return true;
        }
        this.spanFocusFinder.save(adapterPositionOf, this.configuration.getSpanSizeLookup());
        if (!this.scroller.getIsSelectionInProgress() && !this.layoutInfo.getIsLayoutInProgress()) {
            this.scroller.scrollToView(child, focused, this.configuration.getIsSmoothFocusChangesEnabled(), true);
        }
        return true;
    }

    private final void addFocusableChildren(RecyclerView recyclerView, ArrayList<View> views, int direction, int focusableMode) {
        RecyclerView.ViewHolder childViewHolder;
        if (this.layout.getChildCount() == 0) {
            return;
        }
        View findFocus = recyclerView.findFocus();
        int i = -1;
        if (findFocus != null && (childViewHolder = this.layoutInfo.getChildViewHolder(findFocus)) != null) {
            i = childViewHolder.getAbsoluteAdapterPosition();
        }
        View findViewByPosition = this.layout.findViewByPosition(i);
        if (findViewByPosition != null) {
            findViewByPosition.addFocusables(views, direction, focusableMode);
        }
        FocusDirection from = FocusDirection.INSTANCE.from(direction, this.configuration.isVertical(), this.layoutInfo.shouldReverseLayout());
        if (from == null) {
            return;
        }
        if (((from == FocusDirection.NEXT_COLUMN || from == FocusDirection.PREVIOUS_COLUMN) && this.configuration.getSpanCount() == 1) || focusSpan(i, from, views, direction, focusableMode) || findViewByPosition == null) {
            return;
        }
        this.addFocusableChildrenRequest.update(findViewByPosition, this.layoutInfo.findIndexOf(findViewByPosition), i, from);
        addFocusableChildren(this.addFocusableChildrenRequest, views, direction, focusableMode);
    }

    private final void addFocusableChildren(AddFocusableChildrenRequest request, ArrayList<View> views, int direction, int focusableMode) {
        int start = request.getStart();
        int increment = request.getIncrement();
        while (true) {
            if ((start > request.getEnd() || increment <= 0) && (start < request.getEnd() || increment >= 0)) {
                return;
            }
            View childAt = this.layout.getChildAt(start);
            if (childAt != null && this.layoutInfo.isViewFocusable(childAt)) {
                if (request.getFocused() == null) {
                    childAt.addFocusables(views, direction, focusableMode);
                    return;
                }
                int startSpanIndex = this.layoutInfo.getStartSpanIndex(this.layoutInfo.getAdapterPositionOf(childAt));
                if (request.getFocusDirection() == FocusDirection.NEXT_ITEM) {
                    childAt.addFocusables(views, direction, focusableMode);
                } else if (request.getFocusDirection() == FocusDirection.PREVIOUS_ITEM) {
                    childAt.addFocusables(views, direction, focusableMode);
                } else if (request.getFocusDirection() == FocusDirection.NEXT_COLUMN) {
                    if (startSpanIndex == request.getFocusedSpanIndex()) {
                        continue;
                    } else if (startSpanIndex < request.getFocusedSpanIndex()) {
                        return;
                    } else {
                        childAt.addFocusables(views, direction, focusableMode);
                    }
                } else if (request.getFocusDirection() == FocusDirection.PREVIOUS_COLUMN && startSpanIndex != request.getFocusedSpanIndex()) {
                    if (startSpanIndex > request.getFocusedSpanIndex()) {
                        return;
                    } else {
                        childAt.addFocusables(views, direction, focusableMode);
                    }
                }
            }
            start += increment;
        }
    }

    private final boolean focusSpan(int focusedPosition, FocusDirection movement, ArrayList<View> views, int direction, int focusableMode) {
        View childClosestToStart;
        View findViewByPosition;
        if (this.configuration.getSpanCount() == 1 || (!(movement == FocusDirection.PREVIOUS_ITEM || movement == FocusDirection.NEXT_ITEM) || focusedPosition == -1)) {
            return false;
        }
        if ((movement == FocusDirection.NEXT_ITEM) != this.layoutInfo.shouldReverseLayout()) {
            childClosestToStart = this.layoutInfo.getChildClosestToEnd();
        } else {
            childClosestToStart = this.layoutInfo.getChildClosestToStart();
        }
        if (childClosestToStart == null) {
            return false;
        }
        int findNextSpanPosition = this.spanFocusFinder.findNextSpanPosition(focusedPosition, this.configuration.getSpanSizeLookup(), movement == FocusDirection.NEXT_ITEM, this.layout.getPosition(childClosestToStart), this.layoutInfo.shouldReverseLayout());
        if (findNextSpanPosition == -1 || (findViewByPosition = this.layout.findViewByPosition(findNextSpanPosition)) == null) {
            return false;
        }
        findViewByPosition.addFocusables(views, direction, focusableMode);
        return true;
    }

    /* compiled from: FocusDispatcher.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nR\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u000e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\tR\u001e\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\tR\u001e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\t¨\u0006\u001e"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;", "", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "<set-?>", "", "end", "getEnd", "()I", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "focusDirection", "getFocusDirection", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "Landroid/view/View;", "focused", "getFocused", "()Landroid/view/View;", "focusedAdapterPosition", "getFocusedAdapterPosition", "focusedSpanIndex", "getFocusedSpanIndex", "increment", "getIncrement", "start", "getStart", "update", "", "focusedChild", "focusedChildIndex", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AddFocusableChildrenRequest {
        private int end;
        private FocusDirection focusDirection;
        private View focused;
        private int focusedAdapterPosition;
        private int focusedSpanIndex;
        private int increment;
        private final LayoutInfo layoutInfo;
        private int start;

        public final int getEnd() {
            return this.end;
        }

        public final FocusDirection getFocusDirection() {
            return this.focusDirection;
        }

        public final View getFocused() {
            return this.focused;
        }

        public final int getFocusedAdapterPosition() {
            return this.focusedAdapterPosition;
        }

        public final int getFocusedSpanIndex() {
            return this.focusedSpanIndex;
        }

        public final int getIncrement() {
            return this.increment;
        }

        public final int getStart() {
            return this.start;
        }

        public AddFocusableChildrenRequest(LayoutInfo layoutInfo) {
            Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
            this.layoutInfo = layoutInfo;
            this.increment = 1;
            this.focusedAdapterPosition = -1;
            this.focusDirection = FocusDirection.NEXT_ITEM;
            this.focusedSpanIndex = -1;
        }

        public final void update(View focusedChild, int focusedChildIndex, int focusedAdapterPosition, FocusDirection focusDirection) {
            Intrinsics.checkNotNullParameter(focusDirection, "focusDirection");
            this.focused = focusedChild;
            this.focusedAdapterPosition = focusedAdapterPosition;
            this.focusDirection = focusDirection;
            this.focusedSpanIndex = focusedChild != null ? this.layoutInfo.getStartSpanIndex(focusedAdapterPosition) : -1;
            this.increment = (focusDirection == FocusDirection.NEXT_ITEM || focusDirection == FocusDirection.NEXT_COLUMN) ? 1 : -1;
            if (this.layoutInfo.shouldReverseLayout() && (focusDirection == FocusDirection.NEXT_ITEM || focusDirection == FocusDirection.PREVIOUS_ITEM)) {
                this.increment *= -1;
            }
            int i = 0;
            this.end = this.increment > 0 ? this.layoutInfo.getChildCount() - 1 : 0;
            if (focusedChildIndex != -1) {
                i = this.layoutInfo.shouldReverseLayout() ? focusedChildIndex - this.increment : focusedChildIndex + this.increment;
            } else if (this.increment <= 0) {
                i = this.layoutInfo.getChildCount() - 1;
            }
            this.start = i;
        }
    }
}
