package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Transition.kt */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a=\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\b\u0010\t\u001aG\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\r\u001a\u0088\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b\u0000\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2*\b\n\u0010\u0010\u001a$\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00130\u0011¢\u0006\u0002\b\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\n\u001a\u00020\u000b2&\u0010\u0016\u001a\"\u0012\u0013\u0012\u0011H\u000e¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00020\u0011¢\u0006\u0002\b\u0014H\u0087\bø\u0001\u0002ø\u0001\u0001¢\u0006\u0002\u0010\u001a\u0082\u0002\u0012\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"animateColor", "Landroidx/compose/runtime/State;", "Landroidx/compose/ui/graphics/Color;", "Landroidx/compose/animation/core/InfiniteTransition;", "initialValue", "targetValue", "animationSpec", "Landroidx/compose/animation/core/InfiniteRepeatableSpec;", "animateColor-RIQooxk", "(Landroidx/compose/animation/core/InfiniteTransition;JJLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "label", "", "animateColor-DTcfvLk", "(Landroidx/compose/animation/core/InfiniteTransition;JJLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", ExifInterface.LATITUDE_SOUTH, "Landroidx/compose/animation/core/Transition;", "transitionSpec", "Lkotlin/Function1;", "Landroidx/compose/animation/core/Transition$Segment;", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "targetValueByState", "Lkotlin/ParameterName;", "name", SentryThread.JsonKeys.STATE, "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "animation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TransitionKt {
    public static final <S> State<Color> animateColor(Transition<S> transition, Function3<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Color>> function3, String str, Function3<? super S, ? super Composer, ? super Integer, Color> targetValueByState, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(-1939694975);
        ComposerKt.sourceInformation(composer, "CC(animateColor)P(2)68@3220L31,69@3287L70,73@3370L70:Transition.kt#xbi5r1");
        if ((i2 & 1) != 0) {
            function3 = new Function3<Transition.Segment<S>, Composer, Integer, SpringSpec<Color>>() { // from class: androidx.compose.animation.TransitionKt$animateColor$1
                public final SpringSpec<Color> invoke(Transition.Segment<S> segment, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-1457805428);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1457805428, i3, -1, "androidx.compose.animation.animateColor.<anonymous> (Transition.kt:64)");
                    }
                    SpringSpec<Color> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2.endReplaceableGroup();
                    return spring$default;
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ SpringSpec<Color> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }
            };
        }
        if ((i2 & 2) != 0) {
            str = "ColorAnimation";
        }
        String str2 = str;
        ColorSpace m2643getColorSpaceimpl = Color.m2643getColorSpaceimpl(targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf((i >> 6) & 112)).m2649unboximpl());
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(m2643getColorSpaceimpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(m2643getColorSpaceimpl);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        TwoWayConverter twoWayConverter = (TwoWayConverter) rememberedValue;
        int i3 = (i & 14) | 64;
        int i4 = i << 3;
        int i5 = i3 | (i4 & 896) | (i4 & 7168) | (i4 & 57344);
        composer.startReplaceableGroup(-142660079);
        ComposerKt.sourceInformation(composer, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli");
        int i6 = (i5 >> 9) & 112;
        State<Color> createTransitionAnimation = androidx.compose.animation.core.TransitionKt.createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i6)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i6)), function3.invoke(transition.getSegment(), composer, Integer.valueOf((i5 >> 3) & 112)), twoWayConverter, str2, composer, (i5 & 14) | ((i5 << 9) & 57344) | ((i5 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    /* renamed from: animateColor-DTcfvLk, reason: not valid java name */
    public static final State<Color> m88animateColorDTcfvLk(InfiniteTransition animateColor, long j, long j2, InfiniteRepeatableSpec<Color> animationSpec, String str, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(animateColor, "$this$animateColor");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        composer.startReplaceableGroup(1901963533);
        ComposerKt.sourceInformation(composer, "C(animateColor)P(1:c#ui.graphics.Color,3:c#ui.graphics.Color)102@4596L72,105@4680L72:Transition.kt#xbi5r1");
        String str2 = (i2 & 8) != 0 ? "ColorAnimation" : str;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1901963533, i, -1, "androidx.compose.animation.animateColor (Transition.kt:96)");
        }
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.INSTANCE).invoke(Color.m2643getColorSpaceimpl(j2));
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        int i3 = i << 3;
        State<Color> animateValue = InfiniteTransitionKt.animateValue(animateColor, Color.m2629boximpl(j), Color.m2629boximpl(j2), (TwoWayConverter) rememberedValue, animationSpec, str2, composer, InfiniteTransition.$stable | 4096 | (i & 14) | (i & 112) | (i & 896) | (InfiniteRepeatableSpec.$stable << 12) | (57344 & i3) | (i3 & 458752), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return animateValue;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "animateColor APIs now have a new label parameter added.")
    /* renamed from: animateColor-RIQooxk, reason: not valid java name */
    public static final /* synthetic */ State m89animateColorRIQooxk(InfiniteTransition animateColor, long j, long j2, InfiniteRepeatableSpec animationSpec, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(animateColor, "$this$animateColor");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        composer.startReplaceableGroup(1400583834);
        ComposerKt.sourceInformation(composer, "C(animateColor)P(1:c#ui.graphics.Color,2:c#ui.graphics.Color)117@5040L143:Transition.kt#xbi5r1");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1400583834, i, -1, "androidx.compose.animation.animateColor (Transition.kt:113)");
        }
        State<Color> m88animateColorDTcfvLk = m88animateColorDTcfvLk(animateColor, j, j2, animationSpec, "ColorAnimation", composer, InfiniteTransition.$stable | 24576 | (i & 14) | (i & 112) | (i & 896) | (InfiniteRepeatableSpec.$stable << 9) | (i & 7168), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m88animateColorDTcfvLk;
    }
}
