package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HeightInLinesModifier.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a(\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\n²\u0006\n\u0010\u000b\u001a\u00020\fX\u008a\u0084\u0002"}, d2 = {"DefaultMinLines", "", "validateMinMaxLines", "", "minLines", "maxLines", "heightInLines", "Landroidx/compose/ui/Modifier;", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "foundation_release", "typeface", ""}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HeightInLinesModifierKt {
    public static final int DefaultMinLines = 1;

    public static /* synthetic */ Modifier heightInLines$default(Modifier modifier, TextStyle textStyle, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return heightInLines(modifier, textStyle, i, i2);
    }

    public static final void validateMinMaxLines(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException(("both minLines " + i + " and maxLines " + i2 + " must be greater than zero").toString());
        }
        if (i > i2) {
            throw new IllegalArgumentException(("minLines " + i + " must be less than or equal to maxLines " + i2).toString());
        }
    }

    public static final Modifier heightInLines(Modifier modifier, final TextStyle textStyle, final int i, final int i2) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.text.HeightInLinesModifierKt$heightInLines$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                inspectorInfo.setName("heightInLines");
                inspectorInfo.getProperties().set("minLines", Integer.valueOf(i));
                inspectorInfo.getProperties().set("maxLines", Integer.valueOf(i2));
                inspectorInfo.getProperties().set("textStyle", textStyle);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.HeightInLinesModifierKt$heightInLines$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i3) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(408240218);
                ComposerKt.sourceInformation(composer, "C62@2391L7,63@2452L7,64@2507L7,68@2678L96,71@2795L312,80@3135L366,96@3533L428:HeightInLinesModifier.kt#423gt5");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(408240218, i3, -1, "androidx.compose.foundation.text.heightInLines.<anonymous> (HeightInLinesModifier.kt:58)");
                }
                HeightInLinesModifierKt.validateMinMaxLines(i, i2);
                if (i == 1 && i2 == Integer.MAX_VALUE) {
                    Modifier.Companion companion = Modifier.INSTANCE;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer.endReplaceableGroup();
                    return companion;
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
                TextStyle textStyle2 = textStyle;
                composer.startReplaceableGroup(511388516);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
                boolean changed = composer.changed(textStyle2) | composer.changed(layoutDirection);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                    rememberedValue = TextStyleKt.resolveDefaults(textStyle2, layoutDirection);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                TextStyle textStyle3 = (TextStyle) rememberedValue;
                composer.startReplaceableGroup(511388516);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
                boolean changed2 = composer.changed(resolver) | composer.changed(textStyle3);
                Object rememberedValue2 = composer.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    FontFamily fontFamily = textStyle3.getFontFamily();
                    FontWeight fontWeight = textStyle3.getFontWeight();
                    if (fontWeight == null) {
                        fontWeight = FontWeight.INSTANCE.getNormal();
                    }
                    FontStyle m4437getFontStyle4Lr2A7w = textStyle3.m4437getFontStyle4Lr2A7w();
                    int m4513unboximpl = m4437getFontStyle4Lr2A7w != null ? m4437getFontStyle4Lr2A7w.m4513unboximpl() : FontStyle.INSTANCE.m4515getNormal_LCdwA();
                    FontSynthesis m4438getFontSynthesisZQGJjVo = textStyle3.m4438getFontSynthesisZQGJjVo();
                    rememberedValue2 = resolver.mo4485resolveDPcqOEQ(fontFamily, fontWeight, m4513unboximpl, m4438getFontSynthesisZQGJjVo != null ? m4438getFontSynthesisZQGJjVo.getValue() : FontSynthesis.INSTANCE.m4525getAllGVVA2EU());
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                State state = (State) rememberedValue2;
                Object[] objArr = {density, resolver, textStyle, layoutDirection, state.getValue()};
                composer.startReplaceableGroup(-568225417);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
                boolean z = false;
                for (int i4 = 0; i4 < 5; i4++) {
                    z |= composer.changed(objArr[i4]);
                }
                Object rememberedValue3 = composer.rememberedValue();
                if (z || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue3 = Integer.valueOf(IntSize.m5042getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText(textStyle3, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement(), 1)));
                    composer.updateRememberedValue(rememberedValue3);
                }
                composer.endReplaceableGroup();
                int intValue = ((Number) rememberedValue3).intValue();
                Object[] objArr2 = {density, resolver, textStyle, layoutDirection, state.getValue()};
                composer.startReplaceableGroup(-568225417);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
                boolean z2 = false;
                for (int i5 = 0; i5 < 5; i5++) {
                    z2 |= composer.changed(objArr2[i5]);
                }
                Object rememberedValue4 = composer.rememberedValue();
                if (z2 || rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue4 = Integer.valueOf(IntSize.m5042getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText(textStyle3, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement() + '\n' + TextFieldDelegateKt.getEmptyTextReplacement(), 2)));
                    composer.updateRememberedValue(rememberedValue4);
                }
                composer.endReplaceableGroup();
                int intValue2 = ((Number) rememberedValue4).intValue() - intValue;
                int i6 = i;
                Integer valueOf = i6 == 1 ? null : Integer.valueOf(((i6 - 1) * intValue2) + intValue);
                int i7 = i2;
                Integer valueOf2 = i7 != Integer.MAX_VALUE ? Integer.valueOf(intValue + (intValue2 * (i7 - 1))) : null;
                Modifier m524heightInVpY3zN4 = SizeKt.m524heightInVpY3zN4(Modifier.INSTANCE, valueOf != null ? density.mo332toDpu2uoSUM(valueOf.intValue()) : Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM(), valueOf2 != null ? density.mo332toDpu2uoSUM(valueOf2.intValue()) : Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return m524heightInVpY3zN4;
            }
        });
    }
}
