package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.Reference;
import androidx.constraintlayout.solver.state.State;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Guideline;

/* loaded from: classes.dex */
public class GuidelineReference implements Reference {
    private Object key;
    private Guideline mGuidelineWidget;
    private int mOrientation;
    final State mState;
    private int mStart = -1;
    private int mEnd = -1;
    private float mPercent = 0.0f;

    @Override // androidx.constraintlayout.solver.state.Reference
    public Object getKey() {
        return this.key;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void percent(float f) {
        this.mStart = -1;
        this.mEnd = -1;
        this.mPercent = f;
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public void setKey(Object obj) {
        this.key = obj;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public GuidelineReference(State state) {
        this.mState = state;
    }

    public void start(Object obj) {
        this.mStart = this.mState.convertDimension(obj);
        this.mEnd = -1;
        this.mPercent = 0.0f;
    }

    public void end(Object obj) {
        this.mStart = -1;
        this.mEnd = this.mState.convertDimension(obj);
        this.mPercent = 0.0f;
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public void apply() {
        this.mGuidelineWidget.setOrientation(this.mOrientation);
        int i = this.mStart;
        if (i != -1) {
            this.mGuidelineWidget.setGuideBegin(i);
            return;
        }
        int i2 = this.mEnd;
        if (i2 != -1) {
            this.mGuidelineWidget.setGuideEnd(i2);
        } else {
            this.mGuidelineWidget.setGuidePercent(this.mPercent);
        }
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public ConstraintWidget getConstraintWidget() {
        if (this.mGuidelineWidget == null) {
            this.mGuidelineWidget = new Guideline();
        }
        return this.mGuidelineWidget;
    }

    @Override // androidx.constraintlayout.solver.state.Reference
    public void setConstraintWidget(ConstraintWidget constraintWidget) {
        if (constraintWidget instanceof Guideline) {
            this.mGuidelineWidget = (Guideline) constraintWidget;
        } else {
            this.mGuidelineWidget = null;
        }
    }
}
