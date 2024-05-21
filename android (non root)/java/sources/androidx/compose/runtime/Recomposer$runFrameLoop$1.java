package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.runtime.Recomposer", f = "Recomposer.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1}, l = {822, 829}, m = "runFrameLoop", n = {"this", "parentFrameClock", "frameSignal", "toRecompose", "toApply", "this", "parentFrameClock", "frameSignal", "toRecompose", "toApply"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
/* loaded from: classes.dex */
public final class Recomposer$runFrameLoop$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runFrameLoop$1(Recomposer recomposer, Continuation<? super Recomposer$runFrameLoop$1> continuation) {
        super(continuation);
        this.this$0 = recomposer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object runFrameLoop;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        runFrameLoop = this.this$0.runFrameLoop(null, null, this);
        return runFrameLoop;
    }
}
