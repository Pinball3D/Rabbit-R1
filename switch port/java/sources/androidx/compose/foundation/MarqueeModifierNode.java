package androidx.compose.foundation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* compiled from: BasicMarquee.kt */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B8\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000eø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\b\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020<H\u0016J\b\u0010=\u001a\u000209H\u0002J\u0011\u0010>\u001a\u000209H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010?JC\u0010@\u001a\u0002092\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bA\u0010BJ\f\u0010C\u001a\u000209*\u00020DH\u0016J\u001c\u0010E\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u0006H\u0016J\u001c\u0010J\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010K\u001a\u00020\u0006H\u0016J)\u0010L\u001a\u00020M*\u00020N2\u0006\u0010G\u001a\u00020O2\u0006\u0010P\u001a\u00020QH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bR\u0010SJ\u001c\u0010T\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u0006H\u0016J\u001c\u0010U\u001a\u00020\u0006*\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010K\u001a\u00020\u0006H\u0016R4\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b8F@FX\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R+\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0012\"\u0004\b\u0019\u0010\u0014R+\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u001f\u0010\u001b\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u0014R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R+\u0010%\u001a\u00020$2\u0006\u0010\u0010\u001a\u00020$8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b*\u0010\u0016\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010+\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020-0,X\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\f8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b2\u0010\u0016\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001b\u00103\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b4\u0010\u0012R\u0019\u0010\r\u001a\u00020\u000eX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u00107\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006V"}, d2 = {"Landroidx/compose/foundation/MarqueeModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "iterations", "", "animationMode", "Landroidx/compose/foundation/MarqueeAnimationMode;", "delayMillis", "initialDelayMillis", "spacing", "Landroidx/compose/foundation/MarqueeSpacing;", "velocity", "Landroidx/compose/ui/unit/Dp;", "(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "<set-?>", "getAnimationMode-ZbEOnfQ", "()I", "setAnimationMode-97h66l8", "(I)V", "animationMode$delegate", "Landroidx/compose/runtime/MutableState;", "containerWidth", "getContainerWidth", "setContainerWidth", "containerWidth$delegate", "Landroidx/compose/runtime/MutableIntState;", "contentWidth", "getContentWidth", "setContentWidth", "contentWidth$delegate", "direction", "", "getDirection", "()F", "", "hasFocus", "getHasFocus", "()Z", "setHasFocus", "(Z)V", "hasFocus$delegate", "offset", "Landroidx/compose/animation/core/Animatable;", "Landroidx/compose/animation/core/AnimationVector1D;", "getSpacing", "()Landroidx/compose/foundation/MarqueeSpacing;", "setSpacing", "(Landroidx/compose/foundation/MarqueeSpacing;)V", "spacing$delegate", "spacingPx", "getSpacingPx", "spacingPx$delegate", "Landroidx/compose/runtime/State;", "F", "onAttach", "", "onFocusEvent", "focusState", "Landroidx/compose/ui/focus/FocusState;", "restartAnimation", "runAnimation", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "update", "update-lWfNwf4", "(IIIILandroidx/compose/foundation/MarqueeSpacing;F)V", "draw", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "maxIntrinsicHeight", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class MarqueeModifierNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, FocusEventModifierNode {

    /* renamed from: animationMode$delegate, reason: from kotlin metadata */
    private final MutableState animationMode;

    /* renamed from: containerWidth$delegate, reason: from kotlin metadata */
    private final MutableIntState containerWidth;

    /* renamed from: contentWidth$delegate, reason: from kotlin metadata */
    private final MutableIntState contentWidth;
    private int delayMillis;

    /* renamed from: hasFocus$delegate, reason: from kotlin metadata */
    private final MutableState hasFocus;
    private int initialDelayMillis;
    private int iterations;
    private final Animatable<Float, AnimationVector1D> offset;

    /* renamed from: spacing$delegate, reason: from kotlin metadata */
    private final MutableState spacing;

    /* renamed from: spacingPx$delegate, reason: from kotlin metadata */
    private final State spacingPx;
    private float velocity;

    /* compiled from: BasicMarquee.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ MarqueeModifierNode(int i, int i2, int i3, int i4, MarqueeSpacing marqueeSpacing, float f, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, i4, marqueeSpacing, f);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return 0;
    }

    private MarqueeModifierNode(int i, int i2, int i3, int i4, final MarqueeSpacing spacing, float f) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        this.iterations = i;
        this.delayMillis = i3;
        this.initialDelayMillis = i4;
        this.velocity = f;
        this.contentWidth = SnapshotIntStateKt.mutableIntStateOf(0);
        this.containerWidth = SnapshotIntStateKt.mutableIntStateOf(0);
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.hasFocus = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(spacing, null, 2, null);
        this.spacing = mutableStateOf$default2;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(MarqueeAnimationMode.m231boximpl(i2), null, 2, null);
        this.animationMode = mutableStateOf$default3;
        this.offset = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        this.spacingPx = SnapshotStateKt.derivedStateOf(new Function0<Integer>() { // from class: androidx.compose.foundation.MarqueeModifierNode$spacingPx$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                int contentWidth;
                int containerWidth;
                MarqueeSpacing marqueeSpacing = MarqueeSpacing.this;
                MarqueeModifierNode marqueeModifierNode = this;
                Density requireDensity = DelegatableNodeKt.requireDensity(marqueeModifierNode);
                contentWidth = marqueeModifierNode.getContentWidth();
                containerWidth = marqueeModifierNode.getContainerWidth();
                return Integer.valueOf(marqueeSpacing.calculateSpacing(requireDensity, contentWidth, containerWidth));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getContentWidth() {
        return this.contentWidth.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getContainerWidth() {
        return this.containerWidth.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getHasFocus() {
        return ((Boolean) this.hasFocus.getValue()).booleanValue();
    }

    private final void setHasFocus(boolean z) {
        this.hasFocus.setValue(Boolean.valueOf(z));
    }

    public final MarqueeSpacing getSpacing() {
        return (MarqueeSpacing) this.spacing.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getAnimationMode-ZbEOnfQ, reason: not valid java name */
    public final int m246getAnimationModeZbEOnfQ() {
        return ((MarqueeAnimationMode) this.animationMode.getValue()).getValue();
    }

    /* renamed from: setAnimationMode-97h66l8, reason: not valid java name */
    public final void m248setAnimationMode97h66l8(int i) {
        this.animationMode.setValue(MarqueeAnimationMode.m231boximpl(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getDirection() {
        float signum = Math.signum(this.velocity);
        int i = WhenMappings.$EnumSwitchMapping$0[DelegatableNodeKt.requireLayoutDirection(this).ordinal()];
        int i2 = 1;
        if (i != 1) {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            i2 = -1;
        }
        return signum * i2;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        restartAnimation();
    }

    /* renamed from: update-lWfNwf4, reason: not valid java name */
    public final void m249updatelWfNwf4(int iterations, int animationMode, int delayMillis, int initialDelayMillis, MarqueeSpacing spacing, float velocity) {
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        setSpacing(spacing);
        m248setAnimationMode97h66l8(animationMode);
        if (this.iterations == iterations && this.delayMillis == delayMillis && this.initialDelayMillis == initialDelayMillis && Dp.m4888equalsimpl0(this.velocity, velocity)) {
            return;
        }
        this.iterations = iterations;
        this.delayMillis = delayMillis;
        this.initialDelayMillis = initialDelayMillis;
        this.velocity = velocity;
        restartAnimation();
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        Intrinsics.checkNotNullParameter(focusState, "focusState");
        setHasFocus(focusState.getHasFocus());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s, reason: not valid java name */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j, 0, Integer.MAX_VALUE, 0, 0, 13, null));
        setContainerWidth(ConstraintsKt.m4853constrainWidthK40F9xA(j, mo3876measureBRTryo0.getWidth()));
        setContentWidth(mo3876measureBRTryo0.getWidth());
        return MeasureScope.layout$default(measure, getContainerWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.MarqueeModifierNode$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope layout) {
                Animatable animatable;
                float direction;
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable placeable = Placeable.this;
                animatable = this.offset;
                float f = -((Number) animatable.getValue()).floatValue();
                direction = this.getDirection();
                Placeable.PlacementScope.placeWithLayer$default(layout, placeable, MathKt.roundToInt(f * direction), 0, 0.0f, null, 12, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.minIntrinsicHeight(Integer.MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.maxIntrinsicHeight(Integer.MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        int spacingPx;
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        float floatValue = this.offset.getValue().floatValue() * getDirection();
        boolean z = getDirection() != 1.0f ? this.offset.getValue().floatValue() < ((float) getContainerWidth()) : this.offset.getValue().floatValue() < ((float) getContentWidth());
        boolean z2 = getDirection() != 1.0f ? this.offset.getValue().floatValue() > ((float) getSpacingPx()) : this.offset.getValue().floatValue() > ((float) ((getContentWidth() + getSpacingPx()) - getContainerWidth()));
        if (getDirection() == 1.0f) {
            spacingPx = getContentWidth() + getSpacingPx();
        } else {
            spacingPx = (-getContentWidth()) - getSpacingPx();
        }
        float f = spacingPx;
        ContentDrawScope contentDrawScope2 = contentDrawScope;
        float containerWidth = floatValue + getContainerWidth();
        float m2466getHeightimpl = Size.m2466getHeightimpl(contentDrawScope2.mo3182getSizeNHjbRc());
        int m2628getIntersectrtfAjoo = ClipOp.INSTANCE.m2628getIntersectrtfAjoo();
        DrawContext drawContext = contentDrawScope2.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3110clipRectN_I0leg(floatValue, 0.0f, containerWidth, m2466getHeightimpl, m2628getIntersectrtfAjoo);
        if (z) {
            contentDrawScope.drawContent();
        }
        if (z2) {
            contentDrawScope2.getDrawContext().getTransform().translate(f, 0.0f);
            contentDrawScope.drawContent();
            contentDrawScope2.getDrawContext().getTransform().translate(-f, -0.0f);
        }
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }

    private final void restartAnimation() {
        if (getIsAttached()) {
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new MarqueeModifierNode$restartAnimation$1(this, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runAnimation(Continuation<? super Unit> continuation) {
        if (this.iterations <= 0) {
            return Unit.INSTANCE;
        }
        Object withContext = BuildersKt.withContext(FixedMotionDurationScale.INSTANCE, new MarqueeModifierNode$runAnimation$2(this, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    private final void setContentWidth(int i) {
        this.contentWidth.setIntValue(i);
    }

    private final void setContainerWidth(int i) {
        this.containerWidth.setIntValue(i);
    }

    public final void setSpacing(MarqueeSpacing marqueeSpacing) {
        Intrinsics.checkNotNullParameter(marqueeSpacing, "<set-?>");
        this.spacing.setValue(marqueeSpacing);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSpacingPx() {
        return ((Number) this.spacingPx.getValue()).intValue();
    }
}
