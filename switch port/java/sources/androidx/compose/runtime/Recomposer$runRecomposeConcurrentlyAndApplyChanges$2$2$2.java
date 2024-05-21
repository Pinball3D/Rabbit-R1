package androidx.compose.runtime;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Recomposer.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2", f = "Recomposer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ControlledComposition $composition;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2(Recomposer recomposer, ControlledComposition controlledComposition, Continuation<? super Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2> continuation) {
        super(2, continuation);
        this.this$0 = recomposer;
        this.$composition = controlledComposition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2(this.this$0, this.$composition, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ControlledComposition performRecompose;
        List list;
        int i;
        CancellableContinuation deriveStateLocked;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            performRecompose = this.this$0.performRecompose(this.$composition, null);
            Object obj2 = this.this$0.stateLock;
            Recomposer recomposer = this.this$0;
            synchronized (obj2) {
                if (performRecompose != null) {
                    try {
                        list = recomposer.compositionsAwaitingApply;
                        list.add(performRecompose);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                i = recomposer.concurrentCompositionsOutstanding;
                recomposer.concurrentCompositionsOutstanding = i - 1;
                deriveStateLocked = recomposer.deriveStateLocked();
            }
            if (deriveStateLocked != null) {
                Result.Companion companion = Result.INSTANCE;
                deriveStateLocked.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
