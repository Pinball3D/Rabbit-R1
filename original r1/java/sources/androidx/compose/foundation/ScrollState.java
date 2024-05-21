package androidx.compose.foundation;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: Scroll.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 >2\u00020\u0001:\u0001>B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010+\u001a\u00020,2\u0006\u0010\"\u001a\u00020\u00032\u000e\b\u0002\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0.H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010/J\u0010\u00100\u001a\u00020\b2\u0006\u00101\u001a\u00020\bH\u0016JB\u00102\u001a\u00020,2\u0006\u00103\u001a\u0002042'\u00105\u001a#\b\u0001\u0012\u0004\u0012\u000207\u0012\n\u0012\b\u0012\u0004\u0012\u00020,08\u0012\u0006\u0012\u0004\u0018\u00010906¢\u0006\u0002\b:H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010;J\u0019\u0010<\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010=R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000f\u001a\u00020\n8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\fR$\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00038F@@X\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010\u0004R\u000e\u0010 \u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\"\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010\u0004R+\u0010'\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00038@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b*\u0010&\u001a\u0004\b(\u0010\u001e\"\u0004\b)\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006?"}, d2 = {"Landroidx/compose/foundation/ScrollState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "initial", "", "(I)V", "_maxValueState", "Landroidx/compose/runtime/MutableIntState;", "accumulator", "", "canScrollBackward", "", "getCanScrollBackward", "()Z", "canScrollBackward$delegate", "Landroidx/compose/runtime/State;", "canScrollForward", "getCanScrollForward", "canScrollForward$delegate", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "getInteractionSource", "()Landroidx/compose/foundation/interaction/InteractionSource;", "internalInteractionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "getInternalInteractionSource$foundation_release", "()Landroidx/compose/foundation/interaction/MutableInteractionSource;", "isScrollInProgress", "newMax", "maxValue", "getMaxValue", "()I", "setMaxValue$foundation_release", "scrollableState", "<set-?>", "value", "getValue", "setValue", "value$delegate", "Landroidx/compose/runtime/MutableIntState;", "viewportSize", "getViewportSize$foundation_release", "setViewportSize$foundation_release", "viewportSize$delegate", "animateScrollTo", "", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispatchRawDelta", "delta", "scroll", "scrollPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/ScrollScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scrollTo", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScrollState implements ScrollableState {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Saver<ScrollState, ?> Saver = SaverKt.Saver(new Function2<SaverScope, ScrollState, Integer>() { // from class: androidx.compose.foundation.ScrollState$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final Integer invoke(SaverScope Saver2, ScrollState it) {
            Intrinsics.checkNotNullParameter(Saver2, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf(it.getValue());
        }
    }, new Function1<Integer, ScrollState>() { // from class: androidx.compose.foundation.ScrollState$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ ScrollState invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final ScrollState invoke(int i) {
            return new ScrollState(i);
        }
    });
    private float accumulator;

    /* renamed from: value$delegate, reason: from kotlin metadata */
    private final MutableIntState value;

    /* renamed from: viewportSize$delegate, reason: from kotlin metadata */
    private final MutableIntState viewportSize = SnapshotIntStateKt.mutableIntStateOf(0);
    private final MutableInteractionSource internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
    private MutableIntState _maxValueState = SnapshotIntStateKt.mutableIntStateOf(Integer.MAX_VALUE);
    private final ScrollableState scrollableState = ScrollableStateKt.ScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.ScrollState$scrollableState$1
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Float invoke(Float f) {
            return invoke(f.floatValue());
        }

        public final Float invoke(float f) {
            float f2;
            f2 = ScrollState.this.accumulator;
            float value = ScrollState.this.getValue() + f + f2;
            float coerceIn = RangesKt.coerceIn(value, 0.0f, ScrollState.this.getMaxValue());
            boolean z = !(value == coerceIn);
            float value2 = coerceIn - ScrollState.this.getValue();
            int roundToInt = MathKt.roundToInt(value2);
            ScrollState scrollState = ScrollState.this;
            scrollState.setValue(scrollState.getValue() + roundToInt);
            ScrollState.this.accumulator = value2 - roundToInt;
            if (z) {
                f = value2;
            }
            return Float.valueOf(f);
        }
    });

    /* renamed from: canScrollForward$delegate, reason: from kotlin metadata */
    private final State canScrollForward = SnapshotStateKt.derivedStateOf(new Function0<Boolean>() { // from class: androidx.compose.foundation.ScrollState$canScrollForward$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(ScrollState.this.getValue() < ScrollState.this.getMaxValue());
        }
    });

    /* renamed from: canScrollBackward$delegate, reason: from kotlin metadata */
    private final State canScrollBackward = SnapshotStateKt.derivedStateOf(new Function0<Boolean>() { // from class: androidx.compose.foundation.ScrollState$canScrollBackward$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(ScrollState.this.getValue() > 0);
        }
    });

    /* renamed from: getInternalInteractionSource$foundation_release, reason: from getter */
    public final MutableInteractionSource getInternalInteractionSource() {
        return this.internalInteractionSource;
    }

    public ScrollState(int i) {
        this.value = SnapshotIntStateKt.mutableIntStateOf(i);
    }

    public final int getValue() {
        return this.value.getIntValue();
    }

    public final int getMaxValue() {
        return this._maxValueState.getIntValue();
    }

    public final void setMaxValue$foundation_release(int i) {
        this._maxValueState.setIntValue(i);
        if (getValue() > i) {
            setValue(i);
        }
    }

    public final int getViewportSize$foundation_release() {
        return this.viewportSize.getIntValue();
    }

    public final InteractionSource getInteractionSource() {
        return this.internalInteractionSource;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public Object scroll(MutatePriority mutatePriority, Function2<? super ScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object scroll = this.scrollableState.scroll(mutatePriority, function2, continuation);
        return scroll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scroll : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float delta) {
        return this.scrollableState.dispatchRawDelta(delta);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateScrollTo$default(ScrollState scrollState, int i, AnimationSpec animationSpec, Continuation continuation, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 0.0f, null, 7, null);
        }
        return scrollState.animateScrollTo(i, animationSpec, continuation);
    }

    public final Object animateScrollTo(int i, AnimationSpec<Float> animationSpec, Continuation<? super Unit> continuation) {
        Object animateScrollBy = ScrollExtensionsKt.animateScrollBy(this, i - getValue(), animationSpec, continuation);
        return animateScrollBy == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateScrollBy : Unit.INSTANCE;
    }

    public final Object scrollTo(int i, Continuation<? super Float> continuation) {
        return ScrollExtensionsKt.scrollBy(this, i - getValue(), continuation);
    }

    /* compiled from: Scroll.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/ScrollState$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/foundation/ScrollState;", "getSaver", "()Landroidx/compose/runtime/saveable/Saver;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<ScrollState, ?> getSaver() {
            return ScrollState.Saver;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setValue(int i) {
        this.value.setIntValue(i);
    }

    public final void setViewportSize$foundation_release(int i) {
        this.viewportSize.setIntValue(i);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward.getValue()).booleanValue();
    }
}
