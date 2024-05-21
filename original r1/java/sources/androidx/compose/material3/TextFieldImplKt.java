package androidx.compose.material3;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutIdParentData;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextFieldImpl.kt */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0002\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00032\u0011\u00102\u001a\r\u0012\u0004\u0012\u00020.03¢\u0006\u0002\b42\u0006\u00105\u001a\u0002062\u0013\u00107\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u00108\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u00109\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010:\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010;\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010<\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\u0015\b\u0002\u0010=\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103¢\u0006\u0002\b42\b\b\u0002\u0010>\u001a\u00020?2\b\b\u0002\u0010@\u001a\u00020?2\b\b\u0002\u0010A\u001a\u00020?2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020G2\u0011\u0010H\u001a\r\u0012\u0004\u0012\u00020.03¢\u0006\u0002\b4H\u0001¢\u0006\u0002\u0010I\u001a<\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020L2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010N2\u0011\u0010O\u001a\r\u0012\u0004\u0012\u00020.03¢\u0006\u0002\b4H\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bP\u0010Q\u001a\u0012\u0010R\u001a\u00020\u00012\b\u0010S\u001a\u0004\u0018\u00010TH\u0000\u001a\u0012\u0010U\u001a\u00020\u00012\b\u0010S\u001a\u0004\u0018\u00010TH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010\u0004\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007\"\u0014\u0010\t\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u000e\u0010\r\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010\u000f\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0010\u0010\u0007\"\u0019\u0010\u0011\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0012\u0010\u0007\"\u0019\u0010\u0013\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0014\u0010\u0007\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010\u0019\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001a\u0010\u0007\"\u000e\u0010\u001b\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010\u001d\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001e\u0010\u0007\"\u000e\u0010\u001f\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010 \u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b!\u0010\u0007\"\u000e\u0010\"\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010#\u001a\u00020$X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010'\u001a\u0004\b%\u0010&\"\u001a\u0010(\u001a\u0004\u0018\u00010)*\u00020*8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006V"}, d2 = {"AnimationDuration", "", "ContainerId", "", "HorizontalIconPadding", "Landroidx/compose/ui/unit/Dp;", "getHorizontalIconPadding", "()F", "F", "IconDefaultSizeModifier", "Landroidx/compose/ui/Modifier;", "getIconDefaultSizeModifier", "()Landroidx/compose/ui/Modifier;", "LabelId", "LeadingId", "MinFocusedLabelLineHeight", "getMinFocusedLabelLineHeight", "MinSupportingTextLineHeight", "getMinSupportingTextLineHeight", "MinTextLineHeight", "getMinTextLineHeight", "PlaceholderAnimationDelayOrDuration", "PlaceholderAnimationDuration", "PlaceholderId", "PrefixId", "PrefixSuffixTextPadding", "getPrefixSuffixTextPadding", "SuffixId", "SupportingId", "SupportingTopPadding", "getSupportingTopPadding", "TextFieldId", "TextFieldPadding", "getTextFieldPadding", "TrailingId", "ZeroConstraints", "Landroidx/compose/ui/unit/Constraints;", "getZeroConstraints", "()J", "J", "layoutId", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "getLayoutId", "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;", "CommonDecorationBox", "", "type", "Landroidx/compose/material3/TextFieldType;", "value", "innerTextField", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "label", "placeholder", "leadingIcon", "trailingIcon", "prefix", "suffix", "supportingText", "singleLine", "", "enabled", "isError", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "colors", "Landroidx/compose/material3/TextFieldColors;", "container", "(Landroidx/compose/material3/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V", "Decoration", "contentColor", "Landroidx/compose/ui/graphics/Color;", "typography", "Landroidx/compose/ui/text/TextStyle;", "content", "Decoration-KTwxG1Y", "(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "heightOrZero", "placeable", "Landroidx/compose/ui/layout/Placeable;", "widthOrZero", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldImplKt {
    public static final int AnimationDuration = 150;
    public static final String ContainerId = "Container";
    private static final Modifier IconDefaultSizeModifier;
    public static final String LabelId = "Label";
    public static final String LeadingId = "Leading";
    private static final float MinFocusedLabelLineHeight;
    private static final float MinSupportingTextLineHeight;
    private static final int PlaceholderAnimationDelayOrDuration = 67;
    private static final int PlaceholderAnimationDuration = 83;
    public static final String PlaceholderId = "Hint";
    public static final String PrefixId = "Prefix";
    public static final String SuffixId = "Suffix";
    public static final String SupportingId = "Supporting";
    public static final String TextFieldId = "TextField";
    private static final float TextFieldPadding;
    public static final String TrailingId = "Trailing";
    private static final long ZeroConstraints = ConstraintsKt.Constraints(0, 0, 0, 0);
    private static final float HorizontalIconPadding = Dp.m4883constructorimpl(12);
    private static final float SupportingTopPadding = Dp.m4883constructorimpl(4);
    private static final float PrefixSuffixTextPadding = Dp.m4883constructorimpl(2);
    private static final float MinTextLineHeight = Dp.m4883constructorimpl(24);

    public static final float getHorizontalIconPadding() {
        return HorizontalIconPadding;
    }

    public static final Modifier getIconDefaultSizeModifier() {
        return IconDefaultSizeModifier;
    }

    public static final float getMinFocusedLabelLineHeight() {
        return MinFocusedLabelLineHeight;
    }

    public static final float getMinSupportingTextLineHeight() {
        return MinSupportingTextLineHeight;
    }

    public static final float getMinTextLineHeight() {
        return MinTextLineHeight;
    }

    public static final float getPrefixSuffixTextPadding() {
        return PrefixSuffixTextPadding;
    }

    public static final float getSupportingTopPadding() {
        return SupportingTopPadding;
    }

    public static final float getTextFieldPadding() {
        return TextFieldPadding;
    }

    public static final long getZeroConstraints() {
        return ZeroConstraints;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CommonDecorationBox(final androidx.compose.material3.TextFieldType r43, final java.lang.String r44, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, final androidx.compose.ui.text.input.VisualTransformation r46, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r47, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r48, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r49, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r50, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r51, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r52, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r53, boolean r54, boolean r55, boolean r56, final androidx.compose.foundation.interaction.InteractionSource r57, final androidx.compose.foundation.layout.PaddingValues r58, final androidx.compose.material3.TextFieldColors r59, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r60, androidx.compose.runtime.Composer r61, final int r62, final int r63, final int r64) {
        /*
            Method dump skipped, instructions count: 1239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldImplKt.CommonDecorationBox(androidx.compose.material3.TextFieldType, java.lang.String, kotlin.jvm.functions.Function2, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, boolean, boolean, androidx.compose.foundation.interaction.InteractionSource, androidx.compose.foundation.layout.PaddingValues, androidx.compose.material3.TextFieldColors, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* renamed from: Decoration-KTwxG1Y, reason: not valid java name */
    public static final void m1552DecorationKTwxG1Y(final long j, TextStyle textStyle, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i, final int i2) {
        final int i3;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-1520066345);
        ComposerKt.sourceInformation(startRestartGroup, "C(Decoration)P(1:c#ui.graphics.Color,2):TextFieldImpl.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 112) == 0) {
            i3 |= startRestartGroup.changed(textStyle) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 896) == 0) {
            i3 |= startRestartGroup.changedInstance(content) ? 256 : 128;
        }
        if ((i3 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (i4 != 0) {
                textStyle = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1520066345, i3, -1, "androidx.compose.material3.Decoration (TextFieldImpl.kt:274)");
            }
            ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(startRestartGroup, 1449369305, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TextFieldImplKt$Decoration$contentWithColor$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i5) {
                    ComposerKt.sourceInformation(composer2, "C280@11674L118:TextFieldImpl.kt#uh7d8r");
                    if ((i5 & 11) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1449369305, i5, -1, "androidx.compose.material3.Decoration.<anonymous> (TextFieldImpl.kt:279)");
                        }
                        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j))}, content, composer2, ((i3 >> 3) & 112) | 8);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            });
            if (textStyle != null) {
                startRestartGroup.startReplaceableGroup(1830468032);
                ComposerKt.sourceInformation(startRestartGroup, "285@11827L46");
                TextKt.ProvideTextStyle(textStyle, composableLambda, startRestartGroup, ((i3 >> 3) & 14) | 48);
            } else {
                startRestartGroup.startReplaceableGroup(1830468084);
                ComposerKt.sourceInformation(startRestartGroup, "285@11879L18");
                composableLambda.invoke(startRestartGroup, 6);
            }
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        final TextStyle textStyle2 = textStyle;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TextFieldImplKt$Decoration$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i5) {
                TextFieldImplKt.m1552DecorationKTwxG1Y(j, textStyle2, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    public static final int widthOrZero(Placeable placeable) {
        if (placeable != null) {
            return placeable.getWidth();
        }
        return 0;
    }

    public static final int heightOrZero(Placeable placeable) {
        if (placeable != null) {
            return placeable.getHeight();
        }
        return 0;
    }

    public static final Object getLayoutId(IntrinsicMeasurable intrinsicMeasurable) {
        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "<this>");
        Object parentData = intrinsicMeasurable.getParentData();
        LayoutIdParentData layoutIdParentData = parentData instanceof LayoutIdParentData ? (LayoutIdParentData) parentData : null;
        if (layoutIdParentData != null) {
            return layoutIdParentData.getLayoutId();
        }
        return null;
    }

    static {
        float f = 16;
        TextFieldPadding = Dp.m4883constructorimpl(f);
        MinFocusedLabelLineHeight = Dp.m4883constructorimpl(f);
        MinSupportingTextLineHeight = Dp.m4883constructorimpl(f);
        float f2 = 48;
        IconDefaultSizeModifier = SizeKt.m521defaultMinSizeVpY3zN4(Modifier.INSTANCE, Dp.m4883constructorimpl(f2), Dp.m4883constructorimpl(f2));
    }
}
