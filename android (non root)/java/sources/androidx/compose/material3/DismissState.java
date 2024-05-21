package androidx.compose.material3;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.unit.Density;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SwipeToDismiss.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\b\u0007\u0018\u0000 -2\u00020\u0001:\u0001-BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005\u0012.\b\u0002\u0010\u0007\u001a(\u0012\u0004\u0012\u00020\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000e¢\u0006\u0002\u0010\u000fJ\u0019\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0014H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010&J\u000e\u0010'\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0014J\u0006\u0010(\u001a\u00020\nJ\u0011\u0010)\u001a\u00020$H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010*J\u0019\u0010+\u001a\u00020$2\u0006\u0010!\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010,R\u0011\u0010\u0010\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010!\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, d2 = {"Landroidx/compose/material3/DismissState;", "", "initialValue", "Landroidx/compose/material3/DismissValue;", "confirmValueChange", "Lkotlin/Function1;", "", "positionalThreshold", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "", "Lkotlin/ParameterName;", "name", "totalDistance", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "currentValue", "getCurrentValue", "()Landroidx/compose/material3/DismissValue;", "dismissDirection", "Landroidx/compose/material3/DismissDirection;", "getDismissDirection", "()Landroidx/compose/material3/DismissDirection;", "offset", "getOffset$material3_release", "()Ljava/lang/Float;", NotificationCompat.CATEGORY_PROGRESS, "getProgress", "()F", "swipeableState", "Landroidx/compose/material3/SwipeableV2State;", "getSwipeableState$material3_release", "()Landroidx/compose/material3/SwipeableV2State;", "targetValue", "getTargetValue", "dismiss", "", "direction", "(Landroidx/compose/material3/DismissDirection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isDismissed", "requireOffset", "reset", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "snapTo", "(Landroidx/compose/material3/DismissValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DismissState {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final SwipeableV2State<DismissValue> swipeableState;

    public final SwipeableV2State<DismissValue> getSwipeableState$material3_release() {
        return this.swipeableState;
    }

    public DismissState(DismissValue initialValue, Function1<? super DismissValue, Boolean> confirmValueChange, Function2<? super Density, ? super Float, Float> positionalThreshold) {
        float f;
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(confirmValueChange, "confirmValueChange");
        Intrinsics.checkNotNullParameter(positionalThreshold, "positionalThreshold");
        f = SwipeToDismissKt.DismissThreshold;
        this.swipeableState = new SwipeableV2State<>(initialValue, null, confirmValueChange, positionalThreshold, f, 2, null);
    }

    public /* synthetic */ DismissState(DismissValue dismissValue, AnonymousClass1 anonymousClass1, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(dismissValue, (i & 2) != 0 ? new Function1<DismissValue, Boolean>() { // from class: androidx.compose.material3.DismissState.1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(DismissValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return true;
            }
        } : anonymousClass1, (i & 4) != 0 ? SwipeToDismissDefaults.INSTANCE.getFixedPositionalThreshold() : function2);
    }

    public final Float getOffset$material3_release() {
        return this.swipeableState.getOffset();
    }

    public final float requireOffset() {
        return this.swipeableState.requireOffset();
    }

    public final DismissValue getCurrentValue() {
        return this.swipeableState.getCurrentValue();
    }

    public final DismissValue getTargetValue() {
        return this.swipeableState.getTargetValue();
    }

    public final float getProgress() {
        return this.swipeableState.getProgress();
    }

    public final DismissDirection getDismissDirection() {
        if (Intrinsics.areEqual(getOffset$material3_release(), 0.0f) || getOffset$material3_release() == null) {
            return null;
        }
        Float offset$material3_release = getOffset$material3_release();
        Intrinsics.checkNotNull(offset$material3_release);
        return offset$material3_release.floatValue() > 0.0f ? DismissDirection.StartToEnd : DismissDirection.EndToStart;
    }

    public final boolean isDismissed(DismissDirection direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        return getCurrentValue() == (direction == DismissDirection.StartToEnd ? DismissValue.DismissedToEnd : DismissValue.DismissedToStart);
    }

    public final Object snapTo(DismissValue dismissValue, Continuation<? super Unit> continuation) {
        Object snapTo = this.swipeableState.snapTo(dismissValue, continuation);
        return snapTo == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? snapTo : Unit.INSTANCE;
    }

    public final Object reset(Continuation<? super Unit> continuation) {
        Object animateTo$default = SwipeableV2State.animateTo$default(this.swipeableState, DismissValue.Default, 0.0f, continuation, 2, null);
        return animateTo$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateTo$default : Unit.INSTANCE;
    }

    public final Object dismiss(DismissDirection dismissDirection, Continuation<? super Unit> continuation) {
        Object animateTo$default = SwipeableV2State.animateTo$default(this.swipeableState, dismissDirection == DismissDirection.StartToEnd ? DismissValue.DismissedToEnd : DismissValue.DismissedToStart, 0.0f, continuation, 2, null);
        return animateTo$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateTo$default : Unit.INSTANCE;
    }

    /* compiled from: SwipeToDismiss.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\b2,\u0010\n\u001a(\u0012\u0004\u0012\u00020\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/DismissState$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/material3/DismissState;", "Landroidx/compose/material3/DismissValue;", "confirmValueChange", "Lkotlin/Function1;", "", "positionalThreshold", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "", "Lkotlin/ParameterName;", "name", "totalDistance", "Lkotlin/ExtensionFunctionType;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<DismissState, DismissValue> Saver(final Function1<? super DismissValue, Boolean> confirmValueChange, final Function2<? super Density, ? super Float, Float> positionalThreshold) {
            Intrinsics.checkNotNullParameter(confirmValueChange, "confirmValueChange");
            Intrinsics.checkNotNullParameter(positionalThreshold, "positionalThreshold");
            return SaverKt.Saver(new Function2<SaverScope, DismissState, DismissValue>() { // from class: androidx.compose.material3.DismissState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                public final DismissValue invoke(SaverScope Saver, DismissState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<DismissValue, DismissState>() { // from class: androidx.compose.material3.DismissState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DismissState invoke(DismissValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DismissState(it, confirmValueChange, positionalThreshold);
                }
            });
        }
    }
}
