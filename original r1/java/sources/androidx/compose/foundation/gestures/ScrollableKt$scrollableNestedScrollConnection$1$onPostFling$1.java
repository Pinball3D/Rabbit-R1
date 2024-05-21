package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1", f = "Scrollable.kt", i = {0, 0}, l = {574}, m = "onPostFling-RZ2iAVY", n = {"this", "available"}, s = {"L$0", "J$0"})
/* loaded from: classes.dex */
public final class ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ScrollableKt$scrollableNestedScrollConnection$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1(ScrollableKt$scrollableNestedScrollConnection$1 scrollableKt$scrollableNestedScrollConnection$1, Continuation<? super ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1> continuation) {
        super(continuation);
        this.this$0 = scrollableKt$scrollableNestedScrollConnection$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo342onPostFlingRZ2iAVY(0L, 0L, this);
    }
}
