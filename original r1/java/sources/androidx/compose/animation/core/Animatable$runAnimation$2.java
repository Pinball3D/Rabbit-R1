package androidx.compose.animation.core;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T, V] */
/* compiled from: Animatable.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Landroidx/compose/animation/core/AnimationResult;", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.Animatable$runAnimation$2", f = "Animatable.kt", i = {0, 0}, l = {305}, m = "invokeSuspend", n = {"endState", "clampingNeeded"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class Animatable$runAnimation$2<T, V> extends SuspendLambda implements Function1<Continuation<? super AnimationResult<T, V>>, Object> {
    final /* synthetic */ Animation<T, V> $animation;
    final /* synthetic */ Function1<Animatable<T, V>, Unit> $block;
    final /* synthetic */ T $initialVelocity;
    final /* synthetic */ long $startTime;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Animatable<T, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Animatable$runAnimation$2(Animatable<T, V> animatable, T t, Animation<T, V> animation, long j, Function1<? super Animatable<T, V>, Unit> function1, Continuation<? super Animatable$runAnimation$2> continuation) {
        super(1, continuation);
        this.this$0 = animatable;
        this.$initialVelocity = t;
        this.$animation = animation;
        this.$startTime = j;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new Animatable$runAnimation$2(this.this$0, this.$initialVelocity, this.$animation, this.$startTime, this.$block, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super AnimationResult<T, V>> continuation) {
        return ((Animatable$runAnimation$2) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final AnimationState copy$default;
        Ref.BooleanRef booleanRef;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.this$0.getInternalState$animation_core_release().setVelocityVector$animation_core_release((AnimationVector) this.this$0.getTypeConverter().getConvertToVector().invoke(this.$initialVelocity));
                this.this$0.setTargetValue(this.$animation.getTargetValue());
                this.this$0.setRunning(true);
                copy$default = AnimationStateKt.copy$default((AnimationState) this.this$0.getInternalState$animation_core_release(), (Object) null, (AnimationVector) null, 0L, Long.MIN_VALUE, false, 23, (Object) null);
                final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                Animation<T, V> animation = this.$animation;
                long j = this.$startTime;
                final Animatable<T, V> animatable = this.this$0;
                final Function1<Animatable<T, V>, Unit> function1 = this.$block;
                this.L$0 = copy$default;
                this.L$1 = booleanRef2;
                this.label = 1;
                if (SuspendAnimationKt.animate(copy$default, animation, j, new Function1<AnimationScope<T, V>, Unit>() { // from class: androidx.compose.animation.core.Animatable$runAnimation$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                        invoke((AnimationScope) obj2);
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    public final void invoke(AnimationScope<T, V> animate) {
                        Object clampToBounds;
                        Intrinsics.checkNotNullParameter(animate, "$this$animate");
                        SuspendAnimationKt.updateState(animate, animatable.getInternalState$animation_core_release());
                        clampToBounds = animatable.clampToBounds(animate.getValue());
                        if (Intrinsics.areEqual(clampToBounds, animate.getValue())) {
                            Function1<Animatable<T, V>, Unit> function12 = function1;
                            if (function12 != null) {
                                function12.invoke(animatable);
                                return;
                            }
                            return;
                        }
                        animatable.getInternalState$animation_core_release().setValue$animation_core_release(clampToBounds);
                        copy$default.setValue$animation_core_release(clampToBounds);
                        Function1<Animatable<T, V>, Unit> function13 = function1;
                        if (function13 != null) {
                            function13.invoke(animatable);
                        }
                        animate.cancelAnimation();
                        booleanRef2.element = true;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                booleanRef = booleanRef2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                booleanRef = (Ref.BooleanRef) this.L$1;
                copy$default = (AnimationState) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            AnimationEndReason animationEndReason = booleanRef.element ? AnimationEndReason.BoundReached : AnimationEndReason.Finished;
            this.this$0.endAnimation();
            return new AnimationResult(copy$default, animationEndReason);
        } catch (CancellationException e) {
            this.this$0.endAnimation();
            throw e;
        }
    }
}
