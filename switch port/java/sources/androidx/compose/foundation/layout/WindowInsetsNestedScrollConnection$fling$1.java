package androidx.compose.foundation.layout;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowInsetsConnection.android.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection", f = "WindowInsetsConnection.android.kt", i = {0, 0, 0, 1, 1, 1, 2, 2}, l = {320, 346, 371}, m = "fling-huYlsQE", n = {"this", "available", "flingAmount", "this", "endVelocity", "available", "this", "available"}, s = {"L$0", "J$0", "F$0", "L$0", "L$1", "J$0", "L$0", "J$0"})
/* loaded from: classes.dex */
public final class WindowInsetsNestedScrollConnection$fling$1 extends ContinuationImpl {
    float F$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WindowInsetsNestedScrollConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInsetsNestedScrollConnection$fling$1(WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, Continuation<? super WindowInsetsNestedScrollConnection$fling$1> continuation) {
        super(continuation);
        this.this$0 = windowInsetsNestedScrollConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m565flinghuYlsQE;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m565flinghuYlsQE = this.this$0.m565flinghuYlsQE(0L, 0.0f, false, this);
        return m565flinghuYlsQE;
    }
}
