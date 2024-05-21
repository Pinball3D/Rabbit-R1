package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", i = {0, 0, 0}, l = {279}, m = "awaitFirstDown", n = {"$this$awaitFirstDown", "pass", "requireUnconsumed"}, s = {"L$0", "L$1", "Z$0"})
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$awaitFirstDown$2 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TapGestureDetectorKt$awaitFirstDown$2(Continuation<? super TapGestureDetectorKt$awaitFirstDown$2> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TapGestureDetectorKt.awaitFirstDown(null, false, null, this);
    }
}
