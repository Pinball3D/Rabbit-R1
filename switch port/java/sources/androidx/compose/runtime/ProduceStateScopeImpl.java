package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProduceState.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001f\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00028\u0000H\u0096\u0003¢\u0006\u0002\u0010\fJ\u0015\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130\u0017H\u0096\u0003R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\n\u001a\u00028\u0000X\u0096\u000f¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Landroidx/compose/runtime/ProduceStateScopeImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/ProduceStateScope;", "Landroidx/compose/runtime/MutableState;", SentryThread.JsonKeys.STATE, "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/CoroutineContext;)V", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "awaitDispose", "", "onDispose", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", "component2", "Lkotlin/Function1;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ProduceStateScopeImpl<T> implements ProduceStateScope<T>, MutableState<T> {
    private final /* synthetic */ MutableState<T> $$delegate_0;
    private final CoroutineContext coroutineContext;

    @Override // androidx.compose.runtime.MutableState
    public T component1() {
        return this.$$delegate_0.component1();
    }

    @Override // androidx.compose.runtime.MutableState
    public Function1<T, Unit> component2() {
        return this.$$delegate_0.component2();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.compose.runtime.MutableState, androidx.compose.runtime.State
    public T getValue() {
        return this.$$delegate_0.getValue();
    }

    @Override // androidx.compose.runtime.MutableState
    public void setValue(T t) {
        this.$$delegate_0.setValue(t);
    }

    public ProduceStateScopeImpl(MutableState<T> state, CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        this.coroutineContext = coroutineContext;
        this.$$delegate_0 = state;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    @Override // androidx.compose.runtime.ProduceStateScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object awaitDispose(kotlin.jvm.functions.Function0<kotlin.Unit> r4, kotlin.coroutines.Continuation<?> r5) {
        /*
            r3 = this;
            boolean r0 = r5 instanceof androidx.compose.runtime.ProduceStateScopeImpl$awaitDispose$1
            if (r0 == 0) goto L14
            r0 = r5
            androidx.compose.runtime.ProduceStateScopeImpl$awaitDispose$1 r0 = (androidx.compose.runtime.ProduceStateScopeImpl$awaitDispose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r3 = r0.label
            int r3 = r3 - r2
            r0.label = r3
            goto L19
        L14:
            androidx.compose.runtime.ProduceStateScopeImpl$awaitDispose$1 r0 = new androidx.compose.runtime.ProduceStateScopeImpl$awaitDispose$1
            r0.<init>(r3, r5)
        L19:
            java.lang.Object r3 = r0.result
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 == r2) goto L2e
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r3.<init>(r4)
            throw r3
        L2e:
            java.lang.Object r4 = r0.L$0
            kotlin.jvm.functions.Function0 r4 = (kotlin.jvm.functions.Function0) r4
            kotlin.ResultKt.throwOnFailure(r3)     // Catch: java.lang.Throwable -> L62
            goto L5c
        L36:
            kotlin.ResultKt.throwOnFailure(r3)
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L62
            r0.label = r2     // Catch: java.lang.Throwable -> L62
            kotlinx.coroutines.CancellableContinuationImpl r3 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L62
            kotlin.coroutines.Continuation r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L62
            r3.<init>(r1, r2)     // Catch: java.lang.Throwable -> L62
            r3.initCancellability()     // Catch: java.lang.Throwable -> L62
            r1 = r3
            kotlinx.coroutines.CancellableContinuation r1 = (kotlinx.coroutines.CancellableContinuation) r1     // Catch: java.lang.Throwable -> L62
            java.lang.Object r3 = r3.getResult()     // Catch: java.lang.Throwable -> L62
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Throwable -> L62
            if (r3 != r1) goto L59
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: java.lang.Throwable -> L62
        L59:
            if (r3 != r5) goto L5c
            return r5
        L5c:
            kotlin.KotlinNothingValueException r3 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L62
            r3.<init>()     // Catch: java.lang.Throwable -> L62
            throw r3     // Catch: java.lang.Throwable -> L62
        L62:
            r3 = move-exception
            r4.invoke()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ProduceStateScopeImpl.awaitDispose(kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
