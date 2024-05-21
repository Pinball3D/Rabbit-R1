package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: Swipeable.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u001b\b\u0011\u0018\u0000 x*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001xBB\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012#\b\u0002\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\b¢\u0006\u0002\u0010\rJ'\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020\u00062\f\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010aJ+\u0010b\u001a\u00020^2\u0006\u0010O\u001a\u00028\u00002\u000e\b\u0002\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0081@ø\u0001\u0000¢\u0006\u0004\bd\u0010eJ!\u0010f\u001a\u00020^2\u0012\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0011H\u0000¢\u0006\u0002\bhJ\u0015\u0010i\u001a\u00020\u00062\u0006\u0010j\u001a\u00020\u0006H\u0000¢\u0006\u0002\bkJ\u001b\u0010l\u001a\u00020^2\u0006\u0010m\u001a\u00020\u0006H\u0080@ø\u0001\u0000¢\u0006\u0004\bn\u0010oJ;\u0010p\u001a\u00020^2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0011H\u0080@ø\u0001\u0000¢\u0006\u0004\br\u0010sJ\u0019\u0010t\u001a\u00020^2\u0006\u0010_\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010oJ\u001b\u0010u\u001a\u00020^2\u0006\u0010O\u001a\u00028\u0000H\u0081@ø\u0001\u0000¢\u0006\u0004\bv\u0010wR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fX\u0082\u0004¢\u0006\u0002\n\u0000RC\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00112\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00118@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR+\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00008F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b#\u0010\u0018\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010$\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0014\u0010)\u001a\u00020*X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R+\u0010-\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\f8F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b1\u0010\u0018\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R \u00102\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u001103X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00104\u001a\u00020\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010(\"\u0004\b6\u00107R\u001a\u00108\u001a\u00020\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010(\"\u0004\b:\u00107R\u0017\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00060<8F¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0014\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00060<8F¢\u0006\u0006\u001a\u0004\bA\u0010>R\u0014\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00060\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000D8@X\u0081\u0004¢\u0006\f\u0012\u0004\bE\u0010&\u001a\u0004\bF\u0010GR/\u0010I\u001a\u0004\u0018\u00010H2\b\u0010\u0010\u001a\u0004\u0018\u00010H8@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\bN\u0010\u0018\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001a\u0010O\u001a\u00028\u00008@X\u0081\u0004¢\u0006\f\u0012\u0004\bP\u0010&\u001a\u0004\bQ\u0010 RO\u0010S\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060R2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060R8@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\bX\u0010\u0018\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR+\u0010Y\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b\\\u0010\u0018\u001a\u0004\bZ\u0010(\"\u0004\b[\u00107\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006y"}, d2 = {"Landroidx/compose/material3/SwipeableState;", ExifInterface.GPS_DIRECTION_TRUE, "", "initialValue", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "confirmStateChange", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "newValue", "", "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V", "absoluteOffset", "Landroidx/compose/runtime/MutableState;", "<set-?>", "", "anchors", "getAnchors$material3_release", "()Ljava/util/Map;", "setAnchors$material3_release", "(Ljava/util/Map;)V", "anchors$delegate", "Landroidx/compose/runtime/MutableState;", "getAnimationSpec$material3_release", "()Landroidx/compose/animation/core/AnimationSpec;", "animationTarget", "getConfirmStateChange$material3_release", "()Lkotlin/jvm/functions/Function1;", "currentValue", "getCurrentValue", "()Ljava/lang/Object;", "setCurrentValue", "(Ljava/lang/Object;)V", "currentValue$delegate", "direction", "getDirection$material3_release$annotations", "()V", "getDirection$material3_release", "()F", "draggableState", "Landroidx/compose/foundation/gestures/DraggableState;", "getDraggableState$material3_release", "()Landroidx/compose/foundation/gestures/DraggableState;", "isAnimationRunning", "()Z", "setAnimationRunning", "(Z)V", "isAnimationRunning$delegate", "latestNonEmptyAnchorsFlow", "Lkotlinx/coroutines/flow/Flow;", "maxBound", "getMaxBound$material3_release", "setMaxBound$material3_release", "(F)V", "minBound", "getMinBound$material3_release", "setMinBound$material3_release", "offset", "Landroidx/compose/runtime/State;", "getOffset", "()Landroidx/compose/runtime/State;", "offsetState", "overflow", "getOverflow", "overflowState", NotificationCompat.CATEGORY_PROGRESS, "Landroidx/compose/material3/SwipeProgress;", "getProgress$material3_release$annotations", "getProgress$material3_release", "()Landroidx/compose/material3/SwipeProgress;", "Landroidx/compose/material3/ResistanceConfig;", "resistance", "getResistance$material3_release", "()Landroidx/compose/material3/ResistanceConfig;", "setResistance$material3_release", "(Landroidx/compose/material3/ResistanceConfig;)V", "resistance$delegate", "targetValue", "getTargetValue$material3_release$annotations", "getTargetValue$material3_release", "Lkotlin/Function2;", "thresholds", "getThresholds$material3_release", "()Lkotlin/jvm/functions/Function2;", "setThresholds$material3_release", "(Lkotlin/jvm/functions/Function2;)V", "thresholds$delegate", "velocityThreshold", "getVelocityThreshold$material3_release", "setVelocityThreshold$material3_release", "velocityThreshold$delegate", "animateInternalToOffset", "", "target", "spec", "(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "animateTo", "anim", "animateTo$material3_release", "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ensureInit", "newAnchors", "ensureInit$material3_release", "performDrag", "delta", "performDrag$material3_release", "performFling", "velocity", "performFling$material3_release", "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processNewAnchors", "oldAnchors", "processNewAnchors$material3_release", "(Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "snapInternalToOffset", "snapTo", "snapTo$material3_release", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class SwipeableState<T> {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final MutableState<Float> absoluteOffset;

    /* renamed from: anchors$delegate, reason: from kotlin metadata */
    private final MutableState anchors;
    private final AnimationSpec<Float> animationSpec;
    private final MutableState<Float> animationTarget;
    private final Function1<T, Boolean> confirmStateChange;

    /* renamed from: currentValue$delegate, reason: from kotlin metadata */
    private final MutableState currentValue;
    private final DraggableState draggableState;

    /* renamed from: isAnimationRunning$delegate, reason: from kotlin metadata */
    private final MutableState isAnimationRunning;
    private final Flow<Map<Float, T>> latestNonEmptyAnchorsFlow;
    private float maxBound;
    private float minBound;
    private final MutableState<Float> offsetState;
    private final MutableState<Float> overflowState;

    /* renamed from: resistance$delegate, reason: from kotlin metadata */
    private final MutableState resistance;

    /* renamed from: thresholds$delegate, reason: from kotlin metadata */
    private final MutableState thresholds;

    /* renamed from: velocityThreshold$delegate, reason: from kotlin metadata */
    private final MutableState velocityThreshold;

    public static /* synthetic */ void getDirection$material3_release$annotations() {
    }

    public static /* synthetic */ void getProgress$material3_release$annotations() {
    }

    public static /* synthetic */ void getTargetValue$material3_release$annotations() {
    }

    public final AnimationSpec<Float> getAnimationSpec$material3_release() {
        return this.animationSpec;
    }

    public final Function1<T, Boolean> getConfirmStateChange$material3_release() {
        return this.confirmStateChange;
    }

    /* renamed from: getDraggableState$material3_release, reason: from getter */
    public final DraggableState getDraggableState() {
        return this.draggableState;
    }

    /* renamed from: getMaxBound$material3_release, reason: from getter */
    public final float getMaxBound() {
        return this.maxBound;
    }

    /* renamed from: getMinBound$material3_release, reason: from getter */
    public final float getMinBound() {
        return this.minBound;
    }

    public final void setMaxBound$material3_release(float f) {
        this.maxBound = f;
    }

    public final void setMinBound$material3_release(float f) {
        this.minBound = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SwipeableState(T t, AnimationSpec<Float> animationSpec, Function1<? super T, Boolean> confirmStateChange) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState<Float> mutableStateOf$default3;
        MutableState<Float> mutableStateOf$default4;
        MutableState<Float> mutableStateOf$default5;
        MutableState<Float> mutableStateOf$default6;
        MutableState mutableStateOf$default7;
        MutableState mutableStateOf$default8;
        MutableState mutableStateOf$default9;
        MutableState mutableStateOf$default10;
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
        this.animationSpec = animationSpec;
        this.confirmStateChange = confirmStateChange;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t, null, 2, null);
        this.currentValue = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.isAnimationRunning = mutableStateOf$default2;
        Float valueOf = Float.valueOf(0.0f);
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.offsetState = mutableStateOf$default3;
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.overflowState = mutableStateOf$default4;
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.absoluteOffset = mutableStateOf$default5;
        mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.animationTarget = mutableStateOf$default6;
        mutableStateOf$default7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(MapsKt.emptyMap(), null, 2, null);
        this.anchors = mutableStateOf$default7;
        final Flow snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0<Map<Float, ? extends T>>(this) { // from class: androidx.compose.material3.SwipeableState$latestNonEmptyAnchorsFlow$1
            final /* synthetic */ SwipeableState<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Map<Float, T> invoke() {
                return this.this$0.getAnchors$material3_release();
            }
        });
        this.latestNonEmptyAnchorsFlow = FlowKt.take(new Flow<Map<Float, ? extends T>>() { // from class: androidx.compose.material3.SwipeableState$special$$inlined$filter$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 8, 0}, xi = 48)
            /* renamed from: androidx.compose.material3.SwipeableState$special$$inlined$filter$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.SwipeableState$special$$inlined$filter$1$2", f = "Swipeable.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: androidx.compose.material3.SwipeableState$special$$inlined$filter$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof androidx.compose.material3.SwipeableState$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        androidx.compose.material3.SwipeableState$special$$inlined$filter$1$2$1 r0 = (androidx.compose.material3.SwipeableState$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        androidx.compose.material3.SwipeableState$special$$inlined$filter$1$2$1 r0 = new androidx.compose.material3.SwipeableState$special$$inlined$filter$1$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4d
                    L2a:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        r6 = r0
                        kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                        r6 = r5
                        java.util.Map r6 = (java.util.Map) r6
                        boolean r6 = r6.isEmpty()
                        r6 = r6 ^ r3
                        if (r6 == 0) goto L4d
                        r0.label = r3
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L4d
                        return r1
                    L4d:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SwipeableState$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }
        }, 1);
        this.minBound = Float.NEGATIVE_INFINITY;
        this.maxBound = Float.POSITIVE_INFINITY;
        mutableStateOf$default8 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new Function2<Float, Float, Float>() { // from class: androidx.compose.material3.SwipeableState$thresholds$2
            public final Float invoke(float f, float f2) {
                return Float.valueOf(0.0f);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Float invoke(Float f, Float f2) {
                return invoke(f.floatValue(), f2.floatValue());
            }
        }, null, 2, null);
        this.thresholds = mutableStateOf$default8;
        mutableStateOf$default9 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.velocityThreshold = mutableStateOf$default9;
        mutableStateOf$default10 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.resistance = mutableStateOf$default10;
        this.draggableState = DraggableKt.DraggableState(new Function1<Float, Unit>(this) { // from class: androidx.compose.material3.SwipeableState$draggableState$1
            final /* synthetic */ SwipeableState<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                invoke(f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f) {
                MutableState mutableState;
                MutableState mutableState2;
                MutableState mutableState3;
                MutableState mutableState4;
                mutableState = ((SwipeableState) this.this$0).absoluteOffset;
                float floatValue = ((Number) mutableState.getValue()).floatValue() + f;
                float coerceIn = RangesKt.coerceIn(floatValue, this.this$0.getMinBound(), this.this$0.getMaxBound());
                float f2 = floatValue - coerceIn;
                ResistanceConfig resistance$material3_release = this.this$0.getResistance$material3_release();
                float computeResistance = resistance$material3_release != null ? resistance$material3_release.computeResistance(f2) : 0.0f;
                mutableState2 = ((SwipeableState) this.this$0).offsetState;
                mutableState2.setValue(Float.valueOf(coerceIn + computeResistance));
                mutableState3 = ((SwipeableState) this.this$0).overflowState;
                mutableState3.setValue(Float.valueOf(f2));
                mutableState4 = ((SwipeableState) this.this$0).absoluteOffset;
                mutableState4.setValue(Float.valueOf(floatValue));
            }
        });
    }

    public /* synthetic */ SwipeableState(Object obj, SpringSpec<Float> springSpec, AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? SwipeableDefaults.INSTANCE.getAnimationSpec$material3_release() : springSpec, (i & 4) != 0 ? new Function1<T, Boolean>() { // from class: androidx.compose.material3.SwipeableState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(T t) {
                return true;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj2) {
                return invoke((AnonymousClass1) obj2);
            }
        } : anonymousClass1);
    }

    public final T getCurrentValue() {
        return this.currentValue.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAnimationRunning(boolean z) {
        this.isAnimationRunning.setValue(Boolean.valueOf(z));
    }

    public final boolean isAnimationRunning() {
        return ((Boolean) this.isAnimationRunning.getValue()).booleanValue();
    }

    public final State<Float> getOffset() {
        return this.offsetState;
    }

    public final State<Float> getOverflow() {
        return this.overflowState;
    }

    public final Map<Float, T> getAnchors$material3_release() {
        return (Map) this.anchors.getValue();
    }

    public final void ensureInit$material3_release(Map<Float, ? extends T> newAnchors) {
        Float offset;
        Intrinsics.checkNotNullParameter(newAnchors, "newAnchors");
        if (getAnchors$material3_release().isEmpty()) {
            offset = SwipeableKt.getOffset(newAnchors, getCurrentValue());
            if (offset == null) {
                throw new IllegalArgumentException("The initial value must have an associated anchor.".toString());
            }
            this.offsetState.setValue(offset);
            this.absoluteOffset.setValue(offset);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x021f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.material3.SwipeableState, androidx.compose.material3.SwipeableState<T>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v3, types: [androidx.compose.material3.SwipeableState] */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [androidx.compose.material3.SwipeableState, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v7, types: [androidx.compose.material3.SwipeableState] */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v65, types: [androidx.compose.material3.SwipeableState] */
    /* JADX WARN: Type inference failed for: r11v76 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processNewAnchors$material3_release(java.util.Map<java.lang.Float, ? extends T> r11, java.util.Map<java.lang.Float, ? extends T> r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SwipeableState.processNewAnchors$material3_release(java.util.Map, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Function2<Float, Float, Float> getThresholds$material3_release() {
        return (Function2) this.thresholds.getValue();
    }

    public final float getVelocityThreshold$material3_release() {
        return ((Number) this.velocityThreshold.getValue()).floatValue();
    }

    public final void setVelocityThreshold$material3_release(float f) {
        this.velocityThreshold.setValue(Float.valueOf(f));
    }

    public final ResistanceConfig getResistance$material3_release() {
        return (ResistanceConfig) this.resistance.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object snapInternalToOffset(float f, Continuation<? super Unit> continuation) {
        Object drag$default = DraggableState.drag$default(this.draggableState, null, new SwipeableState$snapInternalToOffset$2(f, this, null), continuation, 1, null);
        return drag$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? drag$default : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateInternalToOffset(float f, AnimationSpec<Float> animationSpec, Continuation<? super Unit> continuation) {
        Object drag$default = DraggableState.drag$default(this.draggableState, null, new SwipeableState$animateInternalToOffset$2(this, f, animationSpec, null), continuation, 1, null);
        return drag$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? drag$default : Unit.INSTANCE;
    }

    public final T getTargetValue$material3_release() {
        Float offset;
        float computeTarget;
        Float value = this.animationTarget.getValue();
        if (value != null) {
            computeTarget = value.floatValue();
        } else {
            float floatValue = getOffset().getValue().floatValue();
            offset = SwipeableKt.getOffset(getAnchors$material3_release(), getCurrentValue());
            computeTarget = SwipeableKt.computeTarget(floatValue, offset != null ? offset.floatValue() : getOffset().getValue().floatValue(), getAnchors$material3_release().keySet(), getThresholds$material3_release(), 0.0f, Float.POSITIVE_INFINITY);
        }
        T t = getAnchors$material3_release().get(Float.valueOf(computeTarget));
        return t == null ? getCurrentValue() : t;
    }

    public final SwipeProgress<T> getProgress$material3_release() {
        List findBounds;
        Object currentValue;
        float f;
        Object obj;
        Pair pair;
        findBounds = SwipeableKt.findBounds(getOffset().getValue().floatValue(), getAnchors$material3_release().keySet());
        int size = findBounds.size();
        if (size == 0) {
            T currentValue2 = getCurrentValue();
            currentValue = getCurrentValue();
            f = 1.0f;
            obj = currentValue2;
        } else if (size == 1) {
            Object value = MapsKt.getValue(getAnchors$material3_release(), findBounds.get(0));
            currentValue = MapsKt.getValue(getAnchors$material3_release(), findBounds.get(0));
            f = 1.0f;
            obj = value;
        } else {
            if (getDirection$material3_release() > 0.0f) {
                pair = TuplesKt.to(findBounds.get(0), findBounds.get(1));
            } else {
                pair = TuplesKt.to(findBounds.get(1), findBounds.get(0));
            }
            float floatValue = ((Number) pair.component1()).floatValue();
            float floatValue2 = ((Number) pair.component2()).floatValue();
            obj = MapsKt.getValue(getAnchors$material3_release(), Float.valueOf(floatValue));
            currentValue = MapsKt.getValue(getAnchors$material3_release(), Float.valueOf(floatValue2));
            f = (getOffset().getValue().floatValue() - floatValue) / (floatValue2 - floatValue);
        }
        return new SwipeProgress<>(obj, currentValue, f);
    }

    public final float getDirection$material3_release() {
        Float offset;
        offset = SwipeableKt.getOffset(getAnchors$material3_release(), getCurrentValue());
        if (offset == null) {
            return 0.0f;
        }
        return Math.signum(getOffset().getValue().floatValue() - offset.floatValue());
    }

    public final Object snapTo$material3_release(T t, Continuation<? super Unit> continuation) {
        Object collect = this.latestNonEmptyAnchorsFlow.collect(new SwipeableState$snapTo$2(t, this), continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateTo$material3_release$default(SwipeableState swipeableState, Object obj, AnimationSpec animationSpec, Continuation continuation, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateTo");
        }
        if ((i & 2) != 0) {
            animationSpec = swipeableState.animationSpec;
        }
        return swipeableState.animateTo$material3_release(obj, animationSpec, continuation);
    }

    public final Object animateTo$material3_release(T t, AnimationSpec<Float> animationSpec, Continuation<? super Unit> continuation) {
        Object collect = this.latestNonEmptyAnchorsFlow.collect(new SwipeableState$animateTo$2(t, this, animationSpec), continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    public final Object performFling$material3_release(final float f, Continuation<? super Unit> continuation) {
        Object collect = this.latestNonEmptyAnchorsFlow.collect(new FlowCollector<Map<Float, ? extends T>>(this) { // from class: androidx.compose.material3.SwipeableState$performFling$2
            final /* synthetic */ SwipeableState<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation2) {
                return emit((Map) obj, (Continuation<? super Unit>) continuation2);
            }

            public final Object emit(Map<Float, ? extends T> map, Continuation<? super Unit> continuation2) {
                Float offset;
                float computeTarget;
                Object animateInternalToOffset;
                offset = SwipeableKt.getOffset(map, this.this$0.getCurrentValue());
                Intrinsics.checkNotNull(offset);
                float floatValue = offset.floatValue();
                computeTarget = SwipeableKt.computeTarget(this.this$0.getOffset().getValue().floatValue(), floatValue, map.keySet(), this.this$0.getThresholds$material3_release(), f, this.this$0.getVelocityThreshold$material3_release());
                T t = map.get(Boxing.boxFloat(computeTarget));
                if (t != null && this.this$0.getConfirmStateChange$material3_release().invoke(t).booleanValue()) {
                    Object animateTo$material3_release$default = SwipeableState.animateTo$material3_release$default(this.this$0, t, null, continuation2, 2, null);
                    return animateTo$material3_release$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateTo$material3_release$default : Unit.INSTANCE;
                }
                SwipeableState<T> swipeableState = this.this$0;
                animateInternalToOffset = swipeableState.animateInternalToOffset(floatValue, swipeableState.getAnimationSpec$material3_release(), continuation2);
                return animateInternalToOffset == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateInternalToOffset : Unit.INSTANCE;
            }
        }, continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    public final float performDrag$material3_release(float delta) {
        float coerceIn = RangesKt.coerceIn(this.absoluteOffset.getValue().floatValue() + delta, this.minBound, this.maxBound) - this.absoluteOffset.getValue().floatValue();
        if (Math.abs(coerceIn) > 0.0f) {
            this.draggableState.dispatchRawDelta(coerceIn);
        }
        return coerceIn;
    }

    /* compiled from: Swipeable.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u0005\u0012\u0004\u0012\u0002H\u00060\u0004\"\b\b\u0001\u0010\u0006*\u00020\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\f0\u000b¨\u0006\r"}, d2 = {"Landroidx/compose/material3/SwipeableState$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/material3/SwipeableState;", ExifInterface.GPS_DIRECTION_TRUE, "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "confirmStateChange", "Lkotlin/Function1;", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T> Saver<SwipeableState<T>, T> Saver(final AnimationSpec<Float> animationSpec, final Function1<? super T, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, SwipeableState<T>, T>() { // from class: androidx.compose.material3.SwipeableState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                public final T invoke(SaverScope Saver, SwipeableState<T> it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<T, SwipeableState<T>>() { // from class: androidx.compose.material3.SwipeableState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke((SwipeableState$Companion$Saver$2<T>) obj);
                }

                @Override // kotlin.jvm.functions.Function1
                public final SwipeableState<T> invoke(T it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SwipeableState<>(it, animationSpec, confirmStateChange);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCurrentValue(T t) {
        this.currentValue.setValue(t);
    }

    public final void setAnchors$material3_release(Map<Float, ? extends T> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.anchors.setValue(map);
    }

    public final void setThresholds$material3_release(Function2<? super Float, ? super Float, Float> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.thresholds.setValue(function2);
    }

    public final void setResistance$material3_release(ResistanceConfig resistanceConfig) {
        this.resistance.setValue(resistanceConfig);
    }
}
