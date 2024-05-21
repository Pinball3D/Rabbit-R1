package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2", f = "TapGestureDetector.kt", i = {0, 0}, l = {212}, m = "invokeSuspend", n = {"$this$withTimeoutOrNull", "minUptime"}, s = {"L$0", "J$0"})
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$awaitSecondDown$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super PointerInputChange>, Object> {
    final /* synthetic */ PointerInputChange $firstUp;
    long J$0;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$awaitSecondDown$2(PointerInputChange pointerInputChange, Continuation<? super TapGestureDetectorKt$awaitSecondDown$2> continuation) {
        super(2, continuation);
        this.$firstUp = pointerInputChange;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TapGestureDetectorKt$awaitSecondDown$2 tapGestureDetectorKt$awaitSecondDown$2 = new TapGestureDetectorKt$awaitSecondDown$2(this.$firstUp, continuation);
        tapGestureDetectorKt$awaitSecondDown$2.L$0 = obj;
        return tapGestureDetectorKt$awaitSecondDown$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super PointerInputChange> continuation) {
        return ((TapGestureDetectorKt$awaitSecondDown$2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004a A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0048 -> B:5:0x004b). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 1
            if (r1 == 0) goto L1e
            if (r1 != r2) goto L16
            long r3 = r11.J$0
            java.lang.Object r1 = r11.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            kotlin.ResultKt.throwOnFailure(r12)
            r9 = r3
            goto L4b
        L16:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L1e:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r12 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r12
            androidx.compose.ui.input.pointer.PointerInputChange r1 = r11.$firstUp
            long r3 = r1.getUptimeMillis()
            androidx.compose.ui.platform.ViewConfiguration r1 = r12.getViewConfiguration()
            long r5 = r1.getDoubleTapMinTimeMillis()
            long r3 = r3 + r5
            r1 = r12
            r9 = r3
        L36:
            r4 = 0
            r5 = 0
            r6 = r11
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r7 = 3
            r8 = 0
            r11.L$0 = r1
            r11.J$0 = r9
            r11.label = r2
            r3 = r1
            java.lang.Object r12 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r3, r4, r5, r6, r7, r8)
            if (r12 != r0) goto L4b
            return r0
        L4b:
            androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
            long r3 = r12.getUptimeMillis()
            int r3 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r3 < 0) goto L36
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
