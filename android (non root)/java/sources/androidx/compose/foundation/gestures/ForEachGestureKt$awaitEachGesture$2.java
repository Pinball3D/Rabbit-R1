package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.core.location.LocationRequestCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ForEachGesture.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ForEachGestureKt$awaitEachGesture$2", f = "ForEachGesture.kt", i = {0, 1, 2}, l = {LocationRequestCompat.QUALITY_LOW_POWER, 107, 112}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope", "$this$awaitPointerEventScope", "$this$awaitPointerEventScope"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes.dex */
public final class ForEachGestureKt$awaitEachGesture$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ CoroutineContext $currentContext;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ForEachGestureKt$awaitEachGesture$2(CoroutineContext coroutineContext, Function2<? super AwaitPointerEventScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super ForEachGestureKt$awaitEachGesture$2> continuation) {
        super(2, continuation);
        this.$currentContext = coroutineContext;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ForEachGestureKt$awaitEachGesture$2 forEachGestureKt$awaitEachGesture$2 = new ForEachGestureKt$awaitEachGesture$2(this.$currentContext, this.$block, continuation);
        forEachGestureKt$awaitEachGesture$2.L$0 = obj;
        return forEachGestureKt$awaitEachGesture$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
        return ((ForEachGestureKt$awaitEachGesture$2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0079  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.ui.input.pointer.AwaitPointerEventScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.ui.input.pointer.AwaitPointerEventScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x005c -> B:8:0x0028). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0076 -> B:8:0x0028). Please report as a decompilation issue!!! */
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
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L34
            if (r1 == r4) goto L2a
            if (r1 == r3) goto L21
            if (r1 != r2) goto L19
            java.lang.Object r1 = r7.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L28
        L19:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L21:
            java.lang.Object r1 = r7.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.util.concurrent.CancellationException -> L32
        L28:
            r8 = r1
            goto L3b
        L2a:
            java.lang.Object r1 = r7.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.util.concurrent.CancellationException -> L32
            goto L51
        L32:
            r8 = move-exception
            goto L63
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r8
        L3b:
            kotlin.coroutines.CoroutineContext r1 = r7.$currentContext
            boolean r1 = kotlinx.coroutines.JobKt.isActive(r1)
            if (r1 == 0) goto L7a
            kotlin.jvm.functions.Function2<androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r1 = r7.$block     // Catch: java.util.concurrent.CancellationException -> L5f
            r7.L$0 = r8     // Catch: java.util.concurrent.CancellationException -> L5f
            r7.label = r4     // Catch: java.util.concurrent.CancellationException -> L5f
            java.lang.Object r1 = r1.invoke(r8, r7)     // Catch: java.util.concurrent.CancellationException -> L5f
            if (r1 != r0) goto L50
            return r0
        L50:
            r1 = r8
        L51:
            r8 = r7
            kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8     // Catch: java.util.concurrent.CancellationException -> L32
            r7.L$0 = r1     // Catch: java.util.concurrent.CancellationException -> L32
            r7.label = r3     // Catch: java.util.concurrent.CancellationException -> L32
            java.lang.Object r8 = androidx.compose.foundation.gestures.ForEachGestureKt.awaitAllPointersUp(r1, r8)     // Catch: java.util.concurrent.CancellationException -> L32
            if (r8 != r0) goto L28
            return r0
        L5f:
            r1 = move-exception
            r6 = r1
            r1 = r8
            r8 = r6
        L63:
            kotlin.coroutines.CoroutineContext r5 = r7.$currentContext
            boolean r5 = kotlinx.coroutines.JobKt.isActive(r5)
            if (r5 == 0) goto L79
            r8 = r7
            kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
            r7.L$0 = r1
            r7.label = r2
            java.lang.Object r8 = androidx.compose.foundation.gestures.ForEachGestureKt.awaitAllPointersUp(r1, r8)
            if (r8 != r0) goto L28
            return r0
        L79:
            throw r8
        L7a:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ForEachGestureKt$awaitEachGesture$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
