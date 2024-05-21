package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", i = {0}, l = {195}, m = "consumeUntilUp", n = {"$this$consumeUntilUp"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$consumeUntilUp$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TapGestureDetectorKt$consumeUntilUp$1(Continuation<? super TapGestureDetectorKt$consumeUntilUp$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object consumeUntilUp;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        consumeUntilUp = TapGestureDetectorKt.consumeUntilUp(null, this);
        return consumeUntilUp;
    }
}
