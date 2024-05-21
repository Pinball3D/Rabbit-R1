package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: SingleValueAnimation.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a'\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aK\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001aU\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\"\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0017"}, d2 = {"colorDefaultSpring", "Landroidx/compose/animation/core/SpringSpec;", "Landroidx/compose/ui/graphics/Color;", "Animatable", "Landroidx/compose/animation/core/Animatable;", "Landroidx/compose/animation/core/AnimationVector4D;", "initialValue", "Animatable-8_81llA", "(J)Landroidx/compose/animation/core/Animatable;", "animateColorAsState", "Landroidx/compose/runtime/State;", "targetValue", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "finishedListener", "Lkotlin/Function1;", "", "animateColorAsState-KTwxG1Y", "(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "label", "", "animateColorAsState-euL9pac", "(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "animation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SingleValueAnimationKt {
    private static final SpringSpec<Color> colorDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);

    /* renamed from: animateColorAsState-euL9pac, reason: not valid java name */
    public static final State<Color> m78animateColorAsStateeuL9pac(long j, AnimationSpec<Color> animationSpec, String str, Function1<? super Color, Unit> function1, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-451899108);
        ComposerKt.sourceInformation(composer, "C(animateColorAsState)P(3:c#ui.graphics.Color!1,2)62@2847L96,65@2955L124:SingleValueAnimation.kt#xbi5r1");
        SpringSpec<Color> springSpec = (i2 & 2) != 0 ? colorDefaultSpring : animationSpec;
        String str2 = (i2 & 4) != 0 ? "ColorAnimation" : str;
        Function1<? super Color, Unit> function12 = (i2 & 8) != 0 ? null : function1;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-451899108, i, -1, "androidx.compose.animation.animateColorAsState (SingleValueAnimation.kt:56)");
        }
        ColorSpace m2643getColorSpaceimpl = Color.m2643getColorSpaceimpl(j);
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(m2643getColorSpaceimpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(Color.m2643getColorSpaceimpl(j));
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        int i3 = i << 6;
        State<Color> animateValueAsState = AnimateAsStateKt.animateValueAsState(Color.m2629boximpl(j), (TwoWayConverter) rememberedValue, springSpec, null, str2, function12, composer, (i & 14) | 576 | (57344 & i3) | (i3 & 458752), 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "animate*AsState APIs now have a new label parameter added.")
    /* renamed from: animateColorAsState-KTwxG1Y, reason: not valid java name */
    public static final /* synthetic */ State m77animateColorAsStateKTwxG1Y(long j, AnimationSpec animationSpec, Function1 function1, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1942442407);
        ComposerKt.sourceInformation(composer, "C(animateColorAsState)P(2:c#ui.graphics.Color)80@3400L98:SingleValueAnimation.kt#xbi5r1");
        if ((i2 & 2) != 0) {
            animationSpec = colorDefaultSpring;
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        Function1 function12 = function1;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1942442407, i, -1, "androidx.compose.animation.animateColorAsState (SingleValueAnimation.kt:75)");
        }
        State<Color> m78animateColorAsStateeuL9pac = m78animateColorAsStateeuL9pac(j, animationSpec2, null, function12, composer, (i & 14) | 64 | ((i << 3) & 7168), 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m78animateColorAsStateeuL9pac;
    }

    /* renamed from: Animatable-8_81llA, reason: not valid java name */
    public static final Animatable<Color, AnimationVector4D> m76Animatable8_81llA(long j) {
        return new Animatable<>(Color.m2629boximpl(j), ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(Color.m2643getColorSpaceimpl(j)), null, null, 12, null);
    }
}
