package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.SuspendAnimationKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: TransformableState.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/TransformScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableStateKt$animateZoomBy$3", f = "TransformableState.kt", i = {}, l = {138}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class TransformableStateKt$animateZoomBy$3 extends SuspendLambda implements Function2<TransformScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ Ref.FloatRef $previous;
    final /* synthetic */ float $zoomFactor;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableStateKt$animateZoomBy$3(Ref.FloatRef floatRef, float f, AnimationSpec<Float> animationSpec, Continuation<? super TransformableStateKt$animateZoomBy$3> continuation) {
        super(2, continuation);
        this.$previous = floatRef;
        this.$zoomFactor = f;
        this.$animationSpec = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TransformableStateKt$animateZoomBy$3 transformableStateKt$animateZoomBy$3 = new TransformableStateKt$animateZoomBy$3(this.$previous, this.$zoomFactor, this.$animationSpec, continuation);
        transformableStateKt$animateZoomBy$3.L$0 = obj;
        return transformableStateKt$animateZoomBy$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(TransformScope transformScope, Continuation<? super Unit> continuation) {
        return ((TransformableStateKt$animateZoomBy$3) create(transformScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final TransformScope transformScope = (TransformScope) this.L$0;
            AnimationState AnimationState$default = AnimationStateKt.AnimationState$default(this.$previous.element, 0.0f, 0L, 0L, false, 30, null);
            Float boxFloat = Boxing.boxFloat(this.$zoomFactor);
            AnimationSpec<Float> animationSpec = this.$animationSpec;
            final Ref.FloatRef floatRef = this.$previous;
            this.label = 1;
            if (SuspendAnimationKt.animateTo$default(AnimationState$default, boxFloat, animationSpec, false, new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.foundation.gestures.TransformableStateKt$animateZoomBy$3.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                    invoke2(animationScope);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(AnimationScope<Float, AnimationVector1D> animateTo) {
                    Intrinsics.checkNotNullParameter(animateTo, "$this$animateTo");
                    TransformScope.m362transformByd4ec7I$default(transformScope, Ref.FloatRef.this.element == 0.0f ? 1.0f : animateTo.getValue().floatValue() / Ref.FloatRef.this.element, 0L, 0.0f, 6, null);
                    Ref.FloatRef.this.element = animateTo.getValue().floatValue();
                }
            }, this, 4, null) == coroutine_suspended) {
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
