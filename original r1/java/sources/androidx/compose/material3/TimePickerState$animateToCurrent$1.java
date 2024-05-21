package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TimePicker.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.TimePickerState", f = "TimePicker.kt", i = {0, 0}, l = {585, 586}, m = "animateToCurrent$material3_release", n = {"this", "end"}, s = {"L$0", "F$0"})
/* loaded from: classes.dex */
public final class TimePickerState$animateToCurrent$1 extends ContinuationImpl {
    float F$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TimePickerState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerState$animateToCurrent$1(TimePickerState timePickerState, Continuation<? super TimePickerState$animateToCurrent$1> continuation) {
        super(continuation);
        this.this$0 = timePickerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.animateToCurrent$material3_release(this);
    }
}
