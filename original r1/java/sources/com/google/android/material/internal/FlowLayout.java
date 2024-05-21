package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private int rowCount;
    private boolean singleLine;

    protected int getItemSpacing() {
        return this.itemSpacing;
    }

    protected int getLineSpacing() {
        return this.lineSpacing;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getRowCount() {
        return this.rowCount;
    }

    public boolean isSingleLine() {
        return this.singleLine;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemSpacing(int i) {
        this.itemSpacing = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLineSpacing(int i) {
        this.lineSpacing = i;
    }

    public void setSingleLine(boolean z) {
        this.singleLine = z;
    }

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    private void loadFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.FlowLayout, 0, 0);
        this.lineSpacing = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i6 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i6 - getPaddingRight();
        int i7 = paddingTop;
        int i8 = 0;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i3 = marginLayoutParams.leftMargin;
                    i4 = marginLayoutParams.rightMargin;
                } else {
                    i3 = 0;
                    i4 = 0;
                }
                int i10 = paddingLeft;
                if (paddingLeft + i3 + childAt.getMeasuredWidth() <= paddingRight || isSingleLine()) {
                    i5 = i10;
                } else {
                    i5 = getPaddingLeft();
                    i7 = this.lineSpacing + paddingTop;
                }
                int measuredWidth = i5 + i3 + childAt.getMeasuredWidth();
                int measuredHeight = i7 + childAt.getMeasuredHeight();
                if (measuredWidth > i8) {
                    i8 = measuredWidth;
                }
                paddingLeft = i5 + i3 + i4 + childAt.getMeasuredWidth() + this.itemSpacing;
                if (i9 == getChildCount() - 1) {
                    i8 += i4;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, i8 + getPaddingRight()), getMeasuredDimension(size2, mode2, paddingTop + getPaddingBottom()));
    }

    private static int getMeasuredDimension(int i, int i2, int i3) {
        if (i2 != Integer.MIN_VALUE) {
            return i2 != 1073741824 ? i3 : i;
        }
        return Math.min(i3, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() == 0) {
            this.rowCount = 0;
            return;
        }
        this.rowCount = 1;
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i7 = (i3 - i) - paddingLeft;
        int i8 = paddingRight;
        int i9 = paddingTop;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                    i5 = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int measuredWidth = i8 + i6 + childAt.getMeasuredWidth();
                if (!this.singleLine && measuredWidth > i7) {
                    i9 = this.lineSpacing + paddingTop;
                    this.rowCount++;
                    i8 = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.rowCount - 1));
                int i11 = i8 + i6;
                int measuredWidth2 = childAt.getMeasuredWidth() + i11;
                int measuredHeight = childAt.getMeasuredHeight() + i9;
                if (z2) {
                    childAt.layout(i7 - measuredWidth2, i9, (i7 - i8) - i6, measuredHeight);
                } else {
                    childAt.layout(i11, i9, measuredWidth2, measuredHeight);
                }
                i8 += i6 + i5 + childAt.getMeasuredWidth() + this.itemSpacing;
                paddingTop = measuredHeight;
            }
        }
    }

    public int getRowIndex(View view) {
        Object tag = view.getTag(R.id.row_index_key);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }
}
