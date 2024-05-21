package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;

/* loaded from: classes.dex */
public class HorizontalChainReference extends ChainReference {
    private Object mEndToEnd;
    private Object mEndToStart;
    private Object mStartToEnd;
    private Object mStartToStart;

    public void endToEnd(Object obj) {
        this.mEndToEnd = obj;
    }

    public void endToStart(Object obj) {
        this.mEndToStart = obj;
    }

    public void startToEnd(Object obj) {
        this.mStartToEnd = obj;
    }

    public void startToStart(Object obj) {
        this.mStartToStart = obj;
    }

    public HorizontalChainReference(State state) {
        super(state, State.Helper.HORIZONTAL_CHAIN);
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            this.mState.constraints(it.next()).clearHorizontal();
        }
        Iterator<Object> it2 = this.mReferences.iterator();
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        while (it2.hasNext()) {
            ConstraintReference constraints = this.mState.constraints(it2.next());
            if (constraintReference2 == null) {
                Object obj = this.mStartToStart;
                if (obj != null) {
                    constraints.startToStart(obj);
                } else {
                    Object obj2 = this.mStartToEnd;
                    if (obj2 != null) {
                        constraints.startToEnd(obj2);
                    } else {
                        constraints.startToStart(State.PARENT);
                    }
                }
                constraintReference2 = constraints;
            }
            if (constraintReference != null) {
                constraintReference.endToStart(constraints.getKey());
                constraints.startToEnd(constraintReference.getKey());
            }
            constraintReference = constraints;
        }
        if (constraintReference != null) {
            Object obj3 = this.mEndToStart;
            if (obj3 != null) {
                constraintReference.endToStart(obj3);
            } else {
                Object obj4 = this.mEndToEnd;
                if (obj4 != null) {
                    constraintReference.endToEnd(obj4);
                } else {
                    constraintReference.endToEnd(State.PARENT);
                }
            }
        }
        if (constraintReference2 != null && this.mBias != 0.5f) {
            constraintReference2.horizontalBias(this.mBias);
        }
        int i = AnonymousClass1.$SwitchMap$androidx$constraintlayout$solver$state$State$Chain[this.mStyle.ordinal()];
        if (i == 1) {
            constraintReference2.setHorizontalChainStyle(0);
        } else if (i == 2) {
            constraintReference2.setHorizontalChainStyle(1);
        } else {
            if (i != 3) {
                return;
            }
            constraintReference2.setHorizontalChainStyle(2);
        }
    }

    /* renamed from: androidx.constraintlayout.solver.state.helpers.HorizontalChainReference$1, reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$state$State$Chain;

        static {
            int[] iArr = new int[State.Chain.values().length];
            $SwitchMap$androidx$constraintlayout$solver$state$State$Chain = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Chain[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Chain[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
