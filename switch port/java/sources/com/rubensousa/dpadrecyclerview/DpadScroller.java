package com.rubensousa.dpadrecyclerview;

import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadScroller.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00060\u0006R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadScroller;", "", "calculator", "Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;", "(Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;)V", "keyListener", "Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;", "recyclerView", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "smoothScrollEnabled", "", "attach", "", "detach", "setSmoothScrollEnabled", "enabled", "DefaultScrollDistanceCalculator", "KeyListener", "ScrollDistanceCalculator", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DpadScroller {
    private final ScrollDistanceCalculator calculator;
    private final KeyListener keyListener;
    private DpadRecyclerView recyclerView;
    private boolean smoothScrollEnabled;

    /* compiled from: DpadScroller.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;", "", "calculateScrollDistance", "", "recyclerView", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface ScrollDistanceCalculator {
        int calculateScrollDistance(DpadRecyclerView recyclerView, KeyEvent event);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DpadScroller() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void setSmoothScrollEnabled(boolean enabled) {
        this.smoothScrollEnabled = enabled;
    }

    public DpadScroller(ScrollDistanceCalculator calculator) {
        Intrinsics.checkNotNullParameter(calculator, "calculator");
        this.calculator = calculator;
        this.keyListener = new KeyListener();
        this.smoothScrollEnabled = true;
    }

    public /* synthetic */ DpadScroller(DefaultScrollDistanceCalculator defaultScrollDistanceCalculator, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new DefaultScrollDistanceCalculator() : defaultScrollDistanceCalculator);
    }

    public final void attach(DpadRecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        detach();
        this.recyclerView = recyclerView;
        recyclerView.setDescendantFocusability(393216);
        recyclerView.setOnKeyInterceptListener(this.keyListener);
    }

    public final void detach() {
        DpadRecyclerView dpadRecyclerView = this.recyclerView;
        if (dpadRecyclerView != null) {
            dpadRecyclerView.setDescendantFocusability(262144);
        }
        DpadRecyclerView dpadRecyclerView2 = this.recyclerView;
        if (dpadRecyclerView2 != null) {
            dpadRecyclerView2.setOnKeyInterceptListener(null);
        }
        this.recyclerView = null;
    }

    /* compiled from: DpadScroller.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u000b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadScroller$KeyListener;", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;", "(Lcom/rubensousa/dpadrecyclerview/DpadScroller;)V", "onInterceptKeyEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "scrollHorizontally", "recyclerView", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", "scrollVertically", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    private final class KeyListener implements DpadRecyclerView.OnKeyInterceptListener {
        public KeyListener() {
        }

        @Override // com.rubensousa.dpadrecyclerview.DpadRecyclerView.OnKeyInterceptListener
        public boolean onInterceptKeyEvent(KeyEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            DpadRecyclerView dpadRecyclerView = DpadScroller.this.recyclerView;
            if (dpadRecyclerView == null || event.getAction() != 0) {
                return false;
            }
            if (dpadRecyclerView.getOrientation() == 1) {
                return scrollVertically(dpadRecyclerView, event);
            }
            return scrollHorizontally(dpadRecyclerView, event);
        }

        private final boolean scrollVertically(DpadRecyclerView recyclerView, KeyEvent event) {
            int calculateScrollDistance = DpadScroller.this.calculator.calculateScrollDistance(recyclerView, event);
            int keyCode = event.getKeyCode();
            if (keyCode == 19) {
                if (DpadScroller.this.smoothScrollEnabled) {
                    recyclerView.smoothScrollBy(0, -calculateScrollDistance);
                } else {
                    recyclerView.scrollBy(0, -calculateScrollDistance);
                }
                return true;
            }
            if (keyCode != 20) {
                return false;
            }
            if (DpadScroller.this.smoothScrollEnabled) {
                recyclerView.smoothScrollBy(0, calculateScrollDistance);
            } else {
                recyclerView.scrollBy(0, calculateScrollDistance);
            }
            return true;
        }

        private final boolean scrollHorizontally(DpadRecyclerView recyclerView, KeyEvent event) {
            int calculateScrollDistance = DpadScroller.this.calculator.calculateScrollDistance(recyclerView, event);
            int keyCode = event.getKeyCode();
            if (keyCode == 21) {
                if (DpadScroller.this.smoothScrollEnabled) {
                    recyclerView.smoothScrollBy(0, -calculateScrollDistance);
                } else {
                    recyclerView.scrollBy(0, -calculateScrollDistance);
                }
                return true;
            }
            if (keyCode != 22) {
                return false;
            }
            if (DpadScroller.this.smoothScrollEnabled) {
                recyclerView.smoothScrollBy(0, calculateScrollDistance);
            } else {
                recyclerView.scrollBy(0, calculateScrollDistance);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DpadScroller.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadScroller$DefaultScrollDistanceCalculator;", "Lcom/rubensousa/dpadrecyclerview/DpadScroller$ScrollDistanceCalculator;", "()V", "calculateScrollDistance", "", "recyclerView", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultScrollDistanceCalculator implements ScrollDistanceCalculator {
        @Override // com.rubensousa.dpadrecyclerview.DpadScroller.ScrollDistanceCalculator
        public int calculateScrollDistance(DpadRecyclerView recyclerView, KeyEvent event) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(event, "event");
            if (recyclerView.getOrientation() == 1) {
                return recyclerView.getHeight() / 4;
            }
            return recyclerView.getWidth() / 4;
        }
    }
}
