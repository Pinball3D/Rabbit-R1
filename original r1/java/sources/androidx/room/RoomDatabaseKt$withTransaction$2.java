package androidx.room;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: RoomDatabaseExt.kt */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "androidx.room.RoomDatabaseKt$withTransaction$2", f = "RoomDatabaseExt.kt", i = {0}, l = {59}, m = "invokeSuspend", n = {"transactionElement"}, s = {"L$0"})
/* loaded from: classes2.dex */
public final class RoomDatabaseKt$withTransaction$2<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
    final /* synthetic */ Function1<Continuation<? super R>, Object> $block;
    final /* synthetic */ RoomDatabase $this_withTransaction;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomDatabaseKt$withTransaction$2(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super RoomDatabaseKt$withTransaction$2> continuation) {
        super(2, continuation);
        this.$this_withTransaction = roomDatabase;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RoomDatabaseKt$withTransaction$2 roomDatabaseKt$withTransaction$2 = new RoomDatabaseKt$withTransaction$2(this.$this_withTransaction, this.$block, continuation);
        roomDatabaseKt$withTransaction$2.L$0 = obj;
        return roomDatabaseKt$withTransaction$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
        return ((RoomDatabaseKt$withTransaction$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TransactionElement transactionElement;
        Throwable th;
        TransactionElement transactionElement2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineContext.Element element = ((CoroutineScope) this.L$0).getCoroutineContext().get(TransactionElement.INSTANCE);
                Intrinsics.checkNotNull(element);
                transactionElement = (TransactionElement) element;
                transactionElement.acquire();
                try {
                    this.$this_withTransaction.beginTransaction();
                    try {
                        Function1<Continuation<? super R>, Object> function1 = this.$block;
                        this.L$0 = transactionElement;
                        this.label = 1;
                        Object invoke = function1.invoke(this);
                        if (invoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        transactionElement2 = transactionElement;
                        obj = invoke;
                    } catch (Throwable th2) {
                        th = th2;
                        this.$this_withTransaction.endTransaction();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    transactionElement.release();
                    throw th;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                transactionElement2 = (TransactionElement) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th4) {
                    th = th4;
                    this.$this_withTransaction.endTransaction();
                    throw th;
                }
            }
            this.$this_withTransaction.setTransactionSuccessful();
            this.$this_withTransaction.endTransaction();
            transactionElement2.release();
            return obj;
        } catch (Throwable th5) {
            th = th5;
            transactionElement = coroutine_suspended;
        }
    }
}
