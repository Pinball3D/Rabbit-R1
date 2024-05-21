package androidx.constraintlayout.solver;

/* loaded from: classes.dex */
public class GoalRow extends ArrayRow {
    public GoalRow(Cache cache) {
        super(cache);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        super.addError(solverVariable);
        solverVariable.usageInRowCount--;
    }
}
