package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    private static final boolean DEBUG = false;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    private static final int MODE_SHIFT = 30;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;
    private ConstraintWidgetContainer constraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private Measure mMeasure = new Measure();

    /* loaded from: classes.dex */
    public static class Measure {
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public boolean useCurrentDimensions;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    /* loaded from: classes.dex */
    public enum MeasureType {
    }

    /* loaded from: classes.dex */
    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mVariableDimensionsWidgets.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i);
            if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                this.mVariableDimensionsWidgets.add(constraintWidget);
            }
        }
        constraintWidgetContainer.invalidateGraph();
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.constraintWidgetContainer = constraintWidgetContainer;
    }

    private void measureChildren(ConstraintWidgetContainer constraintWidgetContainer) {
        int size = constraintWidgetContainer.mChildren.size();
        Measurer measurer = constraintWidgetContainer.getMeasurer();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i);
            if (!(constraintWidget instanceof Guideline) && (!constraintWidget.horizontalRun.dimension.resolved || !constraintWidget.verticalRun.dimension.resolved)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.getDimensionBehaviour(1);
                if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.mMatchConstraintDefaultHeight == 1) {
                    measure(measurer, constraintWidget, false);
                    if (constraintWidgetContainer.mMetrics != null) {
                        constraintWidgetContainer.mMetrics.measuredWidgets++;
                    }
                }
            }
        }
        measurer.didMeasures();
    }

    private void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, String str, int i, int i2) {
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i);
        constraintWidgetContainer.setHeight(i2);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.constraintWidgetContainer.layout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:185:0x031e, code lost:
    
        if (r10 != false) goto L188;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long solverMeasure(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r23, int r24, int r25, int r26, int r27, int r28, int r29, int r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.solverMeasure(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, int, int, int, int, int, int, int, int, int):long");
    }

    private boolean measure(Measurer measurer, ConstraintWidget constraintWidget, boolean z) {
        this.mMeasure.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
        this.mMeasure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        this.mMeasure.horizontalDimension = constraintWidget.getWidth();
        this.mMeasure.verticalDimension = constraintWidget.getHeight();
        this.mMeasure.measuredNeedsSolverPass = false;
        this.mMeasure.useCurrentDimensions = z;
        boolean z2 = this.mMeasure.horizontalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z3 = this.mMeasure.verticalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z5 = z3 && constraintWidget.mDimensionRatio > 0.0f;
        if (z4 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            this.mMeasure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z5 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            this.mMeasure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(constraintWidget, this.mMeasure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
        this.mMeasure.useCurrentDimensions = false;
        return this.mMeasure.measuredNeedsSolverPass;
    }
}
