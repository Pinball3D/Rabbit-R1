package androidx.compose.material.ripple;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: Ripple.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u001a3\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"DefaultTweenSpec", "Landroidx/compose/animation/core/TweenSpec;", "", "incomingStateLayerAnimationSpecFor", "Landroidx/compose/animation/core/AnimationSpec;", "interaction", "Landroidx/compose/foundation/interaction/Interaction;", "outgoingStateLayerAnimationSpecFor", "rememberRipple", "Landroidx/compose/foundation/Indication;", "bounded", "", "radius", "Landroidx/compose/ui/unit/Dp;", "color", "Landroidx/compose/ui/graphics/Color;", "rememberRipple-9IZ8Weo", "(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;", "material-ripple_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RippleKt {
    private static final TweenSpec<Float> DefaultTweenSpec = new TweenSpec<>(15, 0, EasingKt.getLinearEasing(), 2, null);

    /* renamed from: rememberRipple-9IZ8Weo */
    public static final Indication m976rememberRipple9IZ8Weo(boolean z, float f, long j, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1635163520);
        ComposerKt.sourceInformation(composer, "C(rememberRipple)P(!1,2:c#ui.unit.Dp,1:c#ui.graphics.Color)81@3890L27,82@3929L85:Ripple.kt#vhb33q");
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            f = Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM();
        }
        if ((i2 & 4) != 0) {
            j = Color.INSTANCE.m2675getUnspecified0d7_KjU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1635163520, i, -1, "androidx.compose.material.ripple.rememberRipple (Ripple.kt:76)");
        }
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(j), composer, (i >> 6) & 14);
        Boolean valueOf = Boolean.valueOf(z);
        Dp m4881boximpl = Dp.m4881boximpl(f);
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf) | composer.changed(m4881boximpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = new PlatformRipple(z, f, rememberUpdatedState, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        PlatformRipple platformRipple = (PlatformRipple) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return platformRipple;
    }

    public static final AnimationSpec<Float> incomingStateLayerAnimationSpecFor(Interaction interaction) {
        if (interaction instanceof HoverInteraction.Enter) {
            return DefaultTweenSpec;
        }
        if (!(interaction instanceof FocusInteraction.Focus) && !(interaction instanceof DragInteraction.Start)) {
            return DefaultTweenSpec;
        }
        return new TweenSpec(45, 0, EasingKt.getLinearEasing(), 2, null);
    }

    public static final AnimationSpec<Float> outgoingStateLayerAnimationSpecFor(Interaction interaction) {
        if (!(interaction instanceof HoverInteraction.Enter) && !(interaction instanceof FocusInteraction.Focus)) {
            return interaction instanceof DragInteraction.Start ? new TweenSpec(150, 0, EasingKt.getLinearEasing(), 2, null) : DefaultTweenSpec;
        }
        return DefaultTweenSpec;
    }
}
