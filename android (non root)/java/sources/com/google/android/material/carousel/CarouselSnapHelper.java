package com.google.android.material.carousel;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;

/* loaded from: classes2.dex */
public class CarouselSnapHelper extends SnapHelper {
    private static final float HORIZONTAL_SNAP_SPEED = 100.0f;
    private static final float VERTICAL_SNAP_SPEED = 50.0f;
    private final boolean disableFling;
    private RecyclerView recyclerView;

    public CarouselSnapHelper() {
        this(true);
    }

    public CarouselSnapHelper(boolean z) {
        this.disableFling = z;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(RecyclerView recyclerView) {
        super.attachToRecyclerView(recyclerView);
        this.recyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        return calculateDistanceToSnap(layoutManager, view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] calculateDistanceToSnap(RecyclerView.LayoutManager layoutManager, View view, boolean z) {
        if (!(layoutManager instanceof CarouselLayoutManager)) {
            return new int[]{0, 0};
        }
        int distanceToFirstFocalKeyline = distanceToFirstFocalKeyline(view, (CarouselLayoutManager) layoutManager, z);
        return layoutManager.canScrollHorizontally() ? new int[]{distanceToFirstFocalKeyline, 0} : layoutManager.canScrollVertically() ? new int[]{0, distanceToFirstFocalKeyline} : new int[]{0, 0};
    }

    private int distanceToFirstFocalKeyline(View view, CarouselLayoutManager carouselLayoutManager, boolean z) {
        return carouselLayoutManager.getOffsetToScrollToPositionForSnap(carouselLayoutManager.getPosition(view), z);
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        return findViewNearestFirstKeyline(layoutManager);
    }

    private View findViewNearestFirstKeyline(RecyclerView.LayoutManager layoutManager) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount != 0 && (layoutManager instanceof CarouselLayoutManager)) {
            CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) layoutManager;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = layoutManager.getChildAt(i2);
                int abs = Math.abs(carouselLayoutManager.getOffsetToScrollToPositionForSnap(layoutManager.getPosition(childAt), false));
                if (abs < i) {
                    view = childAt;
                    i = abs;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        int itemCount;
        if (!this.disableFling || (itemCount = layoutManager.getItemCount()) == 0) {
            return -1;
        }
        int childCount = layoutManager.getChildCount();
        View view = null;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = layoutManager.getChildAt(i5);
            if (childAt != null) {
                int distanceToFirstFocalKeyline = distanceToFirstFocalKeyline(childAt, (CarouselLayoutManager) layoutManager, false);
                if (distanceToFirstFocalKeyline <= 0 && distanceToFirstFocalKeyline > i4) {
                    view2 = childAt;
                    i4 = distanceToFirstFocalKeyline;
                }
                if (distanceToFirstFocalKeyline >= 0 && distanceToFirstFocalKeyline < i3) {
                    view = childAt;
                    i3 = distanceToFirstFocalKeyline;
                }
            }
        }
        boolean isForwardFling = isForwardFling(layoutManager, i, i2);
        if (isForwardFling && view != null) {
            return layoutManager.getPosition(view);
        }
        if (!isForwardFling && view2 != null) {
            return layoutManager.getPosition(view2);
        }
        if (isForwardFling) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = layoutManager.getPosition(view) + (isReverseLayout(layoutManager) == isForwardFling ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }

    private boolean isForwardFling(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        return layoutManager.canScrollHorizontally() ? i > 0 : i2 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isReverseLayout(RecyclerView.LayoutManager layoutManager) {
        PointF computeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (computeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return computeScrollVectorForPosition.x < 0.0f || computeScrollVectorForPosition.y < 0.0f;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    protected RecyclerView.SmoothScroller createScroller(final RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this.recyclerView.getContext()) { // from class: com.google.android.material.carousel.CarouselSnapHelper.1
                @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                    if (CarouselSnapHelper.this.recyclerView != null) {
                        CarouselSnapHelper carouselSnapHelper = CarouselSnapHelper.this;
                        int[] calculateDistanceToSnap = carouselSnapHelper.calculateDistanceToSnap(carouselSnapHelper.recyclerView.getLayoutManager(), view, true);
                        int i = calculateDistanceToSnap[0];
                        int i2 = calculateDistanceToSnap[1];
                        int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
                        if (calculateTimeForDeceleration > 0) {
                            action.update(i, i2, calculateTimeForDeceleration, this.mDecelerateInterpolator);
                        }
                    }
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                    float f;
                    float f2;
                    if (layoutManager.canScrollVertically()) {
                        f = displayMetrics.densityDpi;
                        f2 = 50.0f;
                    } else {
                        f = displayMetrics.densityDpi;
                        f2 = 100.0f;
                    }
                    return f2 / f;
                }
            };
        }
        return null;
    }
}
