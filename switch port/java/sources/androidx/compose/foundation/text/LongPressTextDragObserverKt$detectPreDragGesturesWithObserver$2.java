package androidx.compose.foundation.text;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LongPressTextDragObserver.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", i = {0, 1, 1}, l = {99, 103}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "down"}, s = {"L$0", "L$0", "L$1"})
/* loaded from: classes.dex */
public final class LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(TextDragObserver textDragObserver, Continuation<? super LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2> continuation) {
        super(2, continuation);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 = new LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(this.$observer, continuation);
        longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2.L$0 = obj;
        return longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
        return ((LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0062 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0070  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0060 -> B:6:0x0063). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2a
            if (r1 == r3) goto L22
            if (r1 != r2) goto L1a
            java.lang.Object r1 = r12.L$1
            androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
            java.lang.Object r4 = r12.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
            kotlin.ResultKt.throwOnFailure(r13)
            goto L63
        L1a:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L22:
            java.lang.Object r1 = r12.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            kotlin.ResultKt.throwOnFailure(r13)
            goto L45
        L2a:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.L$0
            r1 = r13
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            r5 = 0
            r6 = 0
            r7 = r12
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r8 = 3
            r9 = 0
            r12.L$0 = r1
            r12.label = r3
            r4 = r1
            java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r4, r5, r6, r7, r8, r9)
            if (r13 != r0) goto L45
            return r0
        L45:
            androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
            androidx.compose.foundation.text.TextDragObserver r4 = r12.$observer
            long r5 = r13.getPosition()
            r4.mo811onDownk4lQ0M(r5)
            r4 = r1
            r1 = r13
        L52:
            r13 = r12
            kotlin.coroutines.Continuation r13 = (kotlin.coroutines.Continuation) r13
            r12.L$0 = r4
            r12.L$1 = r1
            r12.label = r2
            r5 = 0
            java.lang.Object r13 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r4, r5, r13, r3, r5)
            if (r13 != r0) goto L63
            return r0
        L63:
            androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
            java.util.List r13 = r13.getChanges()
            int r5 = r13.size()
            r6 = 0
        L6e:
            if (r6 >= r5) goto L8e
            java.lang.Object r7 = r13.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            long r8 = r7.getId()
            long r10 = r1.getId()
            boolean r8 = androidx.compose.ui.input.pointer.PointerId.m3741equalsimpl0(r8, r10)
            if (r8 == 0) goto L8b
            boolean r7 = r7.getPressed()
            if (r7 == 0) goto L8b
            goto L52
        L8b:
            int r6 = r6 + 1
            goto L6e
        L8e:
            androidx.compose.foundation.text.TextDragObserver r12 = r12.$observer
            r12.onUp()
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
