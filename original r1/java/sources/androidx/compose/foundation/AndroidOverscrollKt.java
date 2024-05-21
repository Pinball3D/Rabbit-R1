package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidOverscroll.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0002\u001a\u00020\u0003H\u0001¢\u0006\u0002\u0010\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"StretchOverscrollNonClippingLayer", "Landroidx/compose/ui/Modifier;", "rememberOverscrollEffect", "Landroidx/compose/foundation/OverscrollEffect;", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidOverscrollKt {
    private static final Modifier StretchOverscrollNonClippingLayer = LayoutModifierKt.layout(LayoutModifierKt.layout(Modifier.INSTANCE, new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
            return m166invoke3p2s80s(measureScope, measurable, constraints.getValue());
        }

        /* renamed from: invoke-3p2s80s, reason: not valid java name */
        public final MeasureResult m166invoke3p2s80s(MeasureScope layout, Measurable measurable, long j) {
            Intrinsics.checkNotNullParameter(layout, "$this$layout");
            Intrinsics.checkNotNullParameter(measurable, "measurable");
            final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
            final int i = layout.mo329roundToPx0680j_4(Dp.m4883constructorimpl(ClipScrollableContainerKt.getMaxSupportedElevation() * 2));
            return MeasureScope.layout$default(layout, mo3876measureBRTryo0.getMeasuredWidth() - i, mo3876measureBRTryo0.getMeasuredHeight() - i, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1.1
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
                public final void invoke2(Placeable.PlacementScope layout2) {
                    Intrinsics.checkNotNullParameter(layout2, "$this$layout");
                    Placeable placeable = Placeable.this;
                    Placeable.PlacementScope.placeWithLayer$default(layout2, placeable, ((-i) / 2) - ((placeable.getWidth() - Placeable.this.getMeasuredWidth()) / 2), ((-i) / 2) - ((Placeable.this.getHeight() - Placeable.this.getMeasuredHeight()) / 2), 0.0f, null, 12, null);
                }
            }, 4, null);
        }
    }), new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
            return m167invoke3p2s80s(measureScope, measurable, constraints.getValue());
        }

        /* renamed from: invoke-3p2s80s, reason: not valid java name */
        public final MeasureResult m167invoke3p2s80s(MeasureScope layout, Measurable measurable, long j) {
            Intrinsics.checkNotNullParameter(layout, "$this$layout");
            Intrinsics.checkNotNullParameter(measurable, "measurable");
            final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
            final int i = layout.mo329roundToPx0680j_4(Dp.m4883constructorimpl(ClipScrollableContainerKt.getMaxSupportedElevation() * 2));
            return MeasureScope.layout$default(layout, mo3876measureBRTryo0.getWidth() + i, mo3876measureBRTryo0.getHeight() + i, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2.1
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
                public final void invoke2(Placeable.PlacementScope layout2) {
                    Intrinsics.checkNotNullParameter(layout2, "$this$layout");
                    Placeable placeable = Placeable.this;
                    int i2 = i;
                    Placeable.PlacementScope.place$default(layout2, placeable, i2 / 2, i2 / 2, 0.0f, 4, null);
                }
            }, 4, null);
        }
    });

    public static final OverscrollEffect rememberOverscrollEffect(Composer composer, int i) {
        NoOpOverscrollEffect noOpOverscrollEffect;
        composer.startReplaceableGroup(-81138291);
        ComposerKt.sourceInformation(composer, "C(rememberOverscrollEffect)63@2804L7,64@2858L7,66@2907L80:AndroidOverscroll.kt#71ulvw");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-81138291, i, -1, "androidx.compose.foundation.rememberOverscrollEffect (AndroidOverscroll.kt:62)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Context context = (Context) consume;
        ProvidableCompositionLocal<OverscrollConfiguration> localOverscrollConfiguration = OverscrollConfigurationKt.getLocalOverscrollConfiguration();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume2 = composer.consume(localOverscrollConfiguration);
        ComposerKt.sourceInformationMarkerEnd(composer);
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) consume2;
        if (overscrollConfiguration != null) {
            composer.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed = composer.changed(context) | composer.changed(overscrollConfiguration);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new AndroidEdgeEffectOverscrollEffect(context, overscrollConfiguration);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            noOpOverscrollEffect = (OverscrollEffect) rememberedValue;
        } else {
            noOpOverscrollEffect = NoOpOverscrollEffect.INSTANCE;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return noOpOverscrollEffect;
    }
}
