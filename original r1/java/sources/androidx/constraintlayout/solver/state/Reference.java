package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public interface Reference {
    void apply();

    ConstraintWidget getConstraintWidget();

    Object getKey();

    void setConstraintWidget(ConstraintWidget constraintWidget);

    void setKey(Object obj);
}
