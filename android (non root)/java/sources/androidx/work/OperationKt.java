package androidx.work;

import androidx.work.Operation;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: Operation.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086Hø\u0001\u0000¢\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0004"}, d2 = {"await", "Landroidx/work/Operation$State$SUCCESS;", "Landroidx/work/Operation;", "(Landroidx/work/Operation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class OperationKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object await(androidx.work.Operation r5, kotlin.coroutines.Continuation<? super androidx.work.Operation.State.SUCCESS> r6) {
        /*
            boolean r0 = r6 instanceof androidx.work.OperationKt$await$1
            if (r0 == 0) goto L14
            r0 = r6
            androidx.work.OperationKt$await$1 r0 = (androidx.work.OperationKt$await$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            androidx.work.OperationKt$await$1 r0 = new androidx.work.OperationKt$await$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r5 = r0.L$0
            com.google.common.util.concurrent.ListenableFuture r5 = (com.google.common.util.concurrent.ListenableFuture) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L95
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            com.google.common.util.concurrent.ListenableFuture r5 = r5.getResult()
            java.lang.String r6 = "result"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            boolean r6 = r5.isDone()
            if (r6 == 0) goto L58
            java.lang.Object r5 = r5.get()     // Catch: java.util.concurrent.ExecutionException -> L4d
            goto L96
        L4d:
            r5 = move-exception
            java.lang.Throwable r6 = r5.getCause()
            if (r6 != 0) goto L57
            r6 = r5
            java.lang.Throwable r6 = (java.lang.Throwable) r6
        L57:
            throw r6
        L58:
            r0.L$0 = r5
            r0.label = r3
            kotlin.coroutines.Continuation r0 = (kotlin.coroutines.Continuation) r0
            kotlinx.coroutines.CancellableContinuationImpl r6 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
            r6.<init>(r2, r3)
            r6.initCancellability()
            r2 = r6
            kotlinx.coroutines.CancellableContinuation r2 = (kotlinx.coroutines.CancellableContinuation) r2
            androidx.work.ListenableFutureKt$await$2$1 r3 = new androidx.work.ListenableFutureKt$await$2$1
            r3.<init>(r2, r5)
            java.lang.Runnable r3 = (java.lang.Runnable) r3
            androidx.work.DirectExecutor r4 = androidx.work.DirectExecutor.INSTANCE
            java.util.concurrent.Executor r4 = (java.util.concurrent.Executor) r4
            r5.addListener(r3, r4)
            androidx.work.ListenableFutureKt$await$2$2 r3 = new androidx.work.ListenableFutureKt$await$2$2
            r3.<init>(r5)
            kotlin.jvm.functions.Function1 r3 = (kotlin.jvm.functions.Function1) r3
            r2.invokeOnCancellation(r3)
            java.lang.Object r6 = r6.getResult()
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r5) goto L92
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L92:
            if (r6 != r1) goto L95
            return r1
        L95:
            r5 = r6
        L96:
            java.lang.String r6 = "result.await()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.await(androidx.work.Operation, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final Object await$$forInline(Operation operation, Continuation<? super Operation.State.SUCCESS> continuation) {
        Object obj;
        ListenableFuture<Operation.State.SUCCESS> result = operation.getResult();
        Intrinsics.checkNotNullExpressionValue(result, "result");
        if (result.isDone()) {
            try {
                obj = result.get();
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw e;
            }
        } else {
            InlineMarker.mark(0);
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
            result.addListener(new ListenableFutureKt$await$2$1(cancellableContinuationImpl2, result), DirectExecutor.INSTANCE);
            cancellableContinuationImpl2.invokeOnCancellation(new ListenableFutureKt$await$2$2(result));
            Unit unit = Unit.INSTANCE;
            obj = cancellableContinuationImpl.getResult();
            if (obj == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            InlineMarker.mark(1);
        }
        Intrinsics.checkNotNullExpressionValue(obj, "result.await()");
        return obj;
    }
}
