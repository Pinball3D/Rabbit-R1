package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: TapGestureDetector.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u001f\u0010\t\u001a\u00020\n*\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a)\u0010\t\u001a\u00020\n*\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001a\u001f\u0010\u0012\u001a\u0004\u0018\u00010\n*\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0014\u001a\u0015\u0010\u0015\u001a\u00020\u0005*\u00020\u000bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001aa\u0010\u0017\u001a\u00020\u0005*\u00020\u00182/\b\u0002\u0010\u0019\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0001¢\u0006\u0002\b\u00072\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001bH\u0080@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a\u0091\u0001\u0010\u001d\u001a\u00020\u0005*\u00020\u00182\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001b2\u0016\b\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001b2/\b\u0002\u0010\u0019\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0001¢\u0006\u0002\b\u00072\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001bH\u0086@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010 \u001a\u0017\u0010!\u001a\u0004\u0018\u00010\n*\u00020\u000bH\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a!\u0010!\u001a\u0004\u0018\u00010\n*\u00020\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\"\"=\u0010\u0000\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0001¢\u0006\u0002\b\u0007X\u0082\u0004ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"NoPressGesture", "Lkotlin/Function3;", "Landroidx/compose/foundation/gestures/PressGestureScope;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "Lkotlin/jvm/functions/Function3;", "awaitFirstDown", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "requireUnconsumed", "", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitSecondDown", "firstUp", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consumeUntilUp", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectTapAndPress", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "onPress", "onTap", "Lkotlin/Function1;", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectTapGestures", "onDoubleTap", "onLongPress", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "waitForUpOrCancellation", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TapGestureDetectorKt {
    private static final Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> NoPressGesture = new TapGestureDetectorKt$NoPressGesture$1(null);

    public static /* synthetic */ Object detectTapGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function1 function12, Function3 function3, Function1 function13, Continuation continuation, int i, Object obj) {
        Function1 function14 = (i & 1) != 0 ? null : function1;
        Function1 function15 = (i & 2) != 0 ? null : function12;
        if ((i & 4) != 0) {
            function3 = NoPressGesture;
        }
        return detectTapGestures(pointerInputScope, function14, function15, function3, (i & 8) != 0 ? null : function13, continuation);
    }

    public static final Object detectTapGestures(PointerInputScope pointerInputScope, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function13, Continuation<? super Unit> continuation) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new TapGestureDetectorKt$detectTapGestures$2(pointerInputScope, function3, function12, function1, function13, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0053 A[LOOP:0: B:11:0x0051->B:12:0x0053, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0042 -> B:10:0x0045). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object consumeUntilUp(androidx.compose.ui.input.pointer.AwaitPointerEventScope r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            if (r0 == 0) goto L14
            r0 = r9
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r8 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L45
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
        L39:
            r0.L$0 = r8
            r0.label = r3
            r9 = 0
            java.lang.Object r9 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r8, r9, r0, r3, r9)
            if (r9 != r1) goto L45
            return r1
        L45:
            androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
            java.util.List r2 = r9.getChanges()
            int r4 = r2.size()
            r5 = 0
            r6 = r5
        L51:
            if (r6 >= r4) goto L5f
            java.lang.Object r7 = r2.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            r7.consume()
            int r6 = r6 + 1
            goto L51
        L5f:
            java.util.List r9 = r9.getChanges()
            int r2 = r9.size()
        L67:
            if (r5 >= r2) goto L79
            java.lang.Object r4 = r9.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
            boolean r4 = r4.getPressed()
            if (r4 == 0) goto L76
            goto L39
        L76:
            int r5 = r5 + 1
            goto L67
        L79:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.consumeUntilUp(androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object awaitSecondDown(AwaitPointerEventScope awaitPointerEventScope, PointerInputChange pointerInputChange, Continuation<? super PointerInputChange> continuation) {
        return awaitPointerEventScope.withTimeoutOrNull(awaitPointerEventScope.getViewConfiguration().getDoubleTapTimeoutMillis(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange, null), continuation);
    }

    public static /* synthetic */ Object detectTapAndPress$default(PointerInputScope pointerInputScope, Function3 function3, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function3 = NoPressGesture;
        }
        if ((i & 2) != 0) {
            function1 = null;
        }
        return detectTapAndPress(pointerInputScope, function3, function1, continuation);
    }

    public static final Object detectTapAndPress(PointerInputScope pointerInputScope, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function1, Continuation<? super Unit> continuation) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new TapGestureDetectorKt$detectTapAndPress$2(pointerInputScope, function3, function1, new PressGestureScopeImpl(pointerInputScope), null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }

    public static /* synthetic */ Object awaitFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return awaitFirstDown(awaitPointerEventScope, z, continuation);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use version with PointerEventPass instead.")
    public static final /* synthetic */ Object awaitFirstDown(AwaitPointerEventScope awaitPointerEventScope, boolean z, Continuation continuation) {
        return awaitFirstDown(awaitPointerEventScope, z, PointerEventPass.Main, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x004f -> B:10:0x0052). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitFirstDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, boolean r10, androidx.compose.ui.input.pointer.PointerEventPass r11, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2
            if (r0 == 0) goto L14
            r0 = r12
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            boolean r9 = r0.Z$0
            java.lang.Object r10 = r0.L$1
            androidx.compose.ui.input.pointer.PointerEventPass r10 = (androidx.compose.ui.input.pointer.PointerEventPass) r10
            java.lang.Object r11 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r11 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r11
            kotlin.ResultKt.throwOnFailure(r12)
            r8 = r10
            r10 = r9
            r9 = r11
            r11 = r8
            goto L52
        L38:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L40:
            kotlin.ResultKt.throwOnFailure(r12)
        L43:
            r0.L$0 = r9
            r0.L$1 = r11
            r0.Z$0 = r10
            r0.label = r3
            java.lang.Object r12 = r9.awaitPointerEvent(r11, r0)
            if (r12 != r1) goto L52
            return r1
        L52:
            androidx.compose.ui.input.pointer.PointerEvent r12 = (androidx.compose.ui.input.pointer.PointerEvent) r12
            java.util.List r2 = r12.getChanges()
            int r4 = r2.size()
            r5 = 0
            r6 = r5
        L5e:
            if (r6 >= r4) goto L77
            java.lang.Object r7 = r2.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            if (r10 == 0) goto L6d
            boolean r7 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDown(r7)
            goto L71
        L6d:
            boolean r7 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDownIgnoreConsumed(r7)
        L71:
            if (r7 != 0) goto L74
            goto L43
        L74:
            int r6 = r6 + 1
            goto L5e
        L77:
            java.util.List r9 = r12.getChanges()
            java.lang.Object r9 = r9.get(r5)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object awaitFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, PointerEventPass pointerEventPass, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitFirstDown(awaitPointerEventScope, z, pointerEventPass, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b7, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c4 -> B:11:0x0038). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object waitForUpOrCancellation(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, androidx.compose.ui.input.pointer.PointerEventPass r19, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object waitForUpOrCancellation$default(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return waitForUpOrCancellation(awaitPointerEventScope, pointerEventPass, continuation);
    }
}
