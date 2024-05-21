package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class WidgetContainer extends ConstraintWidget {
    public ArrayList<ConstraintWidget> mChildren;

    public ArrayList<ConstraintWidget> getChildren() {
        return this.mChildren;
    }

    public WidgetContainer() {
        this.mChildren = new ArrayList<>();
    }

    public WidgetContainer(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.mChildren = new ArrayList<>();
    }

    public WidgetContainer(int i, int i2) {
        super(i, i2);
        this.mChildren = new ArrayList<>();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void reset() {
        this.mChildren.clear();
        super.reset();
    }

    public void add(ConstraintWidget constraintWidget) {
        this.mChildren.add(constraintWidget);
        if (constraintWidget.getParent() != null) {
            ((WidgetContainer) constraintWidget.getParent()).remove(constraintWidget);
        }
        constraintWidget.setParent(this);
    }

    public void add(ConstraintWidget... constraintWidgetArr) {
        for (ConstraintWidget constraintWidget : constraintWidgetArr) {
            add(constraintWidget);
        }
    }

    public void remove(ConstraintWidget constraintWidget) {
        this.mChildren.remove(constraintWidget);
        constraintWidget.setParent(null);
    }

    public ConstraintWidgetContainer getRootConstraintContainer() {
        ConstraintWidget parent = getParent();
        ConstraintWidgetContainer constraintWidgetContainer = this instanceof ConstraintWidgetContainer ? (ConstraintWidgetContainer) this : null;
        while (parent != null) {
            ConstraintWidget parent2 = parent.getParent();
            if (parent instanceof ConstraintWidgetContainer) {
                constraintWidgetContainer = (ConstraintWidgetContainer) parent;
            }
            parent = parent2;
        }
        return constraintWidgetContainer;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void setOffset(int i, int i2) {
        super.setOffset(i, i2);
        int size = this.mChildren.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.mChildren.get(i3).setOffset(getRootX(), getRootY());
        }
    }

    public void layout() {
        ArrayList<ConstraintWidget> arrayList = this.mChildren;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).layout();
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void resetSolverVariables(Cache cache) {
        super.resetSolverVariables(cache);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            this.mChildren.get(i).resetSolverVariables(cache);
        }
    }

    public void removeAllChildren() {
        this.mChildren.clear();
    }
}
