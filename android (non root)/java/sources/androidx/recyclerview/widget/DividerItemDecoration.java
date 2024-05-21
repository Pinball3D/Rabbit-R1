package androidx.recyclerview.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class DividerItemDecoration extends RecyclerView.ItemDecoration {
    private static final int[] ATTRS = {R.attr.listDivider};
    public static final int HORIZONTAL = 0;
    private static final String TAG = "DividerItem";
    public static final int VERTICAL = 1;
    private final Rect mBounds = new Rect();
    private Drawable mDivider;
    private int mOrientation;

    public Drawable getDrawable() {
        return this.mDivider;
    }

    public DividerItemDecoration(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(ATTRS);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        this.mDivider = drawable;
        if (drawable == null) {
            Log.w(TAG, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        obtainStyledAttributes.recycle();
        setOrientation(i);
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
        }
        this.mOrientation = i;
    }

    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.mDivider = drawable;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null || this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawVertical(canvas, recyclerView);
        } else {
            drawHorizontal(canvas, recyclerView);
        }
    }

    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int width;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.mBounds);
            int round = this.mBounds.bottom + Math.round(childAt.getTranslationY());
            this.mDivider.setBounds(i, round - this.mDivider.getIntrinsicHeight(), width, round);
            this.mDivider.draw(canvas);
        }
        canvas.restore();
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.mBounds);
            int round = this.mBounds.right + Math.round(childAt.getTranslationX());
            this.mDivider.setBounds(round - this.mDivider.getIntrinsicWidth(), i, round, height);
            this.mDivider.draw(canvas);
        }
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        Drawable drawable = this.mDivider;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.mOrientation == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }
}
