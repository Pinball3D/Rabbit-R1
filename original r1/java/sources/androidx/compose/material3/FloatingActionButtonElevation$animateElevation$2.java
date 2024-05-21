package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatingActionButton.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.FloatingActionButtonElevation$animateElevation$2", f = "FloatingActionButton.kt", i = {}, l = {555}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class FloatingActionButtonElevation$animateElevation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Animatable<Dp, AnimationVector1D> $animatable;
    final /* synthetic */ Interaction $interaction;
    final /* synthetic */ float $target;
    int label;
    final /* synthetic */ FloatingActionButtonElevation this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButtonElevation$animateElevation$2(Animatable<Dp, AnimationVector1D> animatable, FloatingActionButtonElevation floatingActionButtonElevation, float f, Interaction interaction, Continuation<? super FloatingActionButtonElevation$animateElevation$2> continuation) {
        super(2, continuation);
        this.$animatable = animatable;
        this.this$0 = floatingActionButtonElevation;
        this.$target = f;
        this.$interaction = interaction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FloatingActionButtonElevation$animateElevation$2(this.$animatable, this.this$0, this.$target, this.$interaction, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FloatingActionButtonElevation$animateElevation$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float f;
        float f2;
        float f3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            float m4897unboximpl = this.$animatable.getTargetValue().m4897unboximpl();
            f = this.this$0.pressedElevation;
            FocusInteraction.Focus focus = null;
            if (Dp.m4888equalsimpl0(m4897unboximpl, f)) {
                focus = new PressInteraction.Press(Offset.INSTANCE.m2416getZeroF1C5BW0(), null);
            } else {
                f2 = this.this$0.hoveredElevation;
                if (Dp.m4888equalsimpl0(m4897unboximpl, f2)) {
                    focus = new HoverInteraction.Enter();
                } else {
                    f3 = this.this$0.focusedElevation;
                    if (Dp.m4888equalsimpl0(m4897unboximpl, f3)) {
                        focus = new FocusInteraction.Focus();
                    }
                }
            }
            this.label = 1;
            if (ElevationKt.m1199animateElevationrAjV9yQ(this.$animatable, this.$target, focus, this.$interaction, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
