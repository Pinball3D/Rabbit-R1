package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerInteropUtils.android.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a&\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0000\u001a5\u0010\u0007\u001a\u00020\u0001*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a5\u0010\r\u001a\u00020\u0001*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\f\u001a=\u0010\r\u001a\u00020\u0001*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"emptyCancelMotionEventScope", "", "nowMillis", "", "block", "Lkotlin/Function1;", "Landroid/view/MotionEvent;", "toCancelMotionEventScope", "Landroidx/compose/ui/input/pointer/PointerEvent;", "offset", "Landroidx/compose/ui/geometry/Offset;", "toCancelMotionEventScope-d-4ec7I", "(Landroidx/compose/ui/input/pointer/PointerEvent;JLkotlin/jvm/functions/Function1;)V", "toMotionEventScope", "toMotionEventScope-d-4ec7I", "cancel", "", "toMotionEventScope-ubNVwUQ", "(Landroidx/compose/ui/input/pointer/PointerEvent;JLkotlin/jvm/functions/Function1;Z)V", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PointerInteropUtils_androidKt {
    /* renamed from: toMotionEventScope-d-4ec7I, reason: not valid java name */
    public static final void m3817toMotionEventScoped4ec7I(PointerEvent toMotionEventScope, long j, Function1<? super MotionEvent, Unit> block) {
        Intrinsics.checkNotNullParameter(toMotionEventScope, "$this$toMotionEventScope");
        Intrinsics.checkNotNullParameter(block, "block");
        m3818toMotionEventScopeubNVwUQ(toMotionEventScope, j, block, false);
    }

    /* renamed from: toCancelMotionEventScope-d-4ec7I, reason: not valid java name */
    public static final void m3816toCancelMotionEventScoped4ec7I(PointerEvent toCancelMotionEventScope, long j, Function1<? super MotionEvent, Unit> block) {
        Intrinsics.checkNotNullParameter(toCancelMotionEventScope, "$this$toCancelMotionEventScope");
        Intrinsics.checkNotNullParameter(block, "block");
        m3818toMotionEventScopeubNVwUQ(toCancelMotionEventScope, j, block, true);
    }

    public static /* synthetic */ void emptyCancelMotionEventScope$default(long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            j = SystemClock.uptimeMillis();
        }
        emptyCancelMotionEventScope(j, function1);
    }

    public static final void emptyCancelMotionEventScope(long j, Function1<? super MotionEvent, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MotionEvent motionEvent = MotionEvent.obtain(j, j, 3, 0.0f, 0.0f, 0);
        motionEvent.setSource(0);
        Intrinsics.checkNotNullExpressionValue(motionEvent, "motionEvent");
        block.invoke(motionEvent);
        motionEvent.recycle();
    }

    /* renamed from: toMotionEventScope-ubNVwUQ, reason: not valid java name */
    private static final void m3818toMotionEventScopeubNVwUQ(PointerEvent pointerEvent, long j, Function1<? super MotionEvent, Unit> function1, boolean z) {
        MotionEvent motionEvent$ui_release = pointerEvent.getMotionEvent$ui_release();
        if (motionEvent$ui_release == null) {
            throw new IllegalArgumentException("The PointerEvent receiver cannot have a null MotionEvent.".toString());
        }
        int action = motionEvent$ui_release.getAction();
        if (z) {
            motionEvent$ui_release.setAction(3);
        }
        motionEvent$ui_release.offsetLocation(-Offset.m2400getXimpl(j), -Offset.m2401getYimpl(j));
        function1.invoke(motionEvent$ui_release);
        motionEvent$ui_release.offsetLocation(Offset.m2400getXimpl(j), Offset.m2401getYimpl(j));
        motionEvent$ui_release.setAction(action);
    }
}
