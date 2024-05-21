package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.state.helpers.AlignHorizontallyReference;
import androidx.constraintlayout.solver.state.helpers.AlignVerticallyReference;
import androidx.constraintlayout.solver.state.helpers.BarrierReference;
import androidx.constraintlayout.solver.state.helpers.GuidelineReference;
import androidx.constraintlayout.solver.state.helpers.HorizontalChainReference;
import androidx.constraintlayout.solver.state.helpers.VerticalChainReference;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class State {
    static final int CONSTRAINT_RATIO = 2;
    static final int CONSTRAINT_SPREAD = 0;
    static final int CONSTRAINT_WRAP = 1;
    public static final Integer PARENT = 0;
    static final int UNKNOWN = -1;
    public final ConstraintReference mParent;
    private int numHelpers;
    protected HashMap<Object, Reference> mReferences = new HashMap<>();
    protected HashMap<Object, HelperReference> mHelperReferences = new HashMap<>();

    /* loaded from: classes.dex */
    public enum Chain {
        SPREAD,
        SPREAD_INSIDE,
        PACKED
    }

    /* loaded from: classes.dex */
    public enum Constraint {
        LEFT_TO_LEFT,
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT,
        RIGHT_TO_RIGHT,
        START_TO_START,
        START_TO_END,
        END_TO_START,
        END_TO_END,
        TOP_TO_TOP,
        TOP_TO_BOTTOM,
        BOTTOM_TO_TOP,
        BOTTOM_TO_BOTTOM,
        BASELINE_TO_BASELINE,
        CENTER_HORIZONTALLY,
        CENTER_VERTICALLY
    }

    /* loaded from: classes.dex */
    public enum Direction {
        LEFT,
        RIGHT,
        START,
        END,
        TOP,
        BOTTOM
    }

    /* loaded from: classes.dex */
    public enum Helper {
        HORIZONTAL_CHAIN,
        VERTICAL_CHAIN,
        ALIGN_HORIZONTALLY,
        ALIGN_VERTICALLY,
        BARRIER,
        LAYER,
        FLOW
    }

    public State() {
        ConstraintReference constraintReference = new ConstraintReference(this);
        this.mParent = constraintReference;
        this.numHelpers = 0;
        this.mReferences.put(PARENT, constraintReference);
    }

    public void reset() {
        this.mHelperReferences.clear();
    }

    public int convertDimension(Object obj) {
        if (obj instanceof Float) {
            return ((Float) obj).intValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public ConstraintReference createConstraintReference(Object obj) {
        return new ConstraintReference(this);
    }

    public State width(Dimension dimension) {
        return setWidth(dimension);
    }

    public State height(Dimension dimension) {
        return setHeight(dimension);
    }

    public State setWidth(Dimension dimension) {
        this.mParent.setWidth(dimension);
        return this;
    }

    public State setHeight(Dimension dimension) {
        this.mParent.setHeight(dimension);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Reference reference(Object obj) {
        return this.mReferences.get(obj);
    }

    public ConstraintReference constraints(Object obj) {
        Reference reference = this.mReferences.get(obj);
        if (reference == null) {
            reference = createConstraintReference(obj);
            this.mReferences.put(obj, reference);
            reference.setKey(obj);
        }
        if (reference instanceof ConstraintReference) {
            return (ConstraintReference) reference;
        }
        return null;
    }

    private String createHelperKey() {
        StringBuilder sb = new StringBuilder("__HELPER_KEY_");
        int i = this.numHelpers;
        this.numHelpers = i + 1;
        return sb.append(i).append("__").toString();
    }

    public HelperReference helper(Object obj, Helper helper) {
        HelperReference horizontalChainReference;
        if (obj == null) {
            obj = createHelperKey();
        }
        HelperReference helperReference = this.mHelperReferences.get(obj);
        if (helperReference == null) {
            int i = AnonymousClass1.$SwitchMap$androidx$constraintlayout$solver$state$State$Helper[helper.ordinal()];
            if (i == 1) {
                horizontalChainReference = new HorizontalChainReference(this);
            } else if (i == 2) {
                horizontalChainReference = new VerticalChainReference(this);
            } else if (i == 3) {
                horizontalChainReference = new AlignHorizontallyReference(this);
            } else if (i == 4) {
                horizontalChainReference = new AlignVerticallyReference(this);
            } else if (i == 5) {
                horizontalChainReference = new BarrierReference(this);
            } else {
                helperReference = new HelperReference(this, helper);
                this.mHelperReferences.put(obj, helperReference);
            }
            helperReference = horizontalChainReference;
            this.mHelperReferences.put(obj, helperReference);
        }
        return helperReference;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.state.State$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$state$State$Helper;

        static {
            int[] iArr = new int[Helper.values().length];
            $SwitchMap$androidx$constraintlayout$solver$state$State$Helper = iArr;
            try {
                iArr[Helper.HORIZONTAL_CHAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Helper[Helper.VERTICAL_CHAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Helper[Helper.ALIGN_HORIZONTALLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Helper[Helper.ALIGN_VERTICALLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Helper[Helper.BARRIER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public GuidelineReference horizontalGuideline(Object obj) {
        return guideline(obj, 0);
    }

    public GuidelineReference verticalGuideline(Object obj) {
        return guideline(obj, 1);
    }

    public GuidelineReference guideline(Object obj, int i) {
        Reference reference = this.mReferences.get(obj);
        Reference reference2 = reference;
        if (reference == null) {
            GuidelineReference guidelineReference = new GuidelineReference(this);
            guidelineReference.setOrientation(i);
            guidelineReference.setKey(obj);
            this.mReferences.put(obj, guidelineReference);
            reference2 = guidelineReference;
        }
        return (GuidelineReference) reference2;
    }

    public BarrierReference barrier(Object obj, Direction direction) {
        BarrierReference barrierReference = (BarrierReference) helper(obj, Helper.BARRIER);
        barrierReference.setBarrierDirection(direction);
        return barrierReference;
    }

    public VerticalChainReference verticalChain(Object... objArr) {
        VerticalChainReference verticalChainReference = (VerticalChainReference) helper(null, Helper.VERTICAL_CHAIN);
        verticalChainReference.add(objArr);
        return verticalChainReference;
    }

    public HorizontalChainReference horizontalChain(Object... objArr) {
        HorizontalChainReference horizontalChainReference = (HorizontalChainReference) helper(null, Helper.HORIZONTAL_CHAIN);
        horizontalChainReference.add(objArr);
        return horizontalChainReference;
    }

    public AlignHorizontallyReference centerHorizontally(Object... objArr) {
        AlignHorizontallyReference alignHorizontallyReference = (AlignHorizontallyReference) helper(null, Helper.ALIGN_HORIZONTALLY);
        alignHorizontallyReference.add(objArr);
        return alignHorizontallyReference;
    }

    public AlignVerticallyReference centerVertically(Object... objArr) {
        AlignVerticallyReference alignVerticallyReference = (AlignVerticallyReference) helper(null, Helper.ALIGN_VERTICALLY);
        alignVerticallyReference.add(objArr);
        return alignVerticallyReference;
    }

    public void directMapping() {
        for (Object obj : this.mReferences.keySet()) {
            constraints(obj).setView(obj);
        }
    }

    public void map(Object obj, Object obj2) {
        constraints(obj).setView(obj2);
    }

    public void apply(ConstraintWidgetContainer constraintWidgetContainer) {
        constraintWidgetContainer.removeAllChildren();
        this.mParent.getWidth().apply(this, constraintWidgetContainer, 0);
        this.mParent.getHeight().apply(this, constraintWidgetContainer, 1);
        for (Object obj : this.mHelperReferences.keySet()) {
            HelperWidget helperWidget = this.mHelperReferences.get(obj).getHelperWidget();
            if (helperWidget != null) {
                Reference reference = this.mReferences.get(obj);
                if (reference == null) {
                    reference = constraints(obj);
                }
                reference.setConstraintWidget(helperWidget);
            }
        }
        Iterator<Object> it = this.mReferences.keySet().iterator();
        while (it.hasNext()) {
            Reference reference2 = this.mReferences.get(it.next());
            if (reference2 != this.mParent) {
                ConstraintWidget constraintWidget = reference2.getConstraintWidget();
                constraintWidget.setParent(null);
                if (reference2 instanceof GuidelineReference) {
                    reference2.apply();
                }
                constraintWidgetContainer.add(constraintWidget);
            } else {
                reference2.setConstraintWidget(constraintWidgetContainer);
            }
        }
        Iterator<Object> it2 = this.mHelperReferences.keySet().iterator();
        while (it2.hasNext()) {
            HelperReference helperReference = this.mHelperReferences.get(it2.next());
            if (helperReference.getHelperWidget() != null) {
                Iterator<Object> it3 = helperReference.mReferences.iterator();
                while (it3.hasNext()) {
                    helperReference.getHelperWidget().add(this.mReferences.get(it3.next()).getConstraintWidget());
                }
                helperReference.apply();
            }
        }
        Iterator<Object> it4 = this.mReferences.keySet().iterator();
        while (it4.hasNext()) {
            this.mReferences.get(it4.next()).apply();
        }
    }
}
