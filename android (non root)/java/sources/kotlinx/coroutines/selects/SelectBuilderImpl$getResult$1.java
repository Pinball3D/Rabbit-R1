package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectOld.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.selects.SelectBuilderImpl$getResult$1", f = "SelectOld.kt", i = {}, l = {43}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SelectBuilderImpl$getResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SelectBuilderImpl<R> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectBuilderImpl$getResult$1(SelectBuilderImpl<R> selectBuilderImpl, Continuation<? super SelectBuilderImpl$getResult$1> continuation) {
        super(2, continuation);
        this.this$0 = selectBuilderImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SelectBuilderImpl$getResult$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SelectBuilderImpl$getResult$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v9, types: [kotlin.Unit, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.this$0.doSelect(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            cancellableContinuationImpl2 = ((SelectBuilderImpl) this.this$0).cont;
            SelectOldKt.resumeUndispatched(cancellableContinuationImpl2, obj);
            this = Unit.INSTANCE;
            return this;
        } catch (Throwable th) {
            cancellableContinuationImpl = ((SelectBuilderImpl) this.this$0).cont;
            SelectOldKt.resumeUndispatchedWithException(cancellableContinuationImpl, th);
            return Unit.INSTANCE;
        }
    }
}
