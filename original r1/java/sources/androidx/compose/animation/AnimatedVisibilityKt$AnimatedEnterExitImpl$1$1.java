package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: AnimatedVisibility.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1", f = "AnimatedVisibility.kt", i = {}, l = {748}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Transition<EnterExitState> $childTransition;
    final /* synthetic */ MutableState<Boolean> $isAnimationVisible;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1(Transition<EnterExitState> transition, MutableState<Boolean> mutableState, Continuation<? super AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1> continuation) {
        super(2, continuation);
        this.$childTransition = transition;
        this.$isAnimationVisible = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1(this.$childTransition, this.$isAnimationVisible, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final Transition<EnterExitState> transition = this.$childTransition;
            Flow snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0<Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.valueOf(transition.getCurrentState() == EnterExitState.Visible || transition.getTargetState() == EnterExitState.Visible);
                }
            });
            final MutableState<Boolean> mutableState = this.$isAnimationVisible;
            this.label = 1;
            if (snapshotFlow.collect(new FlowCollector<Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Boolean bool, Continuation continuation) {
                    return emit(bool.booleanValue(), (Continuation<? super Unit>) continuation);
                }

                public final Object emit(boolean z, Continuation<? super Unit> continuation) {
                    mutableState.setValue(Boxing.boxBoolean(z));
                    return Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
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
