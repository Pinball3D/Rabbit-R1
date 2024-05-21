package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;

/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ%\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"androidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "onPostFling", "Landroidx/compose/ui/unit/Velocity;", "consumed", "available", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPostScroll", "Landroidx/compose/ui/geometry/Offset;", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPostScroll-DzOQY0M", "(JJI)J", "onPreScroll", "onPreScroll-OzD1aCk", "(JI)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScrollableKt$scrollableNestedScrollConnection$1 implements NestedScrollConnection {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ State<ScrollingLogic> $scrollLogic;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollableKt$scrollableNestedScrollConnection$1(State<ScrollingLogic> state, boolean z) {
        this.$scrollLogic = state;
        this.$enabled = z;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk, reason: not valid java name */
    public long mo344onPreScrollOzD1aCk(long available, int source) {
        if (NestedScrollSource.m3650equalsimpl0(source, NestedScrollSource.INSTANCE.m3656getFlingWNlRxjI())) {
            this.$scrollLogic.getValue().registerNestedFling(true);
        }
        return Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M, reason: not valid java name */
    public long mo343onPostScrollDzOQY0M(long consumed, long available, int source) {
        if (this.$enabled) {
            return this.$scrollLogic.getValue().m348performRawScrollMKHz9U(available);
        }
        return Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo342onPostFlingRZ2iAVY(long r3, long r5, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r7) {
        /*
            r2 = this;
            boolean r3 = r7 instanceof androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1
            if (r3 == 0) goto L14
            r3 = r7
            androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 r3 = (androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1) r3
            int r4 = r3.label
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r4 & r0
            if (r4 == 0) goto L14
            int r4 = r3.label
            int r4 = r4 - r0
            r3.label = r4
            goto L19
        L14:
            androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1 r3 = new androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1
            r3.<init>(r2, r7)
        L19:
            java.lang.Object r4 = r3.result
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r3.label
            r1 = 1
            if (r0 == 0) goto L38
            if (r0 != r1) goto L30
            long r5 = r3.J$0
            java.lang.Object r2 = r3.L$0
            androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1 r2 = (androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1) r2
            kotlin.ResultKt.throwOnFailure(r4)
            goto L54
        L30:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            r2.<init>(r3)
            throw r2
        L38:
            kotlin.ResultKt.throwOnFailure(r4)
            boolean r4 = r2.$enabled
            if (r4 == 0) goto L5f
            androidx.compose.runtime.State<androidx.compose.foundation.gestures.ScrollingLogic> r4 = r2.$scrollLogic
            java.lang.Object r4 = r4.getValue()
            androidx.compose.foundation.gestures.ScrollingLogic r4 = (androidx.compose.foundation.gestures.ScrollingLogic) r4
            r3.L$0 = r2
            r3.J$0 = r5
            r3.label = r1
            java.lang.Object r4 = r4.m346doFlingAnimationQWom1Mo(r5, r3)
            if (r4 != r7) goto L54
            return r7
        L54:
            androidx.compose.ui.unit.Velocity r4 = (androidx.compose.ui.unit.Velocity) r4
            long r3 = r4.getPackedValue()
            long r3 = androidx.compose.ui.unit.Velocity.m5111minusAH228Gc(r5, r3)
            goto L65
        L5f:
            androidx.compose.ui.unit.Velocity$Companion r3 = androidx.compose.ui.unit.Velocity.INSTANCE
            long r3 = r3.m5119getZero9UxMQ8M()
        L65:
            androidx.compose.ui.unit.Velocity r3 = androidx.compose.ui.unit.Velocity.m5099boximpl(r3)
            androidx.compose.runtime.State<androidx.compose.foundation.gestures.ScrollingLogic> r2 = r2.$scrollLogic
            r3.getPackedValue()
            java.lang.Object r2 = r2.getValue()
            androidx.compose.foundation.gestures.ScrollingLogic r2 = (androidx.compose.foundation.gestures.ScrollingLogic) r2
            r4 = 0
            r2.registerNestedFling(r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt$scrollableNestedScrollConnection$1.mo342onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
