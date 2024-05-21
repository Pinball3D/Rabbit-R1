package androidx.compose.foundation.lazy;

import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyListState.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.lazy.LazyListState", f = "LazyListState.kt", i = {0, 0, 0}, l = {269, SubsamplingScaleImageView.ORIENTATION_270}, m = "scroll", n = {"this", "scrollPriority", "block"}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes.dex */
public final class LazyListState$scroll$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LazyListState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListState$scroll$1(LazyListState lazyListState, Continuation<? super LazyListState$scroll$1> continuation) {
        super(continuation);
        this.this$0 = lazyListState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.scroll(null, null, this);
    }
}
