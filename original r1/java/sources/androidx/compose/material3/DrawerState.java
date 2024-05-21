package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavigationDrawer.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J'\u0010 \u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u00032\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00140#H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010$J\u0011\u0010%\u001a\u00020!H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010&J\u0011\u0010'\u001a\u00020!H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010&J\u0019\u0010(\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010)R\u0017\u0010\b\u001a\u00020\u00038F¢\u0006\f\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\u00020\u00068F¢\u0006\f\u0012\u0004\b\u000e\u0010\n\u001a\u0004\b\r\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0011\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138F¢\u0006\f\u0012\u0004\b\u0015\u0010\n\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0019X\u0080\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\n\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u001d\u001a\u00020\u00038F¢\u0006\f\u0012\u0004\b\u001e\u0010\n\u001a\u0004\b\u001f\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Landroidx/compose/material3/DrawerState;", "", "initialValue", "Landroidx/compose/material3/DrawerValue;", "confirmStateChange", "Lkotlin/Function1;", "", "(Landroidx/compose/material3/DrawerValue;Lkotlin/jvm/functions/Function1;)V", "currentValue", "getCurrentValue$annotations", "()V", "getCurrentValue", "()Landroidx/compose/material3/DrawerValue;", "isAnimationRunning", "isAnimationRunning$annotations", "()Z", "isClosed", "isOpen", "offset", "Landroidx/compose/runtime/State;", "", "getOffset$annotations", "getOffset", "()Landroidx/compose/runtime/State;", "swipeableState", "Landroidx/compose/material3/SwipeableState;", "getSwipeableState$material3_release$annotations", "getSwipeableState$material3_release", "()Landroidx/compose/material3/SwipeableState;", "targetValue", "getTargetValue$annotations", "getTargetValue", "animateTo", "", "anim", "Landroidx/compose/animation/core/AnimationSpec;", "(Landroidx/compose/material3/DrawerValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "open", "snapTo", "(Landroidx/compose/material3/DrawerValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DrawerState {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final SwipeableState<DrawerValue> swipeableState;

    public static /* synthetic */ void getCurrentValue$annotations() {
    }

    public static /* synthetic */ void getOffset$annotations() {
    }

    public static /* synthetic */ void getSwipeableState$material3_release$annotations() {
    }

    public static /* synthetic */ void getTargetValue$annotations() {
    }

    public static /* synthetic */ void isAnimationRunning$annotations() {
    }

    public final SwipeableState<DrawerValue> getSwipeableState$material3_release() {
        return this.swipeableState;
    }

    public DrawerState(DrawerValue initialValue, Function1<? super DrawerValue, Boolean> confirmStateChange) {
        TweenSpec tweenSpec;
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
        tweenSpec = NavigationDrawerKt.AnimationSpec;
        this.swipeableState = new SwipeableState<>(initialValue, tweenSpec, confirmStateChange);
    }

    public /* synthetic */ DrawerState(DrawerValue drawerValue, AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(drawerValue, (i & 2) != 0 ? new Function1<DrawerValue, Boolean>() { // from class: androidx.compose.material3.DrawerState.1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(DrawerValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return true;
            }
        } : anonymousClass1);
    }

    public final boolean isOpen() {
        return getCurrentValue() == DrawerValue.Open;
    }

    public final boolean isClosed() {
        return getCurrentValue() == DrawerValue.Closed;
    }

    public final DrawerValue getCurrentValue() {
        return this.swipeableState.getCurrentValue();
    }

    public final boolean isAnimationRunning() {
        return this.swipeableState.isAnimationRunning();
    }

    public final Object open(Continuation<? super Unit> continuation) {
        TweenSpec tweenSpec;
        DrawerValue drawerValue = DrawerValue.Open;
        tweenSpec = NavigationDrawerKt.AnimationSpec;
        Object animateTo = animateTo(drawerValue, tweenSpec, continuation);
        return animateTo == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateTo : Unit.INSTANCE;
    }

    public final Object close(Continuation<? super Unit> continuation) {
        TweenSpec tweenSpec;
        DrawerValue drawerValue = DrawerValue.Closed;
        tweenSpec = NavigationDrawerKt.AnimationSpec;
        Object animateTo = animateTo(drawerValue, tweenSpec, continuation);
        return animateTo == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateTo : Unit.INSTANCE;
    }

    public final Object animateTo(DrawerValue drawerValue, AnimationSpec<Float> animationSpec, Continuation<? super Unit> continuation) {
        Object animateTo$material3_release = this.swipeableState.animateTo$material3_release(drawerValue, animationSpec, continuation);
        return animateTo$material3_release == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateTo$material3_release : Unit.INSTANCE;
    }

    public final Object snapTo(DrawerValue drawerValue, Continuation<? super Unit> continuation) {
        Object snapTo$material3_release = this.swipeableState.snapTo$material3_release(drawerValue, continuation);
        return snapTo$material3_release == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? snapTo$material3_release : Unit.INSTANCE;
    }

    public final DrawerValue getTargetValue() {
        return this.swipeableState.getTargetValue$material3_release();
    }

    public final State<Float> getOffset() {
        return this.swipeableState.getOffset();
    }

    /* compiled from: NavigationDrawer.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\b¨\u0006\n"}, d2 = {"Landroidx/compose/material3/DrawerState$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/material3/DrawerState;", "Landroidx/compose/material3/DrawerValue;", "confirmStateChange", "Lkotlin/Function1;", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<DrawerState, DrawerValue> Saver(final Function1<? super DrawerValue, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, DrawerState, DrawerValue>() { // from class: androidx.compose.material3.DrawerState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                public final DrawerValue invoke(SaverScope Saver, DrawerState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<DrawerValue, DrawerState>() { // from class: androidx.compose.material3.DrawerState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DrawerState invoke(DrawerValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DrawerState(it, confirmStateChange);
                }
            });
        }
    }
}
