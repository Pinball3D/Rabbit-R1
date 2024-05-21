package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable variable = null;
    float constantValue = 0.0f;
    boolean used = false;
    ArrayList<SolverVariable> variablesToUpdate = new ArrayList<>();
    boolean isSimpleDefinition = false;

    /* loaded from: classes.dex */
    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f, boolean z);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i);

        float getVariableValue(int i);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f);

        float remove(SolverVariable solverVariable, boolean z);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getKey() {
        return this.variable;
    }

    public ArrayRow() {
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.variable;
        return solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0f);
    }

    public String toString() {
        return toReadableString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toReadableString() {
        /*
            r10 = this;
            androidx.constraintlayout.solver.SolverVariable r0 = r10.variable
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L18
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            androidx.constraintlayout.solver.SolverVariable r1 = r10.variable
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
        L18:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = " = "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            float r1 = r10.constantValue
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L49
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            float r1 = r10.constantValue
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = r4
            goto L4a
        L49:
            r1 = r3
        L4a:
            androidx.constraintlayout.solver.ArrayRow$ArrayRowVariables r5 = r10.variables
            int r5 = r5.getCurrentSize()
        L50:
            if (r3 >= r5) goto Lea
            androidx.constraintlayout.solver.ArrayRow$ArrayRowVariables r6 = r10.variables
            androidx.constraintlayout.solver.SolverVariable r6 = r6.getVariable(r3)
            if (r6 != 0) goto L5c
            goto Le6
        L5c:
            androidx.constraintlayout.solver.ArrayRow$ArrayRowVariables r7 = r10.variables
            float r7 = r7.getVariableValue(r3)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L68
            goto Le6
        L68:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L88
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto Lb2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = "- "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto Lb1
        L88:
            if (r8 <= 0) goto L9e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = " + "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto Lb2
        L9e:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = " - "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
        Lb1:
            float r7 = r7 * r9
        Lb2:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto Lca
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r0 = r0.toString()
            goto Le5
        Lca:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.StringBuilder r0 = r0.append(r7)
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r0 = r0.toString()
        Le5:
            r1 = r4
        Le6:
            int r3 = r3 + 1
            goto L50
        Lea:
            if (r1 != 0) goto Lff
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.StringBuilder r10 = r10.append(r0)
            java.lang.String r0 = "0.0"
            java.lang.StringBuilder r10 = r10.append(r0)
            java.lang.String r0 = r10.toString()
        Lff:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.ArrayRow.toReadableString():java.lang.String");
    }

    public void reset() {
        this.variable = null;
        this.variables.clear();
        this.constantValue = 0.0f;
        this.isSimpleDefinition = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowDefinition(SolverVariable solverVariable, int i) {
        this.variable = solverVariable;
        float f = i;
        solverVariable.computedValue = f;
        this.constantValue = f;
        this.isSimpleDefinition = true;
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.constantValue = i * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.constantValue = i;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            } else {
                z = false;
            }
            this.constantValue = i;
            if (z) {
                this.variables.put(solverVariable, 1.0f);
                this.variables.put(solverVariable2, -1.0f);
                return this;
            }
        }
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow addSingleError(SolverVariable solverVariable, int i) {
        this.variables.put(solverVariable, i);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            } else {
                z = false;
            }
            this.constantValue = i;
            if (z) {
                this.variables.put(solverVariable, 1.0f);
                this.variables.put(solverVariable2, -1.0f);
                this.variables.put(solverVariable3, -1.0f);
                return this;
            }
        }
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, 1.0f);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i, SolverVariable solverVariable2) {
        this.constantValue = i;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            } else {
                z = false;
            }
            this.constantValue = i;
            if (z) {
                this.variables.put(solverVariable, 1.0f);
                this.variables.put(solverVariable2, -1.0f);
                this.variables.put(solverVariable3, 1.0f);
                return this;
            }
        }
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, -1.0f);
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.constantValue = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f3 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    public ArrayRow createRowEqualDimension(float f, float f2, float f3, SolverVariable solverVariable, int i, SolverVariable solverVariable2, int i2, SolverVariable solverVariable3, int i3, SolverVariable solverVariable4, int i4) {
        if (f2 == 0.0f || f == f3) {
            this.constantValue = ((-i) - i2) + i3 + i4;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.constantValue = ((-i) - i2) + (i3 * f4) + (i4 * f4);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.constantValue = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.constantValue = i;
        } else if (f >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.constantValue = -i2;
        } else {
            float f2 = 1.0f - f;
            this.variables.put(solverVariable, f2 * 1.0f);
            this.variables.put(solverVariable2, f2 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f);
            this.variables.put(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.constantValue = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i) {
        this.variables.put(linearSystem.createErrorVariable(i, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f);
        this.variables.put(solverVariable4, -f);
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.constantValue = -f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int sizeInBytes() {
        return (this.variable != null ? 4 : 0) + 8 + this.variables.sizeInBytes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensurePositiveConstant() {
        float f = this.constantValue;
        if (f < 0.0f) {
            this.constantValue = f * (-1.0f);
            this.variables.invert();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z;
        SolverVariable chooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (chooseSubjectInVariables == null) {
            z = true;
        } else {
            pivot(chooseSubjectInVariables);
            z = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
        }
        return z;
    }

    SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        boolean isNew;
        boolean isNew2;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        SolverVariable solverVariable2 = null;
        for (int i = 0; i < currentSize; i++) {
            float variableValue = this.variables.getVariableValue(i);
            SolverVariable variable = this.variables.getVariable(i);
            if (variable.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null) {
                    isNew2 = isNew(variable, linearSystem);
                } else if (f > variableValue) {
                    isNew2 = isNew(variable, linearSystem);
                } else if (!z && isNew(variable, linearSystem)) {
                    f = variableValue;
                    solverVariable = variable;
                    z = true;
                }
                z = isNew2;
                f = variableValue;
                solverVariable = variable;
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null) {
                    isNew = isNew(variable, linearSystem);
                } else if (f2 > variableValue) {
                    isNew = isNew(variable, linearSystem);
                } else if (!z2 && isNew(variable, linearSystem)) {
                    f2 = variableValue;
                    solverVariable2 = variable;
                    z2 = true;
                }
                z2 = isNew;
                f2 = variableValue;
                solverVariable2 = variable;
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.variable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.variable = null;
        }
        float remove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.variable = solverVariable;
        if (remove == 1.0f) {
            return;
        }
        this.constantValue /= remove;
        this.variables.divideByAmount(remove);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public boolean isEmpty() {
        return this.variable == null && this.constantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromRow(ArrayRow arrayRow, boolean z) {
        this.constantValue += arrayRow.constantValue * this.variables.use(arrayRow, z);
        if (z) {
            arrayRow.variable.removeFromRow(this);
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable.isFinalValue) {
            this.constantValue += solverVariable.computedValue * this.variables.get(solverVariable);
            this.variables.remove(solverVariable, z);
            if (z) {
                solverVariable.removeFromRow(this);
            }
        }
    }

    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i = 0; i < currentSize; i++) {
            float variableValue = this.variables.getVariableValue(i);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i);
                if ((zArr == null || !zArr[variable.id]) && variable != solverVariable && ((variable.mType == SolverVariable.Type.SLACK || variable.mType == SolverVariable.Type.ERROR) && variableValue < f)) {
                    f = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = 0.0f;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int i = 0; i < arrayRow.variables.getCurrentSize(); i++) {
                this.variables.add(arrayRow.variables.getVariable(i), arrayRow.variables.getVariableValue(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        float f = 1.0f;
        if (solverVariable.strength != 1) {
            if (solverVariable.strength == 2) {
                f = 1000.0f;
            } else if (solverVariable.strength == 3) {
                f = 1000000.0f;
            } else if (solverVariable.strength == 4) {
                f = 1.0E9f;
            } else if (solverVariable.strength == 5) {
                f = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int currentSize = this.variables.getCurrentSize();
            for (int i = 0; i < currentSize; i++) {
                SolverVariable variable = this.variables.getVariable(i);
                if (variable.definitionId != -1 || variable.isFinalValue) {
                    this.variablesToUpdate.add(variable);
                }
            }
            if (this.variablesToUpdate.size() > 0) {
                Iterator<SolverVariable> it = this.variablesToUpdate.iterator();
                while (it.hasNext()) {
                    SolverVariable next = it.next();
                    if (next.isFinalValue) {
                        updateFromFinalVariable(linearSystem, next, true);
                    } else {
                        updateFromRow(linearSystem.mRows[next.definitionId], true);
                    }
                }
                this.variablesToUpdate.clear();
            } else {
                z = true;
            }
        }
    }
}
