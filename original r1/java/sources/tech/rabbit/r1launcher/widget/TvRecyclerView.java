package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class TvRecyclerView extends RecyclerView {
    private static final String TAG = "TvRecyclerView";
    private Fragment mBindFragment;
    private int mPosition;

    /* loaded from: classes3.dex */
    public interface OnInterceptListener {
        boolean onIntercept(KeyEvent keyEvent);
    }

    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public int getBaseline() {
        return -1;
    }

    public void setBindFragment(Fragment fragment) {
        this.mBindFragment = fragment;
    }

    public TvRecyclerView(Context context) {
        this(context, null);
    }

    public TvRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public TvRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        initView();
    }

    private void initView() {
        setDescendantFocusability(262144);
        setHasFixedSize(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        setChildrenDrawingOrderEnabled(true);
        setClipChildren(false);
        setClipToPadding(false);
        setClickable(false);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setItemAnimator(null);
    }

    private int getFreeWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private int getFreeHeight() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return super.hasFocus();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return super.isInTouchMode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        int left = view.getLeft() + rect.left;
        int top = view.getTop() + rect.top;
        int width2 = rect.width() + left;
        int height2 = rect.height() + top;
        int i = left - paddingLeft;
        int min = Math.min(0, i);
        int i2 = width2 - width;
        int max = Math.max(0, i2);
        int i3 = top - paddingTop;
        int min2 = Math.min(0, i3);
        int max2 = Math.max(0, height2 - height);
        boolean canScrollHorizontally = getLayoutManager().canScrollHorizontally();
        boolean canScrollVertically = getLayoutManager().canScrollVertically();
        if (!canScrollHorizontally) {
            max = 0;
        } else if (ViewCompat.getLayoutDirection(this) != 1) {
            if (min == 0) {
                min = Math.min(i, max);
            }
            max = min;
        } else if (max == 0) {
            max = Math.max(min, i2);
        }
        if (!canScrollVertically) {
            min2 = 0;
        } else if (min2 == 0) {
            min2 = Math.min(i3, max2);
        }
        if (max == 0 && min2 == 0) {
            return false;
        }
        if (z) {
            scrollBy(max, min2);
        } else {
            smoothScrollBy(max, min2);
        }
        postInvalidate();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        super.setLayoutManager(layoutManager);
    }

    private boolean isVertical() {
        return getLayoutManager() != null && ((LinearLayoutManager) getLayoutManager()).getOrientation() == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        View focusedChild = getFocusedChild();
        if (focusedChild != null) {
            int childAdapterPosition = getChildAdapterPosition(focusedChild) - getFirstVisiblePosition();
            this.mPosition = childAdapterPosition;
            if (childAdapterPosition < 0) {
                return i2;
            }
            int i3 = i - 1;
            if (i2 == i3) {
                if (childAdapterPosition > i2) {
                    this.mPosition = i2;
                }
                return this.mPosition;
            }
            if (i2 == childAdapterPosition) {
                return i3;
            }
        }
        return i2;
    }

    public int getFirstVisiblePosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getChildAdapterPosition(getChildAt(0));
    }

    public int getLastVisiblePosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getChildAdapterPosition(getChildAt(childCount - 1));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        View focusedChild = getFocusedChild();
        if (focusedChild == null) {
            return dispatchKeyEvent;
        }
        if (keyEvent.getAction() == 1) {
            return true;
        }
        switch (keyEvent.getKeyCode()) {
            case 19:
                View findNextFocus = FocusFinder.getInstance().findNextFocus(this, focusedChild, 33);
                Log.i(TAG, "upView is null:" + (findNextFocus == null));
                if (findNextFocus != null) {
                    findNextFocus.requestFocus();
                    smoothScrollBy(0, -((getHeight() / 2) - (findNextFocus.getBottom() - (findNextFocus.getHeight() / 2))));
                    return true;
                }
                Log.i(TAG, "tab cache view");
                return dispatchKeyEvent;
            case 20:
                if (isVisBottom(this)) {
                    smoothScrollToPosition(getLastVisiblePosition());
                    return dispatchKeyEvent;
                }
                View findNextFocus2 = FocusFinder.getInstance().findNextFocus(this, focusedChild, 130);
                Log.i(TAG, " downView is null:" + (findNextFocus2 == null));
                if (findNextFocus2 != null) {
                    findNextFocus2.requestFocus();
                    smoothScrollBy(0, (findNextFocus2.getTop() + (findNextFocus2.getHeight() / 2)) - (getHeight() / 2));
                }
                return true;
            case 21:
                View findNextFocus3 = FocusFinder.getInstance().findNextFocus(this, focusedChild, 17);
                Log.i(TAG, "leftView is null:" + (findNextFocus3 == null));
                if (findNextFocus3 == null) {
                    return false;
                }
                findNextFocus3.requestFocus();
                return true;
            case 22:
                View findNextFocus4 = FocusFinder.getInstance().findNextFocus(this, focusedChild, 66);
                if (findNextFocus4 == null) {
                    return false;
                }
                findNextFocus4.requestFocus();
                return true;
            default:
                return dispatchKeyEvent;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        if (getLayoutManager() != null) {
            super.onDetachedFromWindow();
        }
    }

    public boolean isRightEdge(int i) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            int spanCount = gridLayoutManager.getSpanCount();
            int itemCount = gridLayoutManager.getItemCount();
            int i2 = 0;
            for (int i3 = 0; i3 <= i; i3++) {
                i2 += spanSizeLookup.getSpanSize(i3);
            }
            if (isVertical()) {
                return i2 % gridLayoutManager.getSpanCount() == 0;
            }
            int i4 = itemCount % spanCount;
            if (i4 != 0) {
                spanCount = i4;
            }
            return i2 > itemCount - spanCount;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            return isVertical() || i == getLayoutManager().getItemCount() - 1;
        }
        return false;
    }

    public boolean isLeftEdge(int i) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            int spanCount = gridLayoutManager.getSpanCount();
            int i2 = 0;
            for (int i3 = 0; i3 <= i; i3++) {
                i2 += spanSizeLookup.getSpanSize(i3);
            }
            return isVertical() ? i2 % gridLayoutManager.getSpanCount() == 1 : i2 <= spanCount;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            return isVertical() || i == 0;
        }
        return false;
    }

    public boolean isTopEdge(int i) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            int spanCount = gridLayoutManager.getSpanCount();
            int i2 = 0;
            for (int i3 = 0; i3 <= i; i3++) {
                i2 += spanSizeLookup.getSpanSize(i3);
            }
            if (isVertical()) {
                if (i2 <= spanCount) {
                    return true;
                }
            } else if (i2 % spanCount == 1) {
                return true;
            }
        } else if (layoutManager instanceof LinearLayoutManager) {
            return !isVertical() || i == 0;
        }
        return false;
    }

    public boolean isBottomEdge(int i) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            int itemCount = gridLayoutManager.getItemCount();
            int spanCount = gridLayoutManager.getSpanCount();
            int i2 = 0;
            for (int i3 = 0; i3 <= i; i3++) {
                i2 += spanSizeLookup.getSpanSize(i3);
            }
            if (isVertical()) {
                int i4 = itemCount % spanCount;
                if (i4 == 0) {
                    i4 = gridLayoutManager.getSpanCount();
                }
                if (i2 > itemCount - i4) {
                    return true;
                }
            } else if (i2 % spanCount == 0) {
                return true;
            }
        } else if (layoutManager instanceof LinearLayoutManager) {
            return !isVertical() || i == getLayoutManager().getItemCount() - 1;
        }
        return false;
    }

    private boolean isVisBottom(RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        return linearLayoutManager.getChildCount() > 0 && linearLayoutManager.findLastVisibleItemPosition() == linearLayoutManager.getItemCount() - 1;
    }
}
