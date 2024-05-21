package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import io.sentry.protocol.TransactionInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: AndroidOverscroll.kt */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010-\u001a\u00020!H\u0002JE\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u0002002\"\u00101\u001a\u001e\b\u0001\u0012\u0004\u0012\u000200\u0012\n\u0012\b\u0012\u0004\u0012\u00020003\u0012\u0006\u0012\u0004\u0018\u00010402H\u0096@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\b5\u00106J9\u00107\u001a\u00020%2\u0006\u00108\u001a\u00020%2\u0006\u00109\u001a\u00020:2\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0\u001fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b<\u0010=J\b\u0010>\u001a\u00020!H\u0002J%\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020%2\u0006\u0010B\u001a\u00020%H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bC\u0010DJ%\u0010E\u001a\u00020@2\u0006\u0010A\u001a\u00020%2\u0006\u0010B\u001a\u00020%H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bF\u0010DJ%\u0010G\u001a\u00020@2\u0006\u0010A\u001a\u00020%2\u0006\u0010B\u001a\u00020%H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bH\u0010DJ%\u0010I\u001a\u00020@2\u0006\u0010A\u001a\u00020%2\u0006\u0010B\u001a\u00020%H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bJ\u0010DJ\u001d\u0010K\u001a\u00020\u00142\u0006\u00108\u001a\u00020%H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bL\u0010MJ\b\u0010N\u001a\u00020\u0014H\u0002J \u0010O\u001a\u00020\u0014*\u00020P2\u0006\u0010Q\u001a\u00020\t2\n\u0010R\u001a\u00060Sj\u0002`TH\u0002J \u0010U\u001a\u00020\u0014*\u00020P2\u0006\u0010V\u001a\u00020\t2\n\u0010R\u001a\u00060Sj\u0002`TH\u0002J\n\u0010W\u001a\u00020!*\u00020PJ \u0010X\u001a\u00020\u0014*\u00020P2\u0006\u0010Y\u001a\u00020\t2\n\u0010R\u001a\u00060Sj\u0002`TH\u0002J \u0010Z\u001a\u00020\u0014*\u00020P2\u0006\u0010[\u001a\u00020\t2\n\u0010R\u001a\u00060Sj\u0002`TH\u0002R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\f\u001a\u00020\rX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\u00148\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0018R\u000e\u0010\u001c\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001fX\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000R\u0019\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020!0'X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\\"}, d2 = {"Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "Landroidx/compose/foundation/OverscrollEffect;", "context", "Landroid/content/Context;", "overscrollConfig", "Landroidx/compose/foundation/OverscrollConfiguration;", "(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V", "allEffects", "", "Landroid/widget/EdgeEffect;", "bottomEffect", "bottomEffectNegation", "containerSize", "Landroidx/compose/ui/geometry/Size;", "J", "effectModifier", "Landroidx/compose/ui/Modifier;", "getEffectModifier", "()Landroidx/compose/ui/Modifier;", "invalidationEnabled", "", "getInvalidationEnabled$foundation_release$annotations", "()V", "getInvalidationEnabled$foundation_release", "()Z", "setInvalidationEnabled$foundation_release", "(Z)V", "isInProgress", "leftEffect", "leftEffectNegation", "onNewSize", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/IntSize;", "", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerPosition", "Landroidx/compose/ui/geometry/Offset;", "redrawSignal", "Landroidx/compose/runtime/MutableState;", "rightEffect", "rightEffectNegation", "scrollCycleInProgress", "topEffect", "topEffectNegation", "animateToRelease", "applyToFling", "velocity", "Landroidx/compose/ui/unit/Velocity;", "performFling", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "applyToFling-BMRW4eQ", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyToScroll", "delta", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "performScroll", "applyToScroll-Rhakbz0", "(JILkotlin/jvm/functions/Function1;)J", "invalidateOverscroll", "pullBottom", "", "scroll", "displacement", "pullBottom-0a9Yr6o", "(JJ)F", "pullLeft", "pullLeft-0a9Yr6o", "pullRight", "pullRight-0a9Yr6o", "pullTop", "pullTop-0a9Yr6o", "releaseOppositeOverscroll", "releaseOppositeOverscroll-k-4lQ0M", "(J)Z", "stopOverscrollAnimation", "drawBottom", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "bottom", "canvas", "Landroid/graphics/Canvas;", "Landroidx/compose/ui/graphics/NativeCanvas;", "drawLeft", "left", "drawOverscroll", "drawRight", "right", "drawTop", "top", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {
    private final List<EdgeEffect> allEffects;
    private final EdgeEffect bottomEffect;
    private final EdgeEffect bottomEffectNegation;
    private long containerSize;
    private final Modifier effectModifier;
    private boolean invalidationEnabled;
    private final EdgeEffect leftEffect;
    private final EdgeEffect leftEffectNegation;
    private final Function1<IntSize, Unit> onNewSize;
    private final OverscrollConfiguration overscrollConfig;
    private PointerId pointerId;
    private Offset pointerPosition;
    private final MutableState<Unit> redrawSignal;
    private final EdgeEffect rightEffect;
    private final EdgeEffect rightEffectNegation;
    private boolean scrollCycleInProgress;
    private final EdgeEffect topEffect;
    private final EdgeEffect topEffectNegation;

    public static /* synthetic */ void getInvalidationEnabled$foundation_release$annotations() {
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public Modifier getEffectModifier() {
        return this.effectModifier;
    }

    /* renamed from: getInvalidationEnabled$foundation_release, reason: from getter */
    public final boolean getInvalidationEnabled() {
        return this.invalidationEnabled;
    }

    public final void setInvalidationEnabled$foundation_release(boolean z) {
        this.invalidationEnabled = z;
    }

    public AndroidEdgeEffectOverscrollEffect(Context context, OverscrollConfiguration overscrollConfig) {
        Modifier modifier;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(overscrollConfig, "overscrollConfig");
        this.overscrollConfig = overscrollConfig;
        EdgeEffect create = EdgeEffectCompat.INSTANCE.create(context, null);
        this.topEffect = create;
        EdgeEffect create2 = EdgeEffectCompat.INSTANCE.create(context, null);
        this.bottomEffect = create2;
        EdgeEffect create3 = EdgeEffectCompat.INSTANCE.create(context, null);
        this.leftEffect = create3;
        EdgeEffect create4 = EdgeEffectCompat.INSTANCE.create(context, null);
        this.rightEffect = create4;
        List<EdgeEffect> listOf = CollectionsKt.listOf((Object[]) new EdgeEffect[]{create3, create, create4, create2});
        this.allEffects = listOf;
        this.topEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        this.bottomEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        this.leftEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        this.rightEffectNegation = EdgeEffectCompat.INSTANCE.create(context, null);
        int size = listOf.size();
        for (int i = 0; i < size; i++) {
            listOf.get(i).setColor(ColorKt.m2693toArgb8_81llA(this.overscrollConfig.getGlowColor()));
        }
        this.redrawSignal = SnapshotStateKt.mutableStateOf(Unit.INSTANCE, SnapshotStateKt.neverEqualPolicy());
        this.invalidationEnabled = true;
        this.containerSize = Size.INSTANCE.m2478getZeroNHjbRc();
        Function1<IntSize, Unit> function1 = new Function1<IntSize, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$onNewSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                m165invokeozmzZPI(intSize.getPackedValue());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-ozmzZPI, reason: not valid java name */
            public final void m165invokeozmzZPI(long j) {
                long j2;
                EdgeEffect edgeEffect;
                EdgeEffect edgeEffect2;
                EdgeEffect edgeEffect3;
                EdgeEffect edgeEffect4;
                EdgeEffect edgeEffect5;
                EdgeEffect edgeEffect6;
                EdgeEffect edgeEffect7;
                EdgeEffect edgeEffect8;
                long m5053toSizeozmzZPI = IntSizeKt.m5053toSizeozmzZPI(j);
                j2 = AndroidEdgeEffectOverscrollEffect.this.containerSize;
                boolean z = !Size.m2465equalsimpl0(m5053toSizeozmzZPI, j2);
                AndroidEdgeEffectOverscrollEffect.this.containerSize = IntSizeKt.m5053toSizeozmzZPI(j);
                if (z) {
                    edgeEffect = AndroidEdgeEffectOverscrollEffect.this.topEffect;
                    edgeEffect.setSize(IntSize.m5043getWidthimpl(j), IntSize.m5042getHeightimpl(j));
                    edgeEffect2 = AndroidEdgeEffectOverscrollEffect.this.bottomEffect;
                    edgeEffect2.setSize(IntSize.m5043getWidthimpl(j), IntSize.m5042getHeightimpl(j));
                    edgeEffect3 = AndroidEdgeEffectOverscrollEffect.this.leftEffect;
                    edgeEffect3.setSize(IntSize.m5042getHeightimpl(j), IntSize.m5043getWidthimpl(j));
                    edgeEffect4 = AndroidEdgeEffectOverscrollEffect.this.rightEffect;
                    edgeEffect4.setSize(IntSize.m5042getHeightimpl(j), IntSize.m5043getWidthimpl(j));
                    edgeEffect5 = AndroidEdgeEffectOverscrollEffect.this.topEffectNegation;
                    edgeEffect5.setSize(IntSize.m5043getWidthimpl(j), IntSize.m5042getHeightimpl(j));
                    edgeEffect6 = AndroidEdgeEffectOverscrollEffect.this.bottomEffectNegation;
                    edgeEffect6.setSize(IntSize.m5043getWidthimpl(j), IntSize.m5042getHeightimpl(j));
                    edgeEffect7 = AndroidEdgeEffectOverscrollEffect.this.leftEffectNegation;
                    edgeEffect7.setSize(IntSize.m5042getHeightimpl(j), IntSize.m5043getWidthimpl(j));
                    edgeEffect8 = AndroidEdgeEffectOverscrollEffect.this.rightEffectNegation;
                    edgeEffect8.setSize(IntSize.m5042getHeightimpl(j), IntSize.m5043getWidthimpl(j));
                }
                if (z) {
                    AndroidEdgeEffectOverscrollEffect.this.invalidateOverscroll();
                    AndroidEdgeEffectOverscrollEffect.this.animateToRelease();
                }
            }
        };
        this.onNewSize = function1;
        Modifier.Companion companion = Modifier.INSTANCE;
        modifier = AndroidOverscrollKt.StretchOverscrollNonClippingLayer;
        this.effectModifier = OnRemeasuredModifierKt.onSizeChanged(SuspendingPointerInputFilterKt.pointerInput(companion.then(modifier), Unit.INSTANCE, new AndroidEdgeEffectOverscrollEffect$effectModifier$1(this, null)), function1).then(new DrawOverscrollModifier(this, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("overscroll");
                inspectorInfo.setValue(AndroidEdgeEffectOverscrollEffect.this);
            }
        } : InspectableValueKt.getNoInspectorInfo()));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013b  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: applyToScroll-Rhakbz0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo164applyToScrollRhakbz0(long r18, int r20, kotlin.jvm.functions.Function1<? super androidx.compose.ui.geometry.Offset, androidx.compose.ui.geometry.Offset> r21) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo164applyToScrollRhakbz0(long, int, kotlin.jvm.functions.Function1):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: applyToFling-BMRW4eQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo163applyToFlingBMRW4eQ(long r14, kotlin.jvm.functions.Function2<? super androidx.compose.ui.unit.Velocity, ? super kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity>, ? extends java.lang.Object> r16, kotlin.coroutines.Continuation<? super kotlin.Unit> r17) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo163applyToFlingBMRW4eQ(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean stopOverscrollAnimation() {
        boolean z;
        long m2479getCenteruvyYCjk = SizeKt.m2479getCenteruvyYCjk(this.containerSize);
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect) == 0.0f) {
            z = false;
        } else {
            m159pullLeft0a9Yr6o(Offset.INSTANCE.m2416getZeroF1C5BW0(), m2479getCenteruvyYCjk);
            z = true;
        }
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect) != 0.0f) {
            m160pullRight0a9Yr6o(Offset.INSTANCE.m2416getZeroF1C5BW0(), m2479getCenteruvyYCjk);
            z = true;
        }
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect) != 0.0f) {
            m161pullTop0a9Yr6o(Offset.INSTANCE.m2416getZeroF1C5BW0(), m2479getCenteruvyYCjk);
            z = true;
        }
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect) == 0.0f) {
            return z;
        }
        m158pullBottom0a9Yr6o(Offset.INSTANCE.m2416getZeroF1C5BW0(), m2479getCenteruvyYCjk);
        return true;
    }

    public final void drawOverscroll(DrawScope drawScope) {
        boolean z;
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        if (Size.m2471isEmptyimpl(this.containerSize)) {
            return;
        }
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        this.redrawSignal.getValue();
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffectNegation) != 0.0f) {
            drawRight(drawScope, this.leftEffectNegation, nativeCanvas);
            this.leftEffectNegation.finish();
        }
        if (this.leftEffect.isFinished()) {
            z = false;
        } else {
            z = drawLeft(drawScope, this.leftEffect, nativeCanvas);
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.leftEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect), 0.0f);
        }
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffectNegation) != 0.0f) {
            drawBottom(drawScope, this.topEffectNegation, nativeCanvas);
            this.topEffectNegation.finish();
        }
        if (!this.topEffect.isFinished()) {
            z = drawTop(drawScope, this.topEffect, nativeCanvas) || z;
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.topEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect), 0.0f);
        }
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffectNegation) != 0.0f) {
            drawLeft(drawScope, this.rightEffectNegation, nativeCanvas);
            this.rightEffectNegation.finish();
        }
        if (!this.rightEffect.isFinished()) {
            z = drawRight(drawScope, this.rightEffect, nativeCanvas) || z;
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.rightEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect), 0.0f);
        }
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffectNegation) != 0.0f) {
            drawTop(drawScope, this.bottomEffectNegation, nativeCanvas);
            this.bottomEffectNegation.finish();
        }
        if (!this.bottomEffect.isFinished()) {
            boolean z2 = drawBottom(drawScope, this.bottomEffect, nativeCanvas) || z;
            EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.bottomEffectNegation, EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect), 0.0f);
            z = z2;
        }
        if (z) {
            invalidateOverscroll();
        }
    }

    private final boolean drawLeft(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(270.0f);
        canvas.translate(-Size.m2466getHeightimpl(this.containerSize), drawScope.mo335toPx0680j_4(this.overscrollConfig.getDrawPadding().mo441calculateLeftPaddingu2uoSUM(drawScope.getLayoutDirection())));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    private final boolean drawTop(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int save = canvas.save();
        canvas.translate(0.0f, drawScope.mo335toPx0680j_4(this.overscrollConfig.getDrawPadding().getTop()));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    private final boolean drawRight(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int save = canvas.save();
        int roundToInt = MathKt.roundToInt(Size.m2469getWidthimpl(this.containerSize));
        float mo442calculateRightPaddingu2uoSUM = this.overscrollConfig.getDrawPadding().mo442calculateRightPaddingu2uoSUM(drawScope.getLayoutDirection());
        canvas.rotate(90.0f);
        canvas.translate(0.0f, (-roundToInt) + drawScope.mo335toPx0680j_4(mo442calculateRightPaddingu2uoSUM));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    private final boolean drawBottom(DrawScope drawScope, EdgeEffect edgeEffect, android.graphics.Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(180.0f);
        canvas.translate(-Size.m2469getWidthimpl(this.containerSize), (-Size.m2466getHeightimpl(this.containerSize)) + drawScope.mo335toPx0680j_4(this.overscrollConfig.getDrawPadding().getBottom()));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateOverscroll() {
        if (this.invalidationEnabled) {
            this.redrawSignal.setValue(Unit.INSTANCE);
        }
    }

    /* renamed from: releaseOppositeOverscroll-k-4lQ0M, reason: not valid java name */
    private final boolean m162releaseOppositeOverscrollk4lQ0M(long delta) {
        boolean z;
        if (this.leftEffect.isFinished() || Offset.m2400getXimpl(delta) >= 0.0f) {
            z = false;
        } else {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.leftEffect, Offset.m2400getXimpl(delta));
            z = this.leftEffect.isFinished();
        }
        if (!this.rightEffect.isFinished() && Offset.m2400getXimpl(delta) > 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.rightEffect, Offset.m2400getXimpl(delta));
            z = z || this.rightEffect.isFinished();
        }
        if (!this.topEffect.isFinished() && Offset.m2401getYimpl(delta) < 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.topEffect, Offset.m2401getYimpl(delta));
            z = z || this.topEffect.isFinished();
        }
        if (this.bottomEffect.isFinished() || Offset.m2401getYimpl(delta) <= 0.0f) {
            return z;
        }
        EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.bottomEffect, Offset.m2401getYimpl(delta));
        return z || this.bottomEffect.isFinished();
    }

    /* renamed from: pullTop-0a9Yr6o, reason: not valid java name */
    private final float m161pullTop0a9Yr6o(long scroll, long displacement) {
        return EdgeEffectCompat.INSTANCE.getDistanceCompat(this.topEffect) == 0.0f ? EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.topEffect, Offset.m2401getYimpl(scroll) / Size.m2466getHeightimpl(this.containerSize), Offset.m2400getXimpl(displacement) / Size.m2469getWidthimpl(this.containerSize)) * Size.m2466getHeightimpl(this.containerSize) : Offset.m2401getYimpl(scroll);
    }

    /* renamed from: pullBottom-0a9Yr6o, reason: not valid java name */
    private final float m158pullBottom0a9Yr6o(long scroll, long displacement) {
        return EdgeEffectCompat.INSTANCE.getDistanceCompat(this.bottomEffect) == 0.0f ? (-EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.bottomEffect, -(Offset.m2401getYimpl(scroll) / Size.m2466getHeightimpl(this.containerSize)), 1 - (Offset.m2400getXimpl(displacement) / Size.m2469getWidthimpl(this.containerSize)))) * Size.m2466getHeightimpl(this.containerSize) : Offset.m2401getYimpl(scroll);
    }

    /* renamed from: pullLeft-0a9Yr6o, reason: not valid java name */
    private final float m159pullLeft0a9Yr6o(long scroll, long displacement) {
        return EdgeEffectCompat.INSTANCE.getDistanceCompat(this.leftEffect) == 0.0f ? EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.leftEffect, Offset.m2400getXimpl(scroll) / Size.m2469getWidthimpl(this.containerSize), 1 - (Offset.m2401getYimpl(displacement) / Size.m2466getHeightimpl(this.containerSize))) * Size.m2469getWidthimpl(this.containerSize) : Offset.m2400getXimpl(scroll);
    }

    /* renamed from: pullRight-0a9Yr6o, reason: not valid java name */
    private final float m160pullRight0a9Yr6o(long scroll, long displacement) {
        return EdgeEffectCompat.INSTANCE.getDistanceCompat(this.rightEffect) == 0.0f ? (-EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.rightEffect, -(Offset.m2400getXimpl(scroll) / Size.m2469getWidthimpl(this.containerSize)), Offset.m2401getYimpl(displacement) / Size.m2466getHeightimpl(this.containerSize))) * Size.m2469getWidthimpl(this.containerSize) : Offset.m2400getXimpl(scroll);
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(list.get(i)) == 0.0f)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void animateToRelease() {
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            EdgeEffect edgeEffect = list.get(i);
            edgeEffect.onRelease();
            z = edgeEffect.isFinished() || z;
        }
        if (z) {
            invalidateOverscroll();
        }
    }
}
