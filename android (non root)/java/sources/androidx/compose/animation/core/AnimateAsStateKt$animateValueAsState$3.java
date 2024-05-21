package androidx.compose.animation.core;

import androidx.compose.runtime.State;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnimateAsState.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3", f = "AnimateAsState.kt", i = {0}, l = {419}, m = "invokeSuspend", n = {"$this$LaunchedEffect"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class AnimateAsStateKt$animateValueAsState$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
    final /* synthetic */ Animatable<T, V> $animatable;
    final /* synthetic */ Channel<T> $channel;
    final /* synthetic */ State<Function1<T, Unit>> $listener$delegate;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimateAsStateKt$animateValueAsState$3(Channel<T> channel, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends Function1<? super T, Unit>> state2, Continuation<? super AnimateAsStateKt$animateValueAsState$3> continuation) {
        super(2, continuation);
        this.$channel = channel;
        this.$animatable = animatable;
        this.$animSpec$delegate = state;
        this.$listener$delegate = state2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AnimateAsStateKt$animateValueAsState$3 animateAsStateKt$animateValueAsState$3 = new AnimateAsStateKt$animateValueAsState$3(this.$channel, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, continuation);
        animateAsStateKt$animateValueAsState$3.L$0 = obj;
        return animateAsStateKt$animateValueAsState$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AnimateAsStateKt$animateValueAsState$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimateAsState.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0004*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/animation/core/AnimationVector;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1", f = "AnimateAsState.kt", i = {}, l = {428}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
        final /* synthetic */ Animatable<T, V> $animatable;
        final /* synthetic */ State<Function1<T, Unit>> $listener$delegate;
        final /* synthetic */ T $newTarget;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(T t, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends Function1<? super T, Unit>> state2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$newTarget = t;
            this.$animatable = animatable;
            this.$animSpec$delegate = state;
            this.$listener$delegate = state2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$newTarget, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AnimationSpec animateValueAsState$lambda$6;
            Function1 animateValueAsState$lambda$4;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!Intrinsics.areEqual(this.$newTarget, this.$animatable.getTargetValue())) {
                    Animatable<T, V> animatable = this.$animatable;
                    T t = this.$newTarget;
                    animateValueAsState$lambda$6 = AnimateAsStateKt.animateValueAsState$lambda$6(this.$animSpec$delegate);
                    this.label = 1;
                    if (Animatable.animateTo$default(animatable, t, animateValueAsState$lambda$6, null, null, this, 12, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            animateValueAsState$lambda$4 = AnimateAsStateKt.animateValueAsState$lambda$4(this.$listener$delegate);
            if (animateValueAsState$lambda$4 != null) {
                animateValueAsState$lambda$4.invoke(this.$animatable.getValue());
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:5:0x0042). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r16) {
        /*
            r15 = this;
            r0 = r15
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L22
            if (r2 != r3) goto L1a
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.channels.ChannelIterator r2 = (kotlinx.coroutines.channels.ChannelIterator) r2
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.CoroutineScope r4 = (kotlinx.coroutines.CoroutineScope) r4
            kotlin.ResultKt.throwOnFailure(r16)
            r5 = r16
            goto L42
        L1a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L22:
            kotlin.ResultKt.throwOnFailure(r16)
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.CoroutineScope r2 = (kotlinx.coroutines.CoroutineScope) r2
            kotlinx.coroutines.channels.Channel<T> r4 = r0.$channel
            kotlinx.coroutines.channels.ChannelIterator r4 = r4.iterator()
            r14 = r4
            r4 = r2
            r2 = r14
        L32:
            r5 = r0
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r0.L$0 = r4
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r5 = r2.hasNext(r5)
            if (r5 != r1) goto L42
            return r1
        L42:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L78
            java.lang.Object r5 = r2.next()
            kotlinx.coroutines.channels.Channel<T> r6 = r0.$channel
            java.lang.Object r6 = r6.mo7207tryReceivePtdJZtk()
            java.lang.Object r6 = kotlinx.coroutines.channels.ChannelResult.m7217getOrNullimpl(r6)
            if (r6 != 0) goto L5c
            r8 = r5
            goto L5d
        L5c:
            r8 = r6
        L5d:
            r5 = 0
            r13 = 0
            androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1 r6 = new androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1
            androidx.compose.animation.core.Animatable<T, V> r9 = r0.$animatable
            androidx.compose.runtime.State<androidx.compose.animation.core.AnimationSpec<T>> r10 = r0.$animSpec$delegate
            androidx.compose.runtime.State<kotlin.jvm.functions.Function1<T, kotlin.Unit>> r11 = r0.$listener$delegate
            r12 = 0
            r7 = r6
            r7.<init>(r8, r9, r10, r11, r12)
            r9 = r6
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9
            r10 = 3
            r11 = 0
            r6 = r4
            r7 = r5
            r8 = r13
            kotlinx.coroutines.BuildersKt.launch$default(r6, r7, r8, r9, r10, r11)
            goto L32
        L78:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
