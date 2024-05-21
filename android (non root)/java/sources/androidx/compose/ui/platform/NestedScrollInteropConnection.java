package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NestedScrollInteropConnection.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0002J)\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u001cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroidx/compose/ui/platform/NestedScrollInteropConnection;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "view", "Landroid/view/View;", "(Landroid/view/View;)V", "consumedScrollCache", "", "nestedScrollChildHelper", "Landroidx/core/view/NestedScrollingChildHelper;", "interruptOngoingScrolls", "", "onPostFling", "Landroidx/compose/ui/unit/Velocity;", "consumed", "available", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPostScroll", "Landroidx/compose/ui/geometry/Offset;", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPostScroll-DzOQY0M", "(JJI)J", "onPreFling", "onPreFling-QWom1Mo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPreScroll", "onPreScroll-OzD1aCk", "(JI)J", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NestedScrollInteropConnection implements NestedScrollConnection {
    private final int[] consumedScrollCache;
    private final NestedScrollingChildHelper nestedScrollChildHelper;
    private final View view;

    public NestedScrollInteropConnection(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
        NestedScrollingChildHelper nestedScrollingChildHelper = new NestedScrollingChildHelper(view);
        nestedScrollingChildHelper.setNestedScrollingEnabled(true);
        this.nestedScrollChildHelper = nestedScrollingChildHelper;
        this.consumedScrollCache = new int[2];
        ViewCompat.setNestedScrollingEnabled(view, true);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public long mo344onPreScrollOzD1aCk(long available, int source) {
        int m4226getScrollAxesk4lQ0M;
        int m4228toViewTypeGyEprt8;
        int m4228toViewTypeGyEprt82;
        long m4227toOffsetUv8p0NA;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        m4226getScrollAxesk4lQ0M = NestedScrollInteropConnectionKt.m4226getScrollAxesk4lQ0M(available);
        m4228toViewTypeGyEprt8 = NestedScrollInteropConnectionKt.m4228toViewTypeGyEprt8(source);
        if (nestedScrollingChildHelper.startNestedScroll(m4226getScrollAxesk4lQ0M, m4228toViewTypeGyEprt8)) {
            ArraysKt.fill$default(this.consumedScrollCache, 0, 0, 0, 6, (Object) null);
            NestedScrollingChildHelper nestedScrollingChildHelper2 = this.nestedScrollChildHelper;
            int composeToViewOffset = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2400getXimpl(available));
            int composeToViewOffset2 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2401getYimpl(available));
            int[] iArr = this.consumedScrollCache;
            m4228toViewTypeGyEprt82 = NestedScrollInteropConnectionKt.m4228toViewTypeGyEprt8(source);
            nestedScrollingChildHelper2.dispatchNestedPreScroll(composeToViewOffset, composeToViewOffset2, iArr, null, m4228toViewTypeGyEprt82);
            m4227toOffsetUv8p0NA = NestedScrollInteropConnectionKt.m4227toOffsetUv8p0NA(this.consumedScrollCache, available);
            return m4227toOffsetUv8p0NA;
        }
        return Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public long mo343onPostScrollDzOQY0M(long consumed, long available, int source) {
        int m4226getScrollAxesk4lQ0M;
        int m4228toViewTypeGyEprt8;
        int m4228toViewTypeGyEprt82;
        long m4227toOffsetUv8p0NA;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        m4226getScrollAxesk4lQ0M = NestedScrollInteropConnectionKt.m4226getScrollAxesk4lQ0M(available);
        m4228toViewTypeGyEprt8 = NestedScrollInteropConnectionKt.m4228toViewTypeGyEprt8(source);
        if (nestedScrollingChildHelper.startNestedScroll(m4226getScrollAxesk4lQ0M, m4228toViewTypeGyEprt8)) {
            ArraysKt.fill$default(this.consumedScrollCache, 0, 0, 0, 6, (Object) null);
            NestedScrollingChildHelper nestedScrollingChildHelper2 = this.nestedScrollChildHelper;
            int composeToViewOffset = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2400getXimpl(consumed));
            int composeToViewOffset2 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2401getYimpl(consumed));
            int composeToViewOffset3 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2400getXimpl(available));
            int composeToViewOffset4 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2401getYimpl(available));
            m4228toViewTypeGyEprt82 = NestedScrollInteropConnectionKt.m4228toViewTypeGyEprt8(source);
            nestedScrollingChildHelper2.dispatchNestedScroll(composeToViewOffset, composeToViewOffset2, composeToViewOffset3, composeToViewOffset4, null, m4228toViewTypeGyEprt82, this.consumedScrollCache);
            m4227toOffsetUv8p0NA = NestedScrollInteropConnectionKt.m4227toOffsetUv8p0NA(this.consumedScrollCache, available);
            return m4227toOffsetUv8p0NA;
        }
        return Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    public Object mo567onPreFlingQWom1Mo(long j, Continuation<? super Velocity> continuation) {
        float viewVelocity;
        float viewVelocity2;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        viewVelocity = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m5108getXimpl(j));
        viewVelocity2 = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m5109getYimpl(j));
        if (!nestedScrollingChildHelper.dispatchNestedPreFling(viewVelocity, viewVelocity2)) {
            j = Velocity.INSTANCE.m5119getZero9UxMQ8M();
        }
        interruptOngoingScrolls();
        return Velocity.m5099boximpl(j);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    public Object mo342onPostFlingRZ2iAVY(long j, long j2, Continuation<? super Velocity> continuation) {
        float viewVelocity;
        float viewVelocity2;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        viewVelocity = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m5108getXimpl(j2));
        viewVelocity2 = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m5109getYimpl(j2));
        if (!nestedScrollingChildHelper.dispatchNestedFling(viewVelocity, viewVelocity2, true)) {
            j2 = Velocity.INSTANCE.m5119getZero9UxMQ8M();
        }
        interruptOngoingScrolls();
        return Velocity.m5099boximpl(j2);
    }

    private final void interruptOngoingScrolls() {
        if (this.nestedScrollChildHelper.hasNestedScrollingParent(0)) {
            this.nestedScrollChildHelper.stopNestedScroll(0);
        }
        if (this.nestedScrollChildHelper.hasNestedScrollingParent(1)) {
            this.nestedScrollChildHelper.stopNestedScroll(1);
        }
    }
}
