package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;

/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public static final int BOTTOM = 3;
    public static final int END = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int START = 5;
    public static final int TOP = 2;
    private androidx.constraintlayout.solver.widgets.Barrier mBarrier;
    private int mIndicatedType;
    private int mResolvedType;

    public int getType() {
        return this.mIndicatedType;
    }

    public void setType(int i) {
        this.mIndicatedType = i;
    }

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    private void updateType(ConstraintWidget constraintWidget, int i, boolean z) {
        this.mResolvedType = i;
        if (z) {
            int i2 = this.mIndicatedType;
            if (i2 == 5) {
                this.mResolvedType = 1;
            } else if (i2 == 6) {
                this.mResolvedType = 0;
            }
        } else {
            int i3 = this.mIndicatedType;
            if (i3 == 5) {
                this.mResolvedType = 0;
            } else if (i3 == 6) {
                this.mResolvedType = 1;
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.solver.widgets.Barrier) {
            ((androidx.constraintlayout.solver.widgets.Barrier) constraintWidget).setBarrierType(this.mResolvedType);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void resolveRtl(ConstraintWidget constraintWidget, boolean z) {
        updateType(constraintWidget, this.mIndicatedType, z);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.mBarrier = new androidx.constraintlayout.solver.widgets.Barrier();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.mBarrier.setAllowsGoneWidget(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.mBarrier.setMargin(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
        }
        this.mHelperWidget = this.mBarrier;
        validateParams();
    }

    public void setAllowsGoneWidget(boolean z) {
        this.mBarrier.setAllowsGoneWidget(z);
    }

    public boolean allowsGoneWidget() {
        return this.mBarrier.allowsGoneWidget();
    }

    public void setDpMargin(int i) {
        this.mBarrier.setMargin((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public int getMargin() {
        return this.mBarrier.getMargin();
    }

    public void setMargin(int i) {
        this.mBarrier.setMargin(i);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget helperWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        super.loadParameters(constraint, helperWidget, layoutParams, sparseArray);
        if (helperWidget instanceof androidx.constraintlayout.solver.widgets.Barrier) {
            androidx.constraintlayout.solver.widgets.Barrier barrier = (androidx.constraintlayout.solver.widgets.Barrier) helperWidget;
            updateType(barrier, constraint.layout.mBarrierDirection, ((ConstraintWidgetContainer) helperWidget.getParent()).isRtl());
            barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
            barrier.setMargin(constraint.layout.mBarrierMargin);
        }
    }
}
