package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: PointerMoveDetector.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2", f = "PointerMoveDetector.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class PointerMoveDetectorKt$detectMoves$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Offset, Unit> $onMove;
    final /* synthetic */ PointerEventPass $pointerEventPass;
    final /* synthetic */ PointerInputScope $this_detectMoves;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PointerMoveDetectorKt$detectMoves$2(PointerInputScope pointerInputScope, PointerEventPass pointerEventPass, Function1<? super Offset, Unit> function1, Continuation<? super PointerMoveDetectorKt$detectMoves$2> continuation) {
        super(2, continuation);
        this.$this_detectMoves = pointerInputScope;
        this.$pointerEventPass = pointerEventPass;
        this.$onMove = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PointerMoveDetectorKt$detectMoves$2(this.$this_detectMoves, this.$pointerEventPass, this.$onMove, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PointerMoveDetectorKt$detectMoves$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineContext context = getContext();
            this.label = 1;
            if (this.$this_detectMoves.awaitPointerEventScope(new AnonymousClass1(context, this.$pointerEventPass, this.$onMove, null), this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PointerMoveDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2$1", f = "PointerMoveDetector.kt", i = {0, 0}, l = {44}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope", "previousPosition"}, s = {"L$0", "L$1"})
    /* renamed from: androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineContext $currentContext;
        final /* synthetic */ Function1<Offset, Unit> $onMove;
        final /* synthetic */ PointerEventPass $pointerEventPass;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(CoroutineContext coroutineContext, PointerEventPass pointerEventPass, Function1<? super Offset, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$currentContext = coroutineContext;
            this.$pointerEventPass = pointerEventPass;
            this.$onMove = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentContext, this.$pointerEventPass, this.$onMove, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
        /* JADX WARN: Type inference failed for: r8v14, types: [T, androidx.compose.ui.geometry.Offset] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0043 -> B:5:0x0046). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                r2 = 1
                if (r1 == 0) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r1 = r7.L$1
                kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
                java.lang.Object r3 = r7.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r3 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r3
                kotlin.ResultKt.throwOnFailure(r8)
                goto L46
            L17:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L1f:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r8
                kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef
                r1.<init>()
                r3 = r8
            L2c:
                kotlin.coroutines.CoroutineContext r8 = r7.$currentContext
                boolean r8 = kotlinx.coroutines.JobKt.isActive(r8)
                if (r8 == 0) goto La8
                androidx.compose.ui.input.pointer.PointerEventPass r8 = r7.$pointerEventPass
                r4 = r7
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r7.L$0 = r3
                r7.L$1 = r1
                r7.label = r2
                java.lang.Object r8 = r3.awaitPointerEvent(r8, r4)
                if (r8 != r0) goto L46
                return r0
            L46:
                androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
                int r4 = r8.getType()
                androidx.compose.ui.input.pointer.PointerEventType$Companion r5 = androidx.compose.ui.input.pointer.PointerEventType.INSTANCE
                int r5 = r5.m3714getMove7fucELk()
                boolean r5 = androidx.compose.ui.input.pointer.PointerEventType.m3708equalsimpl0(r4, r5)
                if (r5 == 0) goto L59
                goto L72
            L59:
                androidx.compose.ui.input.pointer.PointerEventType$Companion r5 = androidx.compose.ui.input.pointer.PointerEventType.INSTANCE
                int r5 = r5.m3712getEnter7fucELk()
                boolean r5 = androidx.compose.ui.input.pointer.PointerEventType.m3708equalsimpl0(r4, r5)
                if (r5 == 0) goto L66
                goto L72
            L66:
                androidx.compose.ui.input.pointer.PointerEventType$Companion r5 = androidx.compose.ui.input.pointer.PointerEventType.INSTANCE
                int r5 = r5.m3713getExit7fucELk()
                boolean r4 = androidx.compose.ui.input.pointer.PointerEventType.m3708equalsimpl0(r4, r5)
                if (r4 == 0) goto L2c
            L72:
                java.util.List r8 = r8.getChanges()
                java.lang.Object r8 = kotlin.collections.CollectionsKt.first(r8)
                androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
                long r4 = r8.getPosition()
                androidx.compose.ui.geometry.Offset r8 = androidx.compose.ui.geometry.Offset.m2389boximpl(r4)
                long r4 = r8.getPackedValue()
                T r6 = r1.element
                boolean r4 = androidx.compose.ui.geometry.Offset.m2396equalsimpl(r4, r6)
                if (r4 != 0) goto L91
                goto L92
            L91:
                r8 = 0
            L92:
                if (r8 == 0) goto L2c
                kotlin.jvm.functions.Function1<androidx.compose.ui.geometry.Offset, kotlin.Unit> r4 = r7.$onMove
                long r5 = r8.getPackedValue()
                androidx.compose.ui.geometry.Offset r8 = androidx.compose.ui.geometry.Offset.m2389boximpl(r5)
                r1.element = r8
                androidx.compose.ui.geometry.Offset r8 = androidx.compose.ui.geometry.Offset.m2389boximpl(r5)
                r4.invoke(r8)
                goto L2c
            La8:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
