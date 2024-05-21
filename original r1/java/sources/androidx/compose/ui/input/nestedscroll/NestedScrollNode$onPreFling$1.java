package androidx.compose.ui.input.nestedscroll;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NestedScrollNode.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.input.nestedscroll.NestedScrollNode", f = "NestedScrollNode.kt", i = {0, 0, 1}, l = {98, 99}, m = "onPreFling-QWom1Mo", n = {"this", "available", "parentPreConsumed"}, s = {"L$0", "J$0", "J$0"})
/* loaded from: classes.dex */
public final class NestedScrollNode$onPreFling$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NestedScrollNode this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollNode$onPreFling$1(NestedScrollNode nestedScrollNode, Continuation<? super NestedScrollNode$onPreFling$1> continuation) {
        super(continuation);
        this.this$0 = nestedScrollNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo567onPreFlingQWom1Mo(0L, this);
    }
}
