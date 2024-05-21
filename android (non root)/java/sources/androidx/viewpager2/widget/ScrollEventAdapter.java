package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    private static final int NO_POSITION = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_IN_PROGRESS_FAKE_DRAG = 4;
    private static final int STATE_IN_PROGRESS_IMMEDIATE_SCROLL = 3;
    private static final int STATE_IN_PROGRESS_MANUAL_DRAG = 1;
    private static final int STATE_IN_PROGRESS_SMOOTH_SCROLL = 2;
    private int mAdapterState;
    private ViewPager2.OnPageChangeCallback mCallback;
    private boolean mDataSetChangeHappened;
    private boolean mDispatchSelected;
    private int mDragStartPosition;
    private boolean mFakeDragging;
    private final LinearLayoutManager mLayoutManager;
    private final RecyclerView mRecyclerView;
    private boolean mScrollHappened;
    private int mScrollState;
    private ScrollEventValues mScrollValues;
    private int mTarget;
    private final ViewPager2 mViewPager;

    private boolean isInAnyDraggingState() {
        int i = this.mAdapterState;
        return i == 1 || i == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getScrollState() {
        return this.mScrollState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDragging() {
        return this.mScrollState == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isIdle() {
        return this.mScrollState == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyDataSetChangeHappened() {
        this.mDataSetChangeHappened = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallback = onPageChangeCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollEventAdapter(ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.mScrollValues = new ScrollEventValues();
        resetState();
    }

    private void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        this.mScrollValues.reset();
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        if ((this.mAdapterState != 1 || this.mScrollState != 1) && i == 1) {
            startDrag(false);
            return;
        }
        if (isInAnyDraggingState() && i == 2) {
            if (this.mScrollHappened) {
                dispatchStateChanged(2);
                this.mDispatchSelected = true;
                return;
            }
            return;
        }
        if (isInAnyDraggingState() && i == 0) {
            updateScrollEventValues();
            if (!this.mScrollHappened) {
                if (this.mScrollValues.mPosition != -1) {
                    dispatchScrolled(this.mScrollValues.mPosition, 0.0f, 0);
                }
            } else if (this.mScrollValues.mOffsetPx == 0) {
                if (this.mDragStartPosition != this.mScrollValues.mPosition) {
                    dispatchSelected(this.mScrollValues.mPosition);
                }
            }
            dispatchStateChanged(0);
            resetState();
        }
        if (this.mAdapterState == 2 && i == 0 && this.mDataSetChangeHappened) {
            updateScrollEventValues();
            if (this.mScrollValues.mOffsetPx == 0) {
                if (this.mTarget != this.mScrollValues.mPosition) {
                    dispatchSelected(this.mScrollValues.mPosition == -1 ? 0 : this.mScrollValues.mPosition);
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        if ((r5 < 0) == r3.mViewPager.isRtl()) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(androidx.recyclerview.widget.RecyclerView r4, int r5, int r6) {
        /*
            r3 = this;
            r4 = 1
            r3.mScrollHappened = r4
            r3.updateScrollEventValues()
            boolean r0 = r3.mDispatchSelected
            r1 = -1
            r2 = 0
            if (r0 == 0) goto L39
            r3.mDispatchSelected = r2
            if (r6 > 0) goto L1f
            if (r6 != 0) goto L2b
            if (r5 >= 0) goto L16
            r5 = r4
            goto L17
        L16:
            r5 = r2
        L17:
            androidx.viewpager2.widget.ViewPager2 r6 = r3.mViewPager
            boolean r6 = r6.isRtl()
            if (r5 != r6) goto L2b
        L1f:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mOffsetPx
            if (r5 == 0) goto L2b
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
            int r5 = r5 + r4
            goto L2f
        L2b:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
        L2f:
            r3.mTarget = r5
            int r6 = r3.mDragStartPosition
            if (r6 == r5) goto L47
            r3.dispatchSelected(r5)
            goto L47
        L39:
            int r5 = r3.mAdapterState
            if (r5 != 0) goto L47
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
            if (r5 != r1) goto L44
            r5 = r2
        L44:
            r3.dispatchSelected(r5)
        L47:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
            if (r5 != r1) goto L4f
            r5 = r2
            goto L53
        L4f:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
        L53:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r6 = r3.mScrollValues
            float r6 = r6.mOffset
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r3.mScrollValues
            int r0 = r0.mOffsetPx
            r3.dispatchScrolled(r5, r6, r0)
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
            int r6 = r3.mTarget
            if (r5 == r6) goto L68
            if (r6 != r1) goto L78
        L68:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mOffsetPx
            if (r5 != 0) goto L78
            int r5 = r3.mScrollState
            if (r5 == r4) goto L78
            r3.dispatchStateChanged(r2)
            r3.resetState()
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    private void updateScrollEventValues() {
        int top;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        scrollEventValues.mPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        if (scrollEventValues.mPosition == -1) {
            scrollEventValues.reset();
            return;
        }
        View findViewByPosition = this.mLayoutManager.findViewByPosition(scrollEventValues.mPosition);
        if (findViewByPosition == null) {
            scrollEventValues.reset();
            return;
        }
        int leftDecorationWidth = this.mLayoutManager.getLeftDecorationWidth(findViewByPosition);
        int rightDecorationWidth = this.mLayoutManager.getRightDecorationWidth(findViewByPosition);
        int topDecorationHeight = this.mLayoutManager.getTopDecorationHeight(findViewByPosition);
        int bottomDecorationHeight = this.mLayoutManager.getBottomDecorationHeight(findViewByPosition);
        ViewGroup.LayoutParams layoutParams = findViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = findViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = findViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.mLayoutManager.getOrientation() == 0) {
            top = (findViewByPosition.getLeft() - leftDecorationWidth) - this.mRecyclerView.getPaddingLeft();
            if (this.mViewPager.isRtl()) {
                top = -top;
            }
            height = width;
        } else {
            top = (findViewByPosition.getTop() - topDecorationHeight) - this.mRecyclerView.getPaddingTop();
        }
        scrollEventValues.mOffsetPx = -top;
        if (scrollEventValues.mOffsetPx < 0) {
            if (new AnimateLayoutChangeDetector(this.mLayoutManager).mayHaveInterferingAnimations()) {
                throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
            }
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.mOffsetPx)));
        }
        scrollEventValues.mOffset = height == 0 ? 0.0f : scrollEventValues.mOffsetPx / height;
    }

    private void startDrag(boolean z) {
        this.mFakeDragging = z;
        this.mAdapterState = z ? 4 : 1;
        int i = this.mTarget;
        if (i != -1) {
            this.mDragStartPosition = i;
            this.mTarget = -1;
        } else if (this.mDragStartPosition == -1) {
            this.mDragStartPosition = getPosition();
        }
        dispatchStateChanged(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyProgrammaticScroll(int i, boolean z) {
        this.mAdapterState = z ? 2 : 3;
        this.mFakeDragging = false;
        boolean z2 = this.mTarget != i;
        this.mTarget = i;
        dispatchStateChanged(2);
        if (z2) {
            dispatchSelected(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyBeginFakeDrag() {
        this.mAdapterState = 4;
        startDrag(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyEndFakeDrag() {
        if (!isDragging() || this.mFakeDragging) {
            this.mFakeDragging = false;
            updateScrollEventValues();
            if (this.mScrollValues.mOffsetPx == 0) {
                if (this.mScrollValues.mPosition != this.mDragStartPosition) {
                    dispatchSelected(this.mScrollValues.mPosition);
                }
                dispatchStateChanged(0);
                resetState();
                return;
            }
            dispatchStateChanged(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getRelativeScrollPosition() {
        updateScrollEventValues();
        return this.mScrollValues.mPosition + this.mScrollValues.mOffset;
    }

    private void dispatchStateChanged(int i) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    private void dispatchSelected(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i);
        }
    }

    private void dispatchScrolled(int i, float f, int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i, f, i2);
        }
    }

    private int getPosition() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class ScrollEventValues {
        float mOffset;
        int mOffsetPx;
        int mPosition;

        void reset() {
            this.mPosition = -1;
            this.mOffset = 0.0f;
            this.mOffsetPx = 0;
        }

        ScrollEventValues() {
        }
    }
}
