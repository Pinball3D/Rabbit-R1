package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProduceState.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.runtime.ProduceStateScopeImpl", f = "ProduceState.kt", i = {0}, l = {224}, m = "awaitDispose", n = {"onDispose"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class ProduceStateScopeImpl$awaitDispose$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ProduceStateScopeImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProduceStateScopeImpl$awaitDispose$1(ProduceStateScopeImpl<T> produceStateScopeImpl, Continuation<? super ProduceStateScopeImpl$awaitDispose$1> continuation) {
        super(continuation);
        this.this$0 = produceStateScopeImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.awaitDispose(null, this);
    }
}
