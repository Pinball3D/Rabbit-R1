package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.LayoutCoordinates;
import io.sentry.protocol.SentryThread;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerInteropFilter.android.kt */
@Metadata(d1 = {"\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\tH\u0016J-\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0014\u001a\u00020\tH\u0002R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"androidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "shareWithSiblings", "", "getShareWithSiblings", "()Z", SentryThread.JsonKeys.STATE, "Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;", "dispatchToView", "", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "onCancel", "onPointerEvent", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "reset", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PointerInteropFilter$pointerInputFilter$1 extends PointerInputFilter {
    private PointerInteropFilter.DispatchToViewState state = PointerInteropFilter.DispatchToViewState.Unknown;
    final /* synthetic */ PointerInteropFilter this$0;

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public boolean getShareWithSiblings() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter pointerInteropFilter) {
        this.this$0 = pointerInteropFilter;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    /* renamed from: onPointerEvent-H0pRuoY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo3779onPointerEventH0pRuoY(androidx.compose.ui.input.pointer.PointerEvent r5, androidx.compose.ui.input.pointer.PointerEventPass r6, long r7) {
        /*
            r4 = this;
            java.lang.String r7 = "pointerEvent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r7)
            java.lang.String r7 = "pass"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r7)
            java.util.List r7 = r5.getChanges()
            androidx.compose.ui.input.pointer.PointerInteropFilter r8 = r4.this$0
            boolean r8 = r8.getDisallowIntercept()
            r0 = 0
            if (r8 != 0) goto L36
            int r8 = r7.size()
            r1 = r0
        L1c:
            if (r1 >= r8) goto L34
            java.lang.Object r2 = r7.get(r1)
            androidx.compose.ui.input.pointer.PointerInputChange r2 = (androidx.compose.ui.input.pointer.PointerInputChange) r2
            boolean r3 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDownIgnoreConsumed(r2)
            if (r3 != 0) goto L36
            boolean r2 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUpIgnoreConsumed(r2)
            if (r2 == 0) goto L31
            goto L36
        L31:
            int r1 = r1 + 1
            goto L1c
        L34:
            r8 = r0
            goto L37
        L36:
            r8 = 1
        L37:
            androidx.compose.ui.input.pointer.PointerInteropFilter$DispatchToViewState r1 = r4.state
            androidx.compose.ui.input.pointer.PointerInteropFilter$DispatchToViewState r2 = androidx.compose.ui.input.pointer.PointerInteropFilter.DispatchToViewState.NotDispatching
            if (r1 == r2) goto L4f
            androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
            if (r6 != r1) goto L46
            if (r8 == 0) goto L46
            r4.dispatchToView(r5)
        L46:
            androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            if (r6 != r1) goto L4f
            if (r8 != 0) goto L4f
            r4.dispatchToView(r5)
        L4f:
            androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            if (r6 != r5) goto L6c
            int r5 = r7.size()
        L57:
            if (r0 >= r5) goto L69
            java.lang.Object r6 = r7.get(r0)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUpIgnoreConsumed(r6)
            if (r6 != 0) goto L66
            goto L6c
        L66:
            int r0 = r0 + 1
            goto L57
        L69:
            r4.reset()
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1.mo3779onPointerEventH0pRuoY(androidx.compose.ui.input.pointer.PointerEvent, androidx.compose.ui.input.pointer.PointerEventPass, long):void");
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void onCancel() {
        if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
            long uptimeMillis = SystemClock.uptimeMillis();
            final PointerInteropFilter pointerInteropFilter = this.this$0;
            PointerInteropUtils_androidKt.emptyCancelMotionEventScope(uptimeMillis, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$onCancel$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                    invoke2(motionEvent);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MotionEvent motionEvent) {
                    Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                    PointerInteropFilter.this.getOnTouchEvent().invoke(motionEvent);
                }
            });
            reset();
        }
    }

    private final void reset() {
        this.state = PointerInteropFilter.DispatchToViewState.Unknown;
        this.this$0.setDisallowIntercept$ui_release(false);
    }

    private final void dispatchToView(PointerEvent pointerEvent) {
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            if (changes.get(i).isConsumed()) {
                if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
                    LayoutCoordinates layoutCoordinates$ui_release = getLayoutCoordinates();
                    if (layoutCoordinates$ui_release != null) {
                        long mo3885localToRootMKHz9U = layoutCoordinates$ui_release.mo3885localToRootMKHz9U(Offset.INSTANCE.m2416getZeroF1C5BW0());
                        final PointerInteropFilter pointerInteropFilter = this.this$0;
                        PointerInteropUtils_androidKt.m3816toCancelMotionEventScoped4ec7I(pointerEvent, mo3885localToRootMKHz9U, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$2
                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                                invoke2(motionEvent);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(MotionEvent motionEvent) {
                                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                                PointerInteropFilter.this.getOnTouchEvent().invoke(motionEvent);
                            }
                        });
                    } else {
                        throw new IllegalStateException("layoutCoordinates not set".toString());
                    }
                }
                this.state = PointerInteropFilter.DispatchToViewState.NotDispatching;
                return;
            }
        }
        LayoutCoordinates layoutCoordinates$ui_release2 = getLayoutCoordinates();
        if (layoutCoordinates$ui_release2 != null) {
            long mo3885localToRootMKHz9U2 = layoutCoordinates$ui_release2.mo3885localToRootMKHz9U(Offset.INSTANCE.m2416getZeroF1C5BW0());
            final PointerInteropFilter pointerInteropFilter2 = this.this$0;
            PointerInteropUtils_androidKt.m3817toMotionEventScoped4ec7I(pointerEvent, mo3885localToRootMKHz9U2, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                    invoke2(motionEvent);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MotionEvent motionEvent) {
                    PointerInteropFilter.DispatchToViewState dispatchToViewState;
                    Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                    if (motionEvent.getActionMasked() == 0) {
                        PointerInteropFilter$pointerInputFilter$1 pointerInteropFilter$pointerInputFilter$1 = PointerInteropFilter$pointerInputFilter$1.this;
                        if (pointerInteropFilter2.getOnTouchEvent().invoke(motionEvent).booleanValue()) {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.Dispatching;
                        } else {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.NotDispatching;
                        }
                        pointerInteropFilter$pointerInputFilter$1.state = dispatchToViewState;
                        return;
                    }
                    pointerInteropFilter2.getOnTouchEvent().invoke(motionEvent);
                }
            });
            if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
                int size2 = changes.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    changes.get(i2).consume();
                }
                InternalPointerEvent internalPointerEvent = pointerEvent.getInternalPointerEvent();
                if (internalPointerEvent == null) {
                    return;
                }
                internalPointerEvent.setSuppressMovementConsumption(!this.this$0.getDisallowIntercept());
                return;
            }
            return;
        }
        throw new IllegalStateException("layoutCoordinates not set".toString());
    }
}
