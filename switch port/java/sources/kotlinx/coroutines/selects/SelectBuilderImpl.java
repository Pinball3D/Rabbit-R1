package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: SelectOld.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0001J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0001R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl;", "R", "Lkotlinx/coroutines/selects/SelectImplementation;", "uCont", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/Continuation;)V", "cont", "Lkotlinx/coroutines/CancellableContinuationImpl;", "getResult", "", "handleBuilderException", "", "e", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SelectBuilderImpl<R> extends SelectImplementation<R> {
    private final CancellableContinuationImpl<R> cont;

    public SelectBuilderImpl(Continuation<? super R> continuation) {
        super(continuation.getContext());
        this.cont = new CancellableContinuationImpl<>(IntrinsicsKt.intercepted(continuation), 1);
    }

    public final Object getResult() {
        if (this.cont.isCompleted()) {
            return this.cont.getResult();
        }
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(getContext()), null, CoroutineStart.UNDISPATCHED, new SelectBuilderImpl$getResult$1(this, null), 1, null);
        return this.cont.getResult();
    }

    public final void handleBuilderException(Throwable e) {
        CancellableContinuationImpl<R> cancellableContinuationImpl = this.cont;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuationImpl.resumeWith(Result.m5698constructorimpl(ResultKt.createFailure(e)));
    }
}
