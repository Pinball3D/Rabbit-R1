package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableKt", f = "Scrollable.kt", i = {0}, l = {371}, m = "awaitScrollEvent", n = {"$this$awaitScrollEvent"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class ScrollableKt$awaitScrollEvent$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollableKt$awaitScrollEvent$1(Continuation<? super ScrollableKt$awaitScrollEvent$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object awaitScrollEvent;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitScrollEvent = ScrollableKt.awaitScrollEvent(null, this);
        return awaitScrollEvent;
    }
}
