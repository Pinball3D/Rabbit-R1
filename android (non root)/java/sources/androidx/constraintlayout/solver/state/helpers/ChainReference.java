package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.HelperReference;
import androidx.constraintlayout.solver.state.State;

/* loaded from: classes.dex */
public class ChainReference extends HelperReference {
    protected float mBias;
    protected State.Chain mStyle;

    public void bias(float f) {
        this.mBias = f;
    }

    public float getBias() {
        return this.mBias;
    }

    public void style(State.Chain chain) {
        this.mStyle = chain;
    }

    public ChainReference(State state, State.Helper helper) {
        super(state, helper);
        this.mBias = 0.5f;
        this.mStyle = State.Chain.SPREAD;
    }

    public State.Chain getStyle() {
        return State.Chain.SPREAD;
    }
}
