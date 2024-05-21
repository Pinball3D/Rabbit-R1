package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnackbarHost.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.SnackbarHostState", f = "SnackbarHost.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {462, 465}, m = "showSnackbar", n = {"this", "visuals", "$this$withLock_u24default$iv", "this", "visuals", "$this$withLock_u24default$iv", "$completion$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes.dex */
public final class SnackbarHostState$showSnackbar$2 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SnackbarHostState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostState$showSnackbar$2(SnackbarHostState snackbarHostState, Continuation<? super SnackbarHostState$showSnackbar$2> continuation) {
        super(continuation);
        this.this$0 = snackbarHostState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.showSnackbar(null, this);
    }
}
