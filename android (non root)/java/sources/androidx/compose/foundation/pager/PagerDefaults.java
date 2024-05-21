package androidx.compose.foundation.pager;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import io.sentry.HttpStatusCodeRange;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Pager.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jk\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u000bH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/pager/PagerDefaults;", "", "()V", "flingBehavior", "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/pager/PagerState;", "pagerSnapDistance", "Landroidx/compose/foundation/pager/PagerSnapDistance;", "lowVelocityAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "highVelocityAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "snapAnimationSpec", "snapVelocityThreshold", "Landroidx/compose/ui/unit/Dp;", "snapPositionalThreshold", "flingBehavior-PfoAEA0", "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;", "pageNestedScrollConnection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PagerDefaults {
    public static final int $stable = 0;
    public static final PagerDefaults INSTANCE = new PagerDefaults();

    private PagerDefaults() {
    }

    /* renamed from: flingBehavior-PfoAEA0, reason: not valid java name */
    public final SnapFlingBehavior m699flingBehaviorPfoAEA0(PagerState state, PagerSnapDistance pagerSnapDistance, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec2, float f, float f2, Composer composer, int i, int i2) {
        SnapLayoutInfoProvider SnapLayoutInfoProvider;
        Intrinsics.checkNotNullParameter(state, "state");
        composer.startReplaceableGroup(-705378306);
        ComposerKt.sourceInformation(composer, "C(flingBehavior)P(6,2,1!2,5:c#ui.unit.Dp)529@26940L26,538@27429L7,539@27452L873:Pager.kt#g6yjnt");
        PagerSnapDistance atMost = (i2 & 2) != 0 ? PagerSnapDistance.INSTANCE.atMost(1) : pagerSnapDistance;
        TweenSpec tween$default = (i2 & 4) != 0 ? AnimationSpecKt.tween$default(HttpStatusCodeRange.DEFAULT_MIN, 0, EasingKt.getLinearEasing(), 2, null) : animationSpec;
        DecayAnimationSpec<Float> rememberSplineBasedDecay = (i2 & 8) != 0 ? SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer, 0) : decayAnimationSpec;
        SpringSpec spring$default = (i2 & 16) != 0 ? AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null) : animationSpec2;
        float minFlingVelocityDp = (i2 & 32) != 0 ? SnapFlingBehaviorKt.getMinFlingVelocityDp() : f;
        float f3 = (i2 & 64) != 0 ? 0.5f : f2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-705378306, i, -1, "androidx.compose.foundation.pager.PagerDefaults.flingBehavior (Pager.kt:522)");
        }
        if (0.0f > f3 || f3 > 1.0f) {
            throw new IllegalArgumentException(("snapPositionalThreshold should be a number between 0 and 1. You've specified " + f3).toString());
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Density density = (Density) consume;
        Object[] objArr = {state, tween$default, rememberSplineBasedDecay, spring$default, atMost, density};
        composer.startReplaceableGroup(-568225417);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean z = false;
        for (int i3 = 0; i3 < 6; i3++) {
            z |= composer.changed(objArr[i3]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z || rememberedValue == Composer.INSTANCE.getEmpty()) {
            SnapLayoutInfoProvider = PagerKt.SnapLayoutInfoProvider(state, atMost, rememberSplineBasedDecay, f3);
            rememberedValue = new SnapFlingBehavior(SnapLayoutInfoProvider, tween$default, rememberSplineBasedDecay, spring$default, density, minFlingVelocityDp, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        SnapFlingBehavior snapFlingBehavior = (SnapFlingBehavior) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return snapFlingBehavior;
    }

    public final NestedScrollConnection pageNestedScrollConnection(Orientation orientation) {
        ConsumeAllFlingOnDirection consumeAllFlingOnDirection;
        ConsumeAllFlingOnDirection consumeAllFlingOnDirection2;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == Orientation.Horizontal) {
            consumeAllFlingOnDirection2 = PagerKt.ConsumeHorizontalFlingNestedScrollConnection;
            return consumeAllFlingOnDirection2;
        }
        consumeAllFlingOnDirection = PagerKt.ConsumeVerticalFlingNestedScrollConnection;
        return consumeAllFlingOnDirection;
    }
}
