package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HelperReferences extends WidgetRun {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        return false;
    }

    public HelperReferences(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void clear() {
        this.runGroup = null;
        this.start.clear();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
    }

    private void addDependency(DependencyNode dependencyNode) {
        this.start.dependencies.add(dependencyNode);
        dependencyNode.targets.add(this.start);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void apply() {
        if (this.widget instanceof Barrier) {
            this.start.delegateToWidgetRun = true;
            Barrier barrier = (Barrier) this.widget;
            int barrierType = barrier.getBarrierType();
            boolean allowsGoneWidget = barrier.allowsGoneWidget();
            int i = 0;
            if (barrierType == 0) {
                this.start.type = DependencyNode.Type.LEFT;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget = barrier.mWidgets[i];
                    if (allowsGoneWidget || constraintWidget.getVisibility() != 8) {
                        DependencyNode dependencyNode = constraintWidget.horizontalRun.start;
                        dependencyNode.dependencies.add(this.start);
                        this.start.targets.add(dependencyNode);
                    }
                    i++;
                }
                addDependency(this.widget.horizontalRun.start);
                addDependency(this.widget.horizontalRun.end);
                return;
            }
            if (barrierType == 1) {
                this.start.type = DependencyNode.Type.RIGHT;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget2 = barrier.mWidgets[i];
                    if (allowsGoneWidget || constraintWidget2.getVisibility() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget2.horizontalRun.end;
                        dependencyNode2.dependencies.add(this.start);
                        this.start.targets.add(dependencyNode2);
                    }
                    i++;
                }
                addDependency(this.widget.horizontalRun.start);
                addDependency(this.widget.horizontalRun.end);
                return;
            }
            if (barrierType == 2) {
                this.start.type = DependencyNode.Type.TOP;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget3 = barrier.mWidgets[i];
                    if (allowsGoneWidget || constraintWidget3.getVisibility() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget3.verticalRun.start;
                        dependencyNode3.dependencies.add(this.start);
                        this.start.targets.add(dependencyNode3);
                    }
                    i++;
                }
                addDependency(this.widget.verticalRun.start);
                addDependency(this.widget.verticalRun.end);
                return;
            }
            if (barrierType != 3) {
                return;
            }
            this.start.type = DependencyNode.Type.BOTTOM;
            while (i < barrier.mWidgetsCount) {
                ConstraintWidget constraintWidget4 = barrier.mWidgets[i];
                if (allowsGoneWidget || constraintWidget4.getVisibility() != 8) {
                    DependencyNode dependencyNode4 = constraintWidget4.verticalRun.end;
                    dependencyNode4.dependencies.add(this.start);
                    this.start.targets.add(dependencyNode4);
                }
                i++;
            }
            addDependency(this.widget.verticalRun.start);
            addDependency(this.widget.verticalRun.end);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        Barrier barrier = (Barrier) this.widget;
        int barrierType = barrier.getBarrierType();
        Iterator<DependencyNode> it = this.start.targets.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = it.next().value;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (barrierType == 0 || barrierType == 2) {
            this.start.resolve(i2 + barrier.getMargin());
        } else {
            this.start.resolve(i + barrier.getMargin());
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        if (this.widget instanceof Barrier) {
            int barrierType = ((Barrier) this.widget).getBarrierType();
            if (barrierType == 0 || barrierType == 1) {
                this.widget.setX(this.start.value);
            } else {
                this.widget.setY(this.start.value);
            }
        }
    }
}
