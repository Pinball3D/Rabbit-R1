package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DimensionDependency extends DependencyNode {
    public int wrapValue;

    public DimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof HorizontalWidgetRun) {
            this.type = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.type = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.DependencyNode
    public void resolve(int i) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i;
        for (Dependency dependency : this.dependencies) {
            dependency.update(dependency);
        }
    }
}
