package androidx.compose.foundation.pager;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PagerState.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerState", f = "PagerState.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 2}, l = {453, 478, 490}, m = "animateScrollToPage", n = {"this", "animationSpec", "page", "pageOffsetFraction", "this", "animationSpec", "pageOffsetFraction", "targetPage", "preJumpPosition", "this"}, s = {"L$0", "L$1", "I$0", "F$0", "L$0", "L$1", "F$0", "I$0", "I$1", "L$0"})
/* loaded from: classes.dex */
public final class PagerState$animateScrollToPage$1 extends ContinuationImpl {
    float F$0;
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PagerState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$animateScrollToPage$1(PagerState pagerState, Continuation<? super PagerState$animateScrollToPage$1> continuation) {
        super(continuation);
        this.this$0 = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.animateScrollToPage(0, 0.0f, null, this);
    }
}
