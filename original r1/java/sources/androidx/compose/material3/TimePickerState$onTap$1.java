package androidx.compose.material3;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TimePicker.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.TimePickerState", f = "TimePicker.kt", i = {0, 0, 0, 0, 0, 1, 1}, l = {621, 629, 630, 633}, m = "onTap$material3_release", n = {"this", ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y, "maxDist", "autoSwitchToMinute", "this", "targetValue"}, s = {"L$0", "F$0", "F$1", "F$2", "Z$0", "L$0", "L$1"})
/* loaded from: classes.dex */
public final class TimePickerState$onTap$1 extends ContinuationImpl {
    float F$0;
    float F$1;
    float F$2;
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TimePickerState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerState$onTap$1(TimePickerState timePickerState, Continuation<? super TimePickerState$onTap$1> continuation) {
        super(continuation);
        this.this$0 = timePickerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.onTap$material3_release(0.0f, 0.0f, 0.0f, false, this);
    }
}
