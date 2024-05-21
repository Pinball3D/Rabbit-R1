package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Slider.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.SliderKt", f = "Slider.kt", i = {0}, l = {1095}, m = "awaitSlop-8vUncbI", n = {"initialDelta"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class SliderKt$awaitSlop$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SliderKt$awaitSlop$1(Continuation<? super SliderKt$awaitSlop$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m1394awaitSlop8vUncbI;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m1394awaitSlop8vUncbI = SliderKt.m1394awaitSlop8vUncbI(null, 0L, 0, this);
        return m1394awaitSlop8vUncbI;
    }
}
