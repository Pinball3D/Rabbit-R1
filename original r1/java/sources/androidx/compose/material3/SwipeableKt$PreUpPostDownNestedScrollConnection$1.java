package androidx.compose.material3;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;

/* compiled from: Swipeable.kt */
@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u0015*\u00020\tH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u0016J\u001a\u0010\u0017\u001a\u00020\t*\u00020\u0015H\u0002ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u0018\u0082\u0002\u000f\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0019"}, d2 = {"androidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "onPostFling", "Landroidx/compose/ui/unit/Velocity;", "consumed", "available", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPostScroll", "Landroidx/compose/ui/geometry/Offset;", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPostScroll-DzOQY0M", "(JJI)J", "onPreFling", "onPreFling-QWom1Mo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPreScroll", "onPreScroll-OzD1aCk", "(JI)J", "toFloat", "", "(J)F", "toOffset", "(F)J", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwipeableKt$PreUpPostDownNestedScrollConnection$1 implements NestedScrollConnection {
    final /* synthetic */ SwipeableState<T> $this_PreUpPostDownNestedScrollConnection;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SwipeableKt$PreUpPostDownNestedScrollConnection$1(SwipeableState<T> swipeableState) {
        this.$this_PreUpPostDownNestedScrollConnection = swipeableState;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public long mo344onPreScrollOzD1aCk(long available, int source) {
        float f = toFloat(available);
        if (f < 0.0f && NestedScrollSource.m3650equalsimpl0(source, NestedScrollSource.INSTANCE.m3655getDragWNlRxjI())) {
            return toOffset(this.$this_PreUpPostDownNestedScrollConnection.performDrag$material3_release(f));
        }
        return Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public long mo343onPostScrollDzOQY0M(long consumed, long available, int source) {
        if (NestedScrollSource.m3650equalsimpl0(source, NestedScrollSource.INSTANCE.m3655getDragWNlRxjI())) {
            return toOffset(this.$this_PreUpPostDownNestedScrollConnection.performDrag$material3_release(toFloat(available)));
        }
        return Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo567onPreFlingQWom1Mo(long r7, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1
            if (r0 == 0) goto L14
            r0 = r9
            androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1 r0 = (androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1 r0 = new androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1
            r0.<init>(r6, r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2c
            long r7 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L79
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            kotlin.ResultKt.throwOnFailure(r9)
            float r9 = androidx.compose.ui.unit.Velocity.m5108getXimpl(r7)
            float r2 = androidx.compose.ui.unit.Velocity.m5109getYimpl(r7)
            long r4 = androidx.compose.ui.geometry.OffsetKt.Offset(r9, r2)
            float r9 = r6.toFloat(r4)
            r2 = 0
            int r2 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r2 >= 0) goto L73
            androidx.compose.material3.SwipeableState<T> r2 = r6.$this_PreUpPostDownNestedScrollConnection
            androidx.compose.runtime.State r2 = r2.getOffset()
            java.lang.Object r2 = r2.getValue()
            java.lang.Number r2 = (java.lang.Number) r2
            float r2 = r2.floatValue()
            androidx.compose.material3.SwipeableState<T> r4 = r6.$this_PreUpPostDownNestedScrollConnection
            float r4 = r4.getMinBound()
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L73
            androidx.compose.material3.SwipeableState<T> r6 = r6.$this_PreUpPostDownNestedScrollConnection
            r0.J$0 = r7
            r0.label = r3
            java.lang.Object r6 = r6.performFling$material3_release(r9, r0)
            if (r6 != r1) goto L79
            return r1
        L73:
            androidx.compose.ui.unit.Velocity$Companion r6 = androidx.compose.ui.unit.Velocity.INSTANCE
            long r7 = r6.m5119getZero9UxMQ8M()
        L79:
            androidx.compose.ui.unit.Velocity r6 = androidx.compose.ui.unit.Velocity.m5099boximpl(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1.mo567onPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo342onPostFlingRZ2iAVY(long r5, long r7, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r9) {
        /*
            r4 = this;
            boolean r5 = r9 instanceof androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1
            if (r5 == 0) goto L14
            r5 = r9
            androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1 r5 = (androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1) r5
            int r6 = r5.label
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r6 & r0
            if (r6 == 0) goto L14
            int r6 = r5.label
            int r6 = r6 - r0
            r5.label = r6
            goto L19
        L14:
            androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1 r5 = new androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1
            r5.<init>(r4, r9)
        L19:
            java.lang.Object r6 = r5.result
            java.lang.Object r9 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r5.label
            r1 = 1
            if (r0 == 0) goto L34
            if (r0 != r1) goto L2c
            long r7 = r5.J$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L54
        L2c:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L34:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.compose.material3.SwipeableState<T> r6 = r4.$this_PreUpPostDownNestedScrollConnection
            float r0 = androidx.compose.ui.unit.Velocity.m5108getXimpl(r7)
            float r2 = androidx.compose.ui.unit.Velocity.m5109getYimpl(r7)
            long r2 = androidx.compose.ui.geometry.OffsetKt.Offset(r0, r2)
            float r4 = r4.toFloat(r2)
            r5.J$0 = r7
            r5.label = r1
            java.lang.Object r4 = r6.performFling$material3_release(r4, r5)
            if (r4 != r9) goto L54
            return r9
        L54:
            androidx.compose.ui.unit.Velocity r4 = androidx.compose.ui.unit.Velocity.m5099boximpl(r7)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SwipeableKt$PreUpPostDownNestedScrollConnection$1.mo342onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final long toOffset(float f) {
        return OffsetKt.Offset(0.0f, f);
    }

    private final float toFloat(long j) {
        return Offset.m2401getYimpl(j);
    }
}
