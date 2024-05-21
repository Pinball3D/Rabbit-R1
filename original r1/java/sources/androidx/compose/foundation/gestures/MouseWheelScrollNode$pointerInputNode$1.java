package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollNode$pointerInputNode$1", f = "Scrollable.kt", i = {}, l = {336}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class MouseWheelScrollNode$pointerInputNode$1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MouseWheelScrollNode this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollNode$pointerInputNode$1(MouseWheelScrollNode mouseWheelScrollNode, Continuation<? super MouseWheelScrollNode$pointerInputNode$1> continuation) {
        super(2, continuation);
        this.this$0 = mouseWheelScrollNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MouseWheelScrollNode$pointerInputNode$1 mouseWheelScrollNode$pointerInputNode$1 = new MouseWheelScrollNode$pointerInputNode$1(this.this$0, continuation);
        mouseWheelScrollNode$pointerInputNode$1.L$0 = obj;
        return mouseWheelScrollNode$pointerInputNode$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
        return ((MouseWheelScrollNode$pointerInputNode$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scrollable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollNode$pointerInputNode$1$1", f = "Scrollable.kt", i = {0}, l = {338}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope"}, s = {"L$0"})
    /* renamed from: androidx.compose.foundation.gestures.MouseWheelScrollNode$pointerInputNode$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ MouseWheelScrollNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MouseWheelScrollNode mouseWheelScrollNode, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = mouseWheelScrollNode;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0050 A[EDGE_INSN: B:15:0x0050->B:16:0x0050 BREAK  A[LOOP:0: B:6:0x003d->B:9:0x004d], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x003f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x002e -> B:5:0x0031). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 1
                if (r1 == 0) goto L1b
                if (r1 != r2) goto L13
                java.lang.Object r1 = r9.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                kotlin.ResultKt.throwOnFailure(r10)
                goto L31
            L13:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L1b:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r10 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r10
                r1 = r10
            L23:
                r10 = r9
                kotlin.coroutines.Continuation r10 = (kotlin.coroutines.Continuation) r10
                r9.L$0 = r1
                r9.label = r2
                java.lang.Object r10 = androidx.compose.foundation.gestures.ScrollableKt.access$awaitScrollEvent(r1, r10)
                if (r10 != r0) goto L31
                return r0
            L31:
                androidx.compose.ui.input.pointer.PointerEvent r10 = (androidx.compose.ui.input.pointer.PointerEvent) r10
                java.util.List r3 = r10.getChanges()
                int r4 = r3.size()
                r5 = 0
                r6 = r5
            L3d:
                if (r6 >= r4) goto L50
                java.lang.Object r7 = r3.get(r6)
                androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
                boolean r7 = r7.isConsumed()
                r7 = r7 ^ r2
                if (r7 != 0) goto L4d
                goto L23
            L4d:
                int r6 = r6 + 1
                goto L3d
            L50:
                androidx.compose.foundation.gestures.MouseWheelScrollNode r3 = r9.this$0
                androidx.compose.foundation.gestures.ScrollConfig r3 = r3.getMouseWheelScrollConfig()
                androidx.compose.foundation.gestures.MouseWheelScrollNode r4 = r9.this$0
                r6 = r1
                androidx.compose.ui.unit.Density r6 = (androidx.compose.ui.unit.Density) r6
                long r7 = r1.mo3672getSizeYbymL2g()
                long r6 = r3.mo253calculateMouseWheelScroll8xgXZGE(r6, r10, r7)
                androidx.compose.runtime.State r3 = r4.getScrollingLogicState()
                java.lang.Object r3 = r3.getValue()
                androidx.compose.foundation.gestures.ScrollingLogic r3 = (androidx.compose.foundation.gestures.ScrollingLogic) r3
                float r4 = r3.m353toFloatk4lQ0M(r6)
                float r4 = r3.reverseIfNeeded(r4)
                androidx.compose.foundation.gestures.ScrollableState r3 = r3.getScrollableState()
                float r3 = r3.dispatchRawDelta(r4)
                r4 = 0
                int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                if (r3 != 0) goto L83
                goto L23
            L83:
                java.util.List r10 = r10.getChanges()
                int r3 = r10.size()
            L8b:
                if (r5 >= r3) goto L23
                java.lang.Object r4 = r10.get(r5)
                androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
                r4.consume()
                int r5 = r5 + 1
                goto L8b
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollNode$pointerInputNode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (((PointerInputScope) this.L$0).awaitPointerEventScope(new AnonymousClass1(this.this$0, null), this) == coroutine_suspended) {
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
