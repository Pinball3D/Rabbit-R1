package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.unit.Velocity;
import androidx.core.app.NotificationCompat;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: Draggable.kt */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002BÓ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000f\u0012<\u0010\u0010\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011¢\u0006\u0002\b\u001a\u0012<\u0010\u001b\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011¢\u0006\u0002\b\u001a\u0012\u0006\u0010\u001e\u001a\u00020\bø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ\b\u0010,\u001a\u00020\u0018H\u0002J\b\u0010-\u001a\u00020\u0018H\u0016J\b\u0010.\u001a\u00020\u0018H\u0016J-\u0010/\u001a\u00020\u00182\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b6\u00107JÙ\u0001\u00108\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000f2<\u0010\u0010\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011¢\u0006\u0002\b\u001a2<\u0010\u001b\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011¢\u0006\u0002\b\u001a2\u0006\u0010\u001e\u001a\u00020\bø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ\u0015\u00109\u001a\u00020\u0018*\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010:J\u001d\u0010;\u001a\u00020\u0018*\u00020\u00122\u0006\u0010<\u001a\u00020=H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010>J\u001d\u0010?\u001a\u00020\u0018*\u00020\u00122\u0006\u0010<\u001a\u00020@H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010AR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\b0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000RL\u0010\u0010\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011¢\u0006\u0002\b\u001aX\u0082\u000eø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010'RL\u0010\u001b\u001a8\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011¢\u0006\u0002\b\u001aX\u0082\u000eø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010'R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006B"}, d2 = {"Landroidx/compose/foundation/gestures/DraggableNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/gestures/DraggableState;", "canDrag", "Lkotlin/Function1;", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "enabled", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "startDragImmediately", "Lkotlin/Function0;", "onDragStarted", "Lkotlin/Function3;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/ParameterName;", "name", "startedPosition", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "onDragStopped", "Landroidx/compose/ui/unit/Velocity;", "velocity", "reverseDirection", "(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V", "_canDrag", "_startDragImmediately", "channel", "Lkotlinx/coroutines/channels/Channel;", "Landroidx/compose/foundation/gestures/DragEvent;", "dragInteraction", "Landroidx/compose/foundation/interaction/DragInteraction$Start;", "Lkotlin/jvm/functions/Function3;", "pointerInputNode", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "velocityTracker", "Landroidx/compose/ui/input/pointer/util/VelocityTracker;", "disposeInteractionSource", "onCancelPointerInput", "onDetach", "onPointerEvent", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "update", "processDragCancel", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processDragStart", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;", "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processDragStop", "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;", "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DraggableNode extends DelegatingNode implements PointerInputModifierNode {
    private final Function1<PointerInputChange, Boolean> _canDrag;
    private final Function0<Boolean> _startDragImmediately;
    private Function1<? super PointerInputChange, Boolean> canDrag;
    private final Channel<DragEvent> channel;
    private DragInteraction.Start dragInteraction;
    private boolean enabled;
    private MutableInteractionSource interactionSource;
    private Function3<? super CoroutineScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> onDragStarted;
    private Function3<? super CoroutineScope, ? super Velocity, ? super Continuation<? super Unit>, ? extends Object> onDragStopped;
    private Orientation orientation;
    private final SuspendingPointerInputModifierNode pointerInputNode;
    private boolean reverseDirection;
    private Function0<Boolean> startDragImmediately;
    private DraggableState state;
    private final VelocityTracker velocityTracker;

    public DraggableNode(DraggableState state, Function1<? super PointerInputChange, Boolean> canDrag, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, Function0<Boolean> startDragImmediately, Function3<? super CoroutineScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> onDragStarted, Function3<? super CoroutineScope, ? super Velocity, ? super Continuation<? super Unit>, ? extends Object> onDragStopped, boolean z2) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(canDrag, "canDrag");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(startDragImmediately, "startDragImmediately");
        Intrinsics.checkNotNullParameter(onDragStarted, "onDragStarted");
        Intrinsics.checkNotNullParameter(onDragStopped, "onDragStopped");
        this.state = state;
        this.canDrag = canDrag;
        this.orientation = orientation;
        this.enabled = z;
        this.interactionSource = mutableInteractionSource;
        this.startDragImmediately = startDragImmediately;
        this.onDragStarted = onDragStarted;
        this.onDragStopped = onDragStopped;
        this.reverseDirection = z2;
        this._canDrag = new Function1<PointerInputChange, Boolean>() { // from class: androidx.compose.foundation.gestures.DraggableNode$_canDrag$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(PointerInputChange it) {
                Function1 function1;
                Intrinsics.checkNotNullParameter(it, "it");
                function1 = DraggableNode.this.canDrag;
                return (Boolean) function1.invoke(it);
            }
        };
        this._startDragImmediately = new Function0<Boolean>() { // from class: androidx.compose.foundation.gestures.DraggableNode$_startDragImmediately$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                Function0 function0;
                function0 = DraggableNode.this.startDragImmediately;
                return (Boolean) function0.invoke();
            }
        };
        this.velocityTracker = new VelocityTracker();
        this.pointerInputNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new DraggableNode$pointerInputNode$1(this, null)));
        this.channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        disposeInteractionSource();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public void mo152onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pass, "pass");
        this.pointerInputNode.mo152onPointerEventH0pRuoY(pointerEvent, pass, bounds);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.pointerInputNode.onCancelPointerInput();
    }

    public final void update(DraggableState state, Function1<? super PointerInputChange, Boolean> canDrag, Orientation orientation, boolean enabled, MutableInteractionSource interactionSource, Function0<Boolean> startDragImmediately, Function3<? super CoroutineScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> onDragStarted, Function3<? super CoroutineScope, ? super Velocity, ? super Continuation<? super Unit>, ? extends Object> onDragStopped, boolean reverseDirection) {
        boolean z;
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(canDrag, "canDrag");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(startDragImmediately, "startDragImmediately");
        Intrinsics.checkNotNullParameter(onDragStarted, "onDragStarted");
        Intrinsics.checkNotNullParameter(onDragStopped, "onDragStopped");
        boolean z2 = true;
        if (Intrinsics.areEqual(this.state, state)) {
            z = false;
        } else {
            this.state = state;
            z = true;
        }
        this.canDrag = canDrag;
        if (this.orientation != orientation) {
            this.orientation = orientation;
            z = true;
        }
        if (this.enabled != enabled) {
            this.enabled = enabled;
            if (!enabled) {
                disposeInteractionSource();
            }
        } else {
            z2 = z;
        }
        if (!Intrinsics.areEqual(this.interactionSource, interactionSource)) {
            disposeInteractionSource();
            this.interactionSource = interactionSource;
        }
        this.startDragImmediately = startDragImmediately;
        this.onDragStarted = onDragStarted;
        this.onDragStopped = onDragStopped;
        if (this.reverseDirection != reverseDirection) {
            this.reverseDirection = reverseDirection;
        } else if (!z2) {
            return;
        }
        this.pointerInputNode.resetPointerInputHandler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragStart(kotlinx.coroutines.CoroutineScope r9, androidx.compose.foundation.gestures.DragEvent.DragStarted r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode.processDragStart(kotlinx.coroutines.CoroutineScope, androidx.compose.foundation.gestures.DragEvent$DragStarted, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragStop(kotlinx.coroutines.CoroutineScope r9, androidx.compose.foundation.gestures.DragEvent.DragStopped r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof androidx.compose.foundation.gestures.DraggableNode$processDragStop$1
            if (r0 == 0) goto L14
            r0 = r11
            androidx.compose.foundation.gestures.DraggableNode$processDragStop$1 r0 = (androidx.compose.foundation.gestures.DraggableNode$processDragStop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            androidx.compose.foundation.gestures.DraggableNode$processDragStop$1 r0 = new androidx.compose.foundation.gestures.DraggableNode$processDragStop$1
            r0.<init>(r8, r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r11)
            goto L85
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            java.lang.Object r8 = r0.L$2
            androidx.compose.foundation.gestures.DragEvent$DragStopped r8 = (androidx.compose.foundation.gestures.DragEvent.DragStopped) r8
            java.lang.Object r9 = r0.L$1
            kotlinx.coroutines.CoroutineScope r9 = (kotlinx.coroutines.CoroutineScope) r9
            java.lang.Object r10 = r0.L$0
            androidx.compose.foundation.gestures.DraggableNode r10 = (androidx.compose.foundation.gestures.DraggableNode) r10
            kotlin.ResultKt.throwOnFailure(r11)
            r7 = r10
            r10 = r8
            r8 = r7
            goto L6a
        L49:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.compose.foundation.interaction.DragInteraction$Start r11 = r8.dragInteraction
            if (r11 == 0) goto L6c
            androidx.compose.foundation.interaction.MutableInteractionSource r2 = r8.interactionSource
            if (r2 == 0) goto L6a
            androidx.compose.foundation.interaction.DragInteraction$Stop r6 = new androidx.compose.foundation.interaction.DragInteraction$Stop
            r6.<init>(r11)
            androidx.compose.foundation.interaction.Interaction r6 = (androidx.compose.foundation.interaction.Interaction) r6
            r0.L$0 = r8
            r0.L$1 = r9
            r0.L$2 = r10
            r0.label = r4
            java.lang.Object r11 = r2.emit(r6, r0)
            if (r11 != r1) goto L6a
            return r1
        L6a:
            r8.dragInteraction = r5
        L6c:
            kotlin.jvm.functions.Function3<? super kotlinx.coroutines.CoroutineScope, ? super androidx.compose.ui.unit.Velocity, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r8 = r8.onDragStopped
            long r10 = r10.getVelocity()
            androidx.compose.ui.unit.Velocity r10 = androidx.compose.ui.unit.Velocity.m5099boximpl(r10)
            r0.L$0 = r5
            r0.L$1 = r5
            r0.L$2 = r5
            r0.label = r3
            java.lang.Object r8 = r8.invoke(r9, r10, r0)
            if (r8 != r1) goto L85
            return r1
        L85:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode.processDragStop(kotlinx.coroutines.CoroutineScope, androidx.compose.foundation.gestures.DragEvent$DragStopped, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processDragCancel(kotlinx.coroutines.CoroutineScope r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof androidx.compose.foundation.gestures.DraggableNode$processDragCancel$1
            if (r0 == 0) goto L14
            r0 = r11
            androidx.compose.foundation.gestures.DraggableNode$processDragCancel$1 r0 = (androidx.compose.foundation.gestures.DraggableNode$processDragCancel$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            androidx.compose.foundation.gestures.DraggableNode$processDragCancel$1 r0 = new androidx.compose.foundation.gestures.DraggableNode$processDragCancel$1
            r0.<init>(r9, r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L45
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7f
        L2e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L36:
            java.lang.Object r9 = r0.L$1
            kotlinx.coroutines.CoroutineScope r9 = (kotlinx.coroutines.CoroutineScope) r9
            java.lang.Object r10 = r0.L$0
            androidx.compose.foundation.gestures.DraggableNode r10 = (androidx.compose.foundation.gestures.DraggableNode) r10
            kotlin.ResultKt.throwOnFailure(r11)
            r8 = r10
            r10 = r9
            r9 = r8
            goto L64
        L45:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.compose.foundation.interaction.DragInteraction$Start r11 = r9.dragInteraction
            if (r11 == 0) goto L66
            androidx.compose.foundation.interaction.MutableInteractionSource r2 = r9.interactionSource
            if (r2 == 0) goto L64
            androidx.compose.foundation.interaction.DragInteraction$Cancel r6 = new androidx.compose.foundation.interaction.DragInteraction$Cancel
            r6.<init>(r11)
            androidx.compose.foundation.interaction.Interaction r6 = (androidx.compose.foundation.interaction.Interaction) r6
            r0.L$0 = r9
            r0.L$1 = r10
            r0.label = r4
            java.lang.Object r11 = r2.emit(r6, r0)
            if (r11 != r1) goto L64
            return r1
        L64:
            r9.dragInteraction = r5
        L66:
            kotlin.jvm.functions.Function3<? super kotlinx.coroutines.CoroutineScope, ? super androidx.compose.ui.unit.Velocity, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r9 = r9.onDragStopped
            androidx.compose.ui.unit.Velocity$Companion r11 = androidx.compose.ui.unit.Velocity.INSTANCE
            long r6 = r11.m5119getZero9UxMQ8M()
            androidx.compose.ui.unit.Velocity r11 = androidx.compose.ui.unit.Velocity.m5099boximpl(r6)
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r9 = r9.invoke(r10, r11, r0)
            if (r9 != r1) goto L7f
            return r1
        L7f:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode.processDragCancel(kotlinx.coroutines.CoroutineScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void disposeInteractionSource() {
        DragInteraction.Start start = this.dragInteraction;
        if (start != null) {
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                mutableInteractionSource.tryEmit(new DragInteraction.Cancel(start));
            }
            this.dragInteraction = null;
        }
    }
}
