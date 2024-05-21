package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnterExitTransition.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001Bt\u0012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003R\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u001c\u0010\b\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003R\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000bø\u0001\u0000¢\u0006\u0002\u0010\u0010J#\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0004ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b'\u0010(J#\u0010)\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0004ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b*\u0010(J)\u0010+\u001a\u00020,*\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u00103R\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0019\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R*\u0010\b\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003R\b\u0012\u0004\u0012\u00020\u00070\u0006ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R*\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003R\b\u0012\u0004\u0012\u00020\u00070\u0006ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR1\u0010\u001d\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040 0\u001e¢\u0006\u0002\b!ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u00064"}, d2 = {"Landroidx/compose/animation/ExpandShrinkModifier;", "Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;", "sizeAnimation", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/animation/core/AnimationVector2D;", "Landroidx/compose/animation/core/Transition;", "Landroidx/compose/animation/EnterExitState;", "offsetAnimation", "Landroidx/compose/ui/unit/IntOffset;", "expand", "Landroidx/compose/runtime/State;", "Landroidx/compose/animation/ChangeSize;", "shrink", "alignment", "Landroidx/compose/ui/Alignment;", "(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V", "getAlignment", "()Landroidx/compose/runtime/State;", "currentAlignment", "getCurrentAlignment", "()Landroidx/compose/ui/Alignment;", "setCurrentAlignment", "(Landroidx/compose/ui/Alignment;)V", "getExpand", "getOffsetAnimation", "()Landroidx/compose/animation/core/Transition$DeferredAnimation;", "getShrink", "getSizeAnimation", "sizeTransitionSpec", "Lkotlin/Function1;", "Landroidx/compose/animation/core/Transition$Segment;", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Lkotlin/ExtensionFunctionType;", "getSizeTransitionSpec", "()Lkotlin/jvm/functions/Function1;", "sizeByState", "targetState", "fullSize", "sizeByState-Uzc_VyU", "(Landroidx/compose/animation/EnterExitState;J)J", "targetOffsetByState", "targetOffsetByState-oFUgxo0", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "animation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ExpandShrinkModifier extends LayoutModifierWithPassThroughIntrinsics {
    private final State<Alignment> alignment;
    private Alignment currentAlignment;
    private final State<ChangeSize> expand;
    private final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> offsetAnimation;
    private final State<ChangeSize> shrink;
    private final Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation;
    private final Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> sizeTransitionSpec;

    /* compiled from: EnterExitTransition.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            try {
                iArr[EnterExitState.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnterExitState.PreEnter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnterExitState.PostExit.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final State<Alignment> getAlignment() {
        return this.alignment;
    }

    public final Alignment getCurrentAlignment() {
        return this.currentAlignment;
    }

    public final State<ChangeSize> getExpand() {
        return this.expand;
    }

    public final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> getOffsetAnimation() {
        return this.offsetAnimation;
    }

    public final State<ChangeSize> getShrink() {
        return this.shrink;
    }

    public final Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> getSizeAnimation() {
        return this.sizeAnimation;
    }

    public final Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> getSizeTransitionSpec() {
        return this.sizeTransitionSpec;
    }

    public final void setCurrentAlignment(Alignment alignment) {
        this.currentAlignment = alignment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ExpandShrinkModifier(Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation, Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> offsetAnimation, State<ChangeSize> expand, State<ChangeSize> shrink, State<? extends Alignment> alignment) {
        Intrinsics.checkNotNullParameter(sizeAnimation, "sizeAnimation");
        Intrinsics.checkNotNullParameter(offsetAnimation, "offsetAnimation");
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(shrink, "shrink");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.sizeAnimation = sizeAnimation;
        this.offsetAnimation = offsetAnimation;
        this.expand = expand;
        this.shrink = shrink;
        this.alignment = alignment;
        this.sizeTransitionSpec = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.animation.ExpandShrinkModifier$sizeTransitionSpec$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final FiniteAnimationSpec<IntSize> invoke(Transition.Segment<EnterExitState> segment) {
                SpringSpec springSpec;
                SpringSpec springSpec2;
                Intrinsics.checkNotNullParameter(segment, "$this$null");
                SpringSpec springSpec3 = null;
                if (segment.isTransitioningTo(EnterExitState.PreEnter, EnterExitState.Visible)) {
                    ChangeSize value = ExpandShrinkModifier.this.getExpand().getValue();
                    if (value != null) {
                        springSpec3 = value.getAnimationSpec();
                    }
                } else if (segment.isTransitioningTo(EnterExitState.Visible, EnterExitState.PostExit)) {
                    ChangeSize value2 = ExpandShrinkModifier.this.getShrink().getValue();
                    if (value2 != null) {
                        springSpec3 = value2.getAnimationSpec();
                    }
                } else {
                    springSpec = EnterExitTransitionKt.DefaultSizeAnimationSpec;
                    springSpec3 = springSpec;
                }
                if (springSpec3 != null) {
                    return springSpec3;
                }
                springSpec2 = EnterExitTransitionKt.DefaultSizeAnimationSpec;
                return springSpec2;
            }
        };
    }

    /* renamed from: sizeByState-Uzc_VyU, reason: not valid java name */
    public final long m68sizeByStateUzc_VyU(EnterExitState targetState, long fullSize) {
        Intrinsics.checkNotNullParameter(targetState, "targetState");
        ChangeSize value = this.expand.getValue();
        long packedValue = value != null ? value.getSize().invoke(IntSize.m5035boximpl(fullSize)).getPackedValue() : fullSize;
        ChangeSize value2 = this.shrink.getValue();
        long packedValue2 = value2 != null ? value2.getSize().invoke(IntSize.m5035boximpl(fullSize)).getPackedValue() : fullSize;
        int i = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
        if (i == 1) {
            return fullSize;
        }
        if (i == 2) {
            return packedValue;
        }
        if (i == 3) {
            return packedValue2;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: targetOffsetByState-oFUgxo0, reason: not valid java name */
    public final long m69targetOffsetByStateoFUgxo0(EnterExitState targetState, long fullSize) {
        Intrinsics.checkNotNullParameter(targetState, "targetState");
        if (this.currentAlignment == null) {
            return IntOffset.INSTANCE.m5011getZeronOccac();
        }
        if (this.alignment.getValue() != null && !Intrinsics.areEqual(this.currentAlignment, this.alignment.getValue())) {
            int i = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
            if (i == 1) {
                return IntOffset.INSTANCE.m5011getZeronOccac();
            }
            if (i == 2) {
                return IntOffset.INSTANCE.m5011getZeronOccac();
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            ChangeSize value = this.shrink.getValue();
            if (value != null) {
                long packedValue = value.getSize().invoke(IntSize.m5035boximpl(fullSize)).getPackedValue();
                Alignment value2 = this.alignment.getValue();
                Intrinsics.checkNotNull(value2);
                long mo2290alignKFBX0sM = value2.mo2290alignKFBX0sM(fullSize, packedValue, LayoutDirection.Ltr);
                Alignment alignment = this.currentAlignment;
                Intrinsics.checkNotNull(alignment);
                long mo2290alignKFBX0sM2 = alignment.mo2290alignKFBX0sM(fullSize, packedValue, LayoutDirection.Ltr);
                return IntOffsetKt.IntOffset(IntOffset.m5001getXimpl(mo2290alignKFBX0sM) - IntOffset.m5001getXimpl(mo2290alignKFBX0sM2), IntOffset.m5002getYimpl(mo2290alignKFBX0sM) - IntOffset.m5002getYimpl(mo2290alignKFBX0sM2));
            }
            return IntOffset.INSTANCE.m5011getZeronOccac();
        }
        return IntOffset.INSTANCE.m5011getZeronOccac();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo47measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        long m5011getZeronOccac;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
        final long IntSize = IntSizeKt.IntSize(mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight());
        long packedValue = this.sizeAnimation.animate(this.sizeTransitionSpec, new Function1<EnterExitState, IntSize>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$currentSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntSize invoke(EnterExitState enterExitState) {
                return IntSize.m5035boximpl(m70invokeYEO4UFw(enterExitState));
            }

            /* renamed from: invoke-YEO4UFw, reason: not valid java name */
            public final long m70invokeYEO4UFw(EnterExitState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return ExpandShrinkModifier.this.m68sizeByStateUzc_VyU(it, IntSize);
            }
        }).getValue().getPackedValue();
        final long packedValue2 = this.offsetAnimation.animate(new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$offsetDelta$1
            @Override // kotlin.jvm.functions.Function1
            public final FiniteAnimationSpec<IntOffset> invoke(Transition.Segment<EnterExitState> animate) {
                SpringSpec springSpec;
                Intrinsics.checkNotNullParameter(animate, "$this$animate");
                springSpec = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                return springSpec;
            }
        }, new Function1<EnterExitState, IntOffset>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$offsetDelta$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntOffset invoke(EnterExitState enterExitState) {
                return IntOffset.m4992boximpl(m71invokeBjo55l4(enterExitState));
            }

            /* renamed from: invoke-Bjo55l4, reason: not valid java name */
            public final long m71invokeBjo55l4(EnterExitState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return ExpandShrinkModifier.this.m69targetOffsetByStateoFUgxo0(it, IntSize);
            }
        }).getValue().getPackedValue();
        Alignment alignment = this.currentAlignment;
        if (alignment != null) {
            m5011getZeronOccac = alignment.mo2290alignKFBX0sM(IntSize, packedValue, LayoutDirection.Ltr);
        } else {
            m5011getZeronOccac = IntOffset.INSTANCE.m5011getZeronOccac();
        }
        final long j2 = m5011getZeronOccac;
        return MeasureScope.layout$default(measure, IntSize.m5043getWidthimpl(packedValue), IntSize.m5042getHeightimpl(packedValue), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$1
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
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable.PlacementScope.place$default(layout, Placeable.this, IntOffset.m5001getXimpl(j2) + IntOffset.m5001getXimpl(packedValue2), IntOffset.m5002getYimpl(j2) + IntOffset.m5002getYimpl(packedValue2), 0.0f, 4, null);
            }
        }, 4, null);
    }
}
