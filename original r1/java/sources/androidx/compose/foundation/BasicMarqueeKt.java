package androidx.compose.foundation;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.StartOffset;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BasicMarquee.kt */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000fH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001aK\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a&\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001a0%2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u0001H\u0002\u001aU\u0010&\u001a\u00020'*\u00020'2\b\b\u0002\u0010\u001b\u001a\u00020\u00012\b\b\u0002\u0010(\u001a\u00020)2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\u00012\b\b\u0002\u0010\u0015\u001a\u00020\n2\b\b\u0002\u0010\u001f\u001a\u00020\u000fH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b*\u0010+\"\u001c\u0010\u0000\u001a\u00020\u00018GX\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u00018GX\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\u0003\u001a\u0004\b\b\u0010\u0005\"\u001c\u0010\t\u001a\u00020\n8GX\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\r\"!\u0010\u000e\u001a\u00020\u000f8GX\u0087\u0004ø\u0001\u0000¢\u0006\u0010\n\u0002\u0010\u0013\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u0011\u0010\u0012\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006,"}, d2 = {"DefaultMarqueeDelayMillis", "", "getDefaultMarqueeDelayMillis$annotations", "()V", "getDefaultMarqueeDelayMillis", "()I", "DefaultMarqueeIterations", "getDefaultMarqueeIterations$annotations", "getDefaultMarqueeIterations", "DefaultMarqueeSpacing", "Landroidx/compose/foundation/MarqueeSpacing;", "getDefaultMarqueeSpacing$annotations", "getDefaultMarqueeSpacing", "()Landroidx/compose/foundation/MarqueeSpacing;", "DefaultMarqueeVelocity", "Landroidx/compose/ui/unit/Dp;", "getDefaultMarqueeVelocity$annotations", "getDefaultMarqueeVelocity", "()F", "F", "MarqueeSpacing", "spacing", "MarqueeSpacing-0680j_4", "(F)Landroidx/compose/foundation/MarqueeSpacing;", "createMarqueeAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "iterations", "targetValue", "initialDelayMillis", "delayMillis", "velocity", "density", "Landroidx/compose/ui/unit/Density;", "createMarqueeAnimationSpec-Z4HSEVQ", "(IFIIFLandroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/AnimationSpec;", "velocityBasedTween", "Landroidx/compose/animation/core/TweenSpec;", "basicMarquee", "Landroidx/compose/ui/Modifier;", "animationMode", "Landroidx/compose/foundation/MarqueeAnimationMode;", "basicMarquee-1Mj1MLw", "(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/foundation/MarqueeSpacing;F)Landroidx/compose/ui/Modifier;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BasicMarqueeKt {
    private static final int DefaultMarqueeDelayMillis = 1200;
    private static final int DefaultMarqueeIterations = 3;
    private static final MarqueeSpacing DefaultMarqueeSpacing = MarqueeSpacing.INSTANCE.fractionOfContainer(0.33333334f);
    private static final float DefaultMarqueeVelocity = Dp.m4883constructorimpl(30);

    public static final int getDefaultMarqueeDelayMillis() {
        return DefaultMarqueeDelayMillis;
    }

    public static /* synthetic */ void getDefaultMarqueeDelayMillis$annotations() {
    }

    public static final int getDefaultMarqueeIterations() {
        return DefaultMarqueeIterations;
    }

    public static /* synthetic */ void getDefaultMarqueeIterations$annotations() {
    }

    public static final MarqueeSpacing getDefaultMarqueeSpacing() {
        return DefaultMarqueeSpacing;
    }

    public static /* synthetic */ void getDefaultMarqueeSpacing$annotations() {
    }

    public static final float getDefaultMarqueeVelocity() {
        return DefaultMarqueeVelocity;
    }

    public static /* synthetic */ void getDefaultMarqueeVelocity$annotations() {
    }

    /* renamed from: basicMarquee-1Mj1MLw$default, reason: not valid java name */
    public static /* synthetic */ Modifier m175basicMarquee1Mj1MLw$default(Modifier modifier, int i, int i2, int i3, int i4, MarqueeSpacing marqueeSpacing, float f, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = DefaultMarqueeIterations;
        }
        if ((i5 & 2) != 0) {
            i2 = MarqueeAnimationMode.INSTANCE.m240getImmediatelyZbEOnfQ();
        }
        int i6 = i2;
        if ((i5 & 4) != 0) {
            i3 = DefaultMarqueeDelayMillis;
        }
        int i7 = i3;
        if ((i5 & 8) != 0) {
            i4 = MarqueeAnimationMode.m234equalsimpl0(i6, MarqueeAnimationMode.INSTANCE.m240getImmediatelyZbEOnfQ()) ? i7 : 0;
        }
        int i8 = i4;
        if ((i5 & 16) != 0) {
            marqueeSpacing = DefaultMarqueeSpacing;
        }
        MarqueeSpacing marqueeSpacing2 = marqueeSpacing;
        if ((i5 & 32) != 0) {
            f = DefaultMarqueeVelocity;
        }
        return m174basicMarquee1Mj1MLw(modifier, i, i6, i7, i8, marqueeSpacing2, f);
    }

    /* renamed from: basicMarquee-1Mj1MLw, reason: not valid java name */
    public static final Modifier m174basicMarquee1Mj1MLw(Modifier basicMarquee, int i, int i2, int i3, int i4, MarqueeSpacing spacing, float f) {
        Intrinsics.checkNotNullParameter(basicMarquee, "$this$basicMarquee");
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        return basicMarquee.then(new MarqueeModifierElement(i, i2, i3, i4, spacing, f, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createMarqueeAnimationSpec-Z4HSEVQ, reason: not valid java name */
    public static final AnimationSpec<Float> m176createMarqueeAnimationSpecZ4HSEVQ(int i, float f, int i2, int i3, float f2, Density density) {
        TweenSpec<Float> velocityBasedTween = velocityBasedTween(Math.abs(density.mo335toPx0680j_4(f2)), f, i3);
        long m121constructorimpl$default = StartOffset.m121constructorimpl$default((-i3) + i2, 0, 2, null);
        if (i == Integer.MAX_VALUE) {
            return AnimationSpecKt.m101infiniteRepeatable9IiC70o$default(velocityBasedTween, null, m121constructorimpl$default, 2, null);
        }
        return AnimationSpecKt.m103repeatable91I0pcU$default(i, velocityBasedTween, null, m121constructorimpl$default, 4, null);
    }

    private static final TweenSpec<Float> velocityBasedTween(float f, float f2, int i) {
        return AnimationSpecKt.tween((int) Math.ceil(f2 / (f / 1000.0f)), i, EasingKt.getLinearEasing());
    }

    /* renamed from: MarqueeSpacing-0680j_4, reason: not valid java name */
    public static final MarqueeSpacing m172MarqueeSpacing0680j_4(final float f) {
        return new MarqueeSpacing() { // from class: androidx.compose.foundation.BasicMarqueeKt$MarqueeSpacing$1
            @Override // androidx.compose.foundation.MarqueeSpacing
            public final int calculateSpacing(Density MarqueeSpacing, int i, int i2) {
                Intrinsics.checkNotNullParameter(MarqueeSpacing, "$this$MarqueeSpacing");
                return MarqueeSpacing.mo329roundToPx0680j_4(f);
            }
        };
    }
}
