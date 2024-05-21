package androidx.compose.material3;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Job;

/* compiled from: Tooltip.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1", f = "Tooltip.kt", i = {}, l = {212}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Job> $onLongPress;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1(Function0<? extends Job> function0, Continuation<? super TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1> continuation) {
        super(2, continuation);
        this.$onLongPress = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1 tooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1 = new TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1(this.$onLongPress, continuation);
        tooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1.L$0 = obj;
        return tooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
        return ((TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Tooltip.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1", f = "Tooltip.kt", i = {0, 0, 0, 1, 1}, l = {217, 221, 229}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "pass", "longPressTimeout", "$this$awaitEachGesture", "pass"}, s = {"L$0", "L$1", "J$0", "L$0", "L$1"})
    /* renamed from: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Job> $onLongPress;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function0<? extends Job> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onLongPress = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onLongPress, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Tooltip.kt */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1$1", f = "Tooltip.kt", i = {}, l = {222}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00431 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super PointerInputChange>, Object> {
            final /* synthetic */ PointerEventPass $pass;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00431(PointerEventPass pointerEventPass, Continuation<? super C00431> continuation) {
                super(2, continuation);
                this.$pass = pointerEventPass;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00431 c00431 = new C00431(this.$pass, continuation);
                c00431.L$0 = obj;
                return c00431;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super PointerInputChange> continuation) {
                return ((C00431) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = TapGestureDetectorKt.waitForUpOrCancellation((AwaitPointerEventScope) this.L$0, this.$pass, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:1|(1:(1:(1:(6:6|7|(2:10|8)|11|12|13)(2:15|16))(5:17|18|19|12|13))(1:25))(2:32|(1:34)(1:35))|26|27|(1:29)|12|13|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
        
            return r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x007b, code lost:
        
            r3 = r15;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x00a3 A[LOOP:0: B:8:0x009d->B:10:0x00a3, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0090 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                r14 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r14.label
                r2 = 3
                r3 = 2
                r4 = 1
                r5 = 0
                if (r1 == 0) goto L3b
                if (r1 == r4) goto L2c
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                kotlin.ResultKt.throwOnFailure(r15)
                goto L91
            L17:
                java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
                r14.<init>(r15)
                throw r14
            L1f:
                java.lang.Object r1 = r14.L$1
                androidx.compose.ui.input.pointer.PointerEventPass r1 = (androidx.compose.ui.input.pointer.PointerEventPass) r1
                java.lang.Object r3 = r14.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r3 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r3
                kotlin.ResultKt.throwOnFailure(r15)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7c
                goto Lad
            L2c:
                long r6 = r14.J$0
                java.lang.Object r1 = r14.L$1
                androidx.compose.ui.input.pointer.PointerEventPass r1 = (androidx.compose.ui.input.pointer.PointerEventPass) r1
                java.lang.Object r4 = r14.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                kotlin.ResultKt.throwOnFailure(r15)
                r15 = r4
                goto L64
            L3b:
                kotlin.ResultKt.throwOnFailure(r15)
                java.lang.Object r15 = r14.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r15 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r15
                androidx.compose.ui.platform.ViewConfiguration r1 = r15.getViewConfiguration()
                long r12 = r1.getLongPressTimeoutMillis()
                androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                r7 = 0
                r9 = r14
                kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
                r10 = 1
                r11 = 0
                r14.L$0 = r15
                r14.L$1 = r1
                r14.J$0 = r12
                r14.label = r4
                r6 = r15
                r8 = r1
                java.lang.Object r4 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r6, r7, r8, r9, r10, r11)
                if (r4 != r0) goto L63
                return r0
            L63:
                r6 = r12
            L64:
                androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1$1 r4 = new androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1$1     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                r4.<init>(r1, r5)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                r8 = r14
                kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                r14.L$0 = r15     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                r14.L$1 = r1     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                r14.label = r3     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                java.lang.Object r14 = r15.withTimeout(r6, r4, r8)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L7b
                if (r14 != r0) goto Lad
                return r0
            L7b:
                r3 = r15
            L7c:
                kotlin.jvm.functions.Function0<kotlinx.coroutines.Job> r15 = r14.$onLongPress
                r15.invoke()
                r15 = r14
                kotlin.coroutines.Continuation r15 = (kotlin.coroutines.Continuation) r15
                r14.L$0 = r5
                r14.L$1 = r5
                r14.label = r2
                java.lang.Object r15 = r3.awaitPointerEvent(r1, r15)
                if (r15 != r0) goto L91
                return r0
            L91:
                androidx.compose.ui.input.pointer.PointerEvent r15 = (androidx.compose.ui.input.pointer.PointerEvent) r15
                java.util.List r14 = r15.getChanges()
                java.lang.Iterable r14 = (java.lang.Iterable) r14
                java.util.Iterator r14 = r14.iterator()
            L9d:
                boolean r15 = r14.hasNext()
                if (r15 == 0) goto Lad
                java.lang.Object r15 = r14.next()
                androidx.compose.ui.input.pointer.PointerInputChange r15 = (androidx.compose.ui.input.pointer.PointerInputChange) r15
                r15.consume()
                goto L9d
            Lad:
                kotlin.Unit r14 = kotlin.Unit.INSTANCE
                return r14
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (ForEachGestureKt.awaitEachGesture((PointerInputScope) this.L$0, new AnonymousClass1(this.$onLongPress, null), this) == coroutine_suspended) {
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
