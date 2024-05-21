package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Overscroll.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JE\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\"\u0010\u000e\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000fH\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013J9\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001aH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\t\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroidx/compose/foundation/NoOpOverscrollEffect;", "Landroidx/compose/foundation/OverscrollEffect;", "()V", "effectModifier", "Landroidx/compose/ui/Modifier;", "getEffectModifier", "()Landroidx/compose/ui/Modifier;", "isInProgress", "", "()Z", "applyToFling", "", "velocity", "Landroidx/compose/ui/unit/Velocity;", "performFling", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "applyToFling-BMRW4eQ", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyToScroll", "Landroidx/compose/ui/geometry/Offset;", "delta", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "performScroll", "Lkotlin/Function1;", "applyToScroll-Rhakbz0", "(JILkotlin/jvm/functions/Function1;)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NoOpOverscrollEffect implements OverscrollEffect {
    public static final NoOpOverscrollEffect INSTANCE = new NoOpOverscrollEffect();

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        return false;
    }

    private NoOpOverscrollEffect() {
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: applyToScroll-Rhakbz0 */
    public long mo164applyToScrollRhakbz0(long delta, int source, Function1<? super Offset, Offset> performScroll) {
        Intrinsics.checkNotNullParameter(performScroll, "performScroll");
        return performScroll.invoke(Offset.m2389boximpl(delta)).getPackedValue();
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: applyToFling-BMRW4eQ */
    public Object mo163applyToFlingBMRW4eQ(long j, Function2<? super Velocity, ? super Continuation<? super Velocity>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object invoke = function2.invoke(Velocity.m5099boximpl(j), continuation);
        return invoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? invoke : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public Modifier getEffectModifier() {
        return Modifier.INSTANCE;
    }
}
