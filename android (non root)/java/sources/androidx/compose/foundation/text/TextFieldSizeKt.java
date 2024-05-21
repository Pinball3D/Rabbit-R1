package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: TextFieldSize.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004²\u0006\n\u0010\u0005\u001a\u00020\u0006X\u008a\u0084\u0002"}, d2 = {"textFieldMinSize", "Landroidx/compose/ui/Modifier;", "style", "Landroidx/compose/ui/text/TextStyle;", "foundation_release", "typeface", ""}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldSizeKt {
    public static final Modifier textFieldMinSize(Modifier modifier, final TextStyle style) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        return ComposedModifierKt.composed$default(modifier, null, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.TextFieldSizeKt$textFieldMinSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1582736677);
                ComposerKt.sourceInformation(composer, "C38@1591L7,39@1652L7,40@1707L7,42@1740L88,45@1849L312,54@2186L101:TextFieldSize.kt#423gt5");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1582736677, i, -1, "androidx.compose.foundation.text.textFieldMinSize.<anonymous> (TextFieldSize.kt:37)");
                }
                ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume = composer.consume(localDensity);
                ComposerKt.sourceInformationMarkerEnd(composer);
                Density density = (Density) consume;
                ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver = CompositionLocalsKt.getLocalFontFamilyResolver();
                ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume2 = composer.consume(localFontFamilyResolver);
                ComposerKt.sourceInformationMarkerEnd(composer);
                FontFamily.Resolver resolver = (FontFamily.Resolver) consume2;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume3 = composer.consume(localLayoutDirection);
                ComposerKt.sourceInformationMarkerEnd(composer);
                LayoutDirection layoutDirection = (LayoutDirection) consume3;
                TextStyle textStyle = TextStyle.this;
                composer.startReplaceableGroup(511388516);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
                boolean changed = composer.changed(textStyle) | composer.changed(layoutDirection);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                    rememberedValue = TextStyleKt.resolveDefaults(textStyle, layoutDirection);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                TextStyle textStyle2 = (TextStyle) rememberedValue;
                composer.startReplaceableGroup(511388516);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
                boolean changed2 = composer.changed(resolver) | composer.changed(textStyle2);
                Object rememberedValue2 = composer.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    FontFamily fontFamily = textStyle2.getFontFamily();
                    FontWeight fontWeight = textStyle2.getFontWeight();
                    if (fontWeight == null) {
                        fontWeight = FontWeight.INSTANCE.getNormal();
                    }
                    FontStyle m4437getFontStyle4Lr2A7w = textStyle2.m4437getFontStyle4Lr2A7w();
                    int m4513unboximpl = m4437getFontStyle4Lr2A7w != null ? m4437getFontStyle4Lr2A7w.m4513unboximpl() : FontStyle.INSTANCE.m4515getNormal_LCdwA();
                    FontSynthesis m4438getFontSynthesisZQGJjVo = textStyle2.m4438getFontSynthesisZQGJjVo();
                    rememberedValue2 = resolver.mo4485resolveDPcqOEQ(fontFamily, fontWeight, m4513unboximpl, m4438getFontSynthesisZQGJjVo != null ? m4438getFontSynthesisZQGJjVo.getValue() : FontSynthesis.INSTANCE.m4525getAllGVVA2EU());
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                State state = (State) rememberedValue2;
                TextStyle textStyle3 = TextStyle.this;
                composer.startReplaceableGroup(-492369756);
                ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
                Object rememberedValue3 = composer.rememberedValue();
                if (rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue3 = new TextFieldSize(layoutDirection, density, resolver, textStyle3, state.getValue());
                    composer.updateRememberedValue(rememberedValue3);
                }
                composer.endReplaceableGroup();
                final TextFieldSize textFieldSize = (TextFieldSize) rememberedValue3;
                textFieldSize.update(layoutDirection, density, resolver, textStyle2, state.getValue());
                Modifier layout = LayoutModifierKt.layout(Modifier.INSTANCE, new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.foundation.text.TextFieldSizeKt$textFieldMinSize$1.1
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                        return m836invoke3p2s80s(measureScope, measurable, constraints.getValue());
                    }

                    /* renamed from: invoke-3p2s80s, reason: not valid java name */
                    public final MeasureResult m836invoke3p2s80s(MeasureScope layout2, Measurable measurable, long j) {
                        Intrinsics.checkNotNullParameter(layout2, "$this$layout");
                        Intrinsics.checkNotNullParameter(measurable, "measurable");
                        SizeKt.m522defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, 0.0f, 0.0f, 3, null);
                        long minSize = TextFieldSize.this.getMinSize();
                        final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j, RangesKt.coerceIn(IntSize.m5043getWidthimpl(minSize), Constraints.m4841getMinWidthimpl(j), Constraints.m4839getMaxWidthimpl(j)), 0, RangesKt.coerceIn(IntSize.m5042getHeightimpl(minSize), Constraints.m4840getMinHeightimpl(j), Constraints.m4838getMaxHeightimpl(j)), 0, 10, null));
                        return MeasureScope.layout$default(layout2, mo3876measureBRTryo0.getWidth(), mo3876measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.text.TextFieldSizeKt.textFieldMinSize.1.1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope layout3) {
                                Intrinsics.checkNotNullParameter(layout3, "$this$layout");
                                Placeable.PlacementScope.placeRelative$default(layout3, Placeable.this, 0, 0, 0.0f, 4, null);
                            }
                        }, 4, null);
                    }
                });
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return layout;
            }
        }, 1, null);
    }
}
