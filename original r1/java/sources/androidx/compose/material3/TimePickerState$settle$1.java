package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TimePicker.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.TimePickerState", f = "TimePicker.kt", i = {0, 0}, l = {616, 617}, m = "settle", n = {"this", "targetValue"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class TimePickerState$settle$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TimePickerState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerState$settle$1(TimePickerState timePickerState, Continuation<? super TimePickerState$settle$1> continuation) {
        super(continuation);
        this.this$0 = timePickerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.settle(this);
    }
}
