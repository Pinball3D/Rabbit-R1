package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.Pools;

/* loaded from: classes.dex */
public class Cache {
    Pools.Pool<ArrayRow> optimizedArrayRowPool = new Pools.SimplePool(256);
    Pools.Pool<ArrayRow> arrayRowPool = new Pools.SimplePool(256);
    Pools.Pool<SolverVariable> solverVariablePool = new Pools.SimplePool(256);
    SolverVariable[] mIndexedVariables = new SolverVariable[32];
}
