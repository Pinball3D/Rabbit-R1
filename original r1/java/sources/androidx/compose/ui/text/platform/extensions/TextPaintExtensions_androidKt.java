package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextPaintExtensions.android.kt */
@Metadata(d1 = {"\u0000`\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u001a9\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000e\u001aS\u0010\u000f\u001a\u0004\u0018\u00010\u0004*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042&\u0010\u0012\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0000ø\u0001\u0001\u001a\f\u0010\u001b\u001a\u00020\b*\u00020\u0004H\u0000\u001a\u0016\u0010\u001c\u001a\u00020\u001d*\u00020\u00102\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006 "}, d2 = {"correctBlurRadius", "", "blurRadius", "generateFallbackSpanStyle", "Landroidx/compose/ui/text/SpanStyle;", "letterSpacing", "Landroidx/compose/ui/unit/TextUnit;", "requiresLetterSpacing", "", "background", "Landroidx/compose/ui/graphics/Color;", "baselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "generateFallbackSpanStyle-62GTOB8", "(JZJLandroidx/compose/ui/text/style/BaselineShift;)Landroidx/compose/ui/text/SpanStyle;", "applySpanStyle", "Landroidx/compose/ui/text/platform/AndroidTextPaint;", "style", "resolveTypeface", "Lkotlin/Function4;", "Landroidx/compose/ui/text/font/FontFamily;", "Landroidx/compose/ui/text/font/FontWeight;", "Landroidx/compose/ui/text/font/FontStyle;", "Landroidx/compose/ui/text/font/FontSynthesis;", "Landroid/graphics/Typeface;", "density", "Landroidx/compose/ui/unit/Density;", "hasFontAttributes", "setTextMotion", "", "textMotion", "Landroidx/compose/ui/text/style/TextMotion;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextPaintExtensions_androidKt {
    public static final float correctBlurRadius(float f) {
        if (f == 0.0f) {
            return Float.MIN_VALUE;
        }
        return f;
    }

    public static /* synthetic */ SpanStyle applySpanStyle$default(AndroidTextPaint androidTextPaint, SpanStyle spanStyle, Function4 function4, Density density, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return applySpanStyle(androidTextPaint, spanStyle, function4, density, z);
    }

    public static final SpanStyle applySpanStyle(AndroidTextPaint androidTextPaint, SpanStyle style, Function4<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> resolveTypeface, Density density, boolean z) {
        Intrinsics.checkNotNullParameter(androidTextPaint, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(resolveTypeface, "resolveTypeface");
        Intrinsics.checkNotNullParameter(density, "density");
        long m5063getTypeUIouoOA = TextUnit.m5063getTypeUIouoOA(style.getFontSize());
        if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5097getSpUIouoOA())) {
            androidTextPaint.setTextSize(density.mo334toPxR2X_6o(style.getFontSize()));
        } else if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5096getEmUIouoOA())) {
            androidTextPaint.setTextSize(androidTextPaint.getTextSize() * TextUnit.m5064getValueimpl(style.getFontSize()));
        }
        if (hasFontAttributes(style)) {
            FontFamily fontFamily = style.getFontFamily();
            FontWeight fontWeight = style.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.INSTANCE.getNormal();
            }
            FontStyle fontStyle = style.getFontStyle();
            FontStyle m4507boximpl = FontStyle.m4507boximpl(fontStyle != null ? fontStyle.m4513unboximpl() : FontStyle.INSTANCE.m4515getNormal_LCdwA());
            FontSynthesis fontSynthesis = style.getFontSynthesis();
            androidTextPaint.setTypeface(resolveTypeface.invoke(fontFamily, fontWeight, m4507boximpl, FontSynthesis.m4516boximpl(fontSynthesis != null ? fontSynthesis.getValue() : FontSynthesis.INSTANCE.m4525getAllGVVA2EU())));
        }
        if (style.getLocaleList() != null && !Intrinsics.areEqual(style.getLocaleList(), LocaleList.INSTANCE.getCurrent())) {
            LocaleListHelperMethods.INSTANCE.setTextLocales(androidTextPaint, style.getLocaleList());
        }
        if (style.getFontFeatureSettings() != null && !Intrinsics.areEqual(style.getFontFeatureSettings(), "")) {
            androidTextPaint.setFontFeatureSettings(style.getFontFeatureSettings());
        }
        if (style.getTextGeometricTransform() != null && !Intrinsics.areEqual(style.getTextGeometricTransform(), TextGeometricTransform.INSTANCE.getNone$ui_text_release())) {
            androidTextPaint.setTextScaleX(androidTextPaint.getTextScaleX() * style.getTextGeometricTransform().getScaleX());
            androidTextPaint.setTextSkewX(androidTextPaint.getTextSkewX() + style.getTextGeometricTransform().getSkewX());
        }
        androidTextPaint.m4651setColor8_81llA(style.m4373getColor0d7_KjU());
        androidTextPaint.m4650setBrush12SF9DM(style.getBrush(), Size.INSTANCE.m2477getUnspecifiedNHjbRc(), style.getAlpha());
        androidTextPaint.setShadow(style.getShadow());
        androidTextPaint.setTextDecoration(style.getTextDecoration());
        androidTextPaint.setDrawStyle(style.getDrawStyle());
        if (TextUnitType.m5092equalsimpl0(TextUnit.m5063getTypeUIouoOA(style.getLetterSpacing()), TextUnitType.INSTANCE.m5097getSpUIouoOA()) && TextUnit.m5064getValueimpl(style.getLetterSpacing()) != 0.0f) {
            float textSize = androidTextPaint.getTextSize() * androidTextPaint.getTextScaleX();
            float mo334toPxR2X_6o = density.mo334toPxR2X_6o(style.getLetterSpacing());
            if (textSize != 0.0f) {
                androidTextPaint.setLetterSpacing(mo334toPxR2X_6o / textSize);
            }
        } else if (TextUnitType.m5092equalsimpl0(TextUnit.m5063getTypeUIouoOA(style.getLetterSpacing()), TextUnitType.INSTANCE.m5096getEmUIouoOA())) {
            androidTextPaint.setLetterSpacing(TextUnit.m5064getValueimpl(style.getLetterSpacing()));
        }
        return m4665generateFallbackSpanStyle62GTOB8(style.getLetterSpacing(), z, style.getBackground(), style.getBaselineShift());
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
    
        if (androidx.compose.ui.text.style.BaselineShift.m4673equalsimpl0(r36.m4676unboximpl(), androidx.compose.ui.text.style.BaselineShift.INSTANCE.m4680getNoney9eOQZs()) == false) goto L22;
     */
    /* renamed from: generateFallbackSpanStyle-62GTOB8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final androidx.compose.ui.text.SpanStyle m4665generateFallbackSpanStyle62GTOB8(long r31, boolean r33, long r34, androidx.compose.ui.text.style.BaselineShift r36) {
        /*
            r0 = r34
            r2 = 1
            r3 = 0
            if (r33 == 0) goto L22
            long r4 = androidx.compose.ui.unit.TextUnit.m5063getTypeUIouoOA(r31)
            androidx.compose.ui.unit.TextUnitType$Companion r6 = androidx.compose.ui.unit.TextUnitType.INSTANCE
            long r6 = r6.m5097getSpUIouoOA()
            boolean r4 = androidx.compose.ui.unit.TextUnitType.m5092equalsimpl0(r4, r6)
            if (r4 == 0) goto L22
            float r4 = androidx.compose.ui.unit.TextUnit.m5064getValueimpl(r31)
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 != 0) goto L20
            goto L22
        L20:
            r4 = r2
            goto L23
        L22:
            r4 = r3
        L23:
            androidx.compose.ui.graphics.Color$Companion r5 = androidx.compose.ui.graphics.Color.INSTANCE
            long r5 = r5.m2675getUnspecified0d7_KjU()
            boolean r5 = androidx.compose.ui.graphics.Color.m2640equalsimpl0(r0, r5)
            if (r5 != 0) goto L3d
            androidx.compose.ui.graphics.Color$Companion r5 = androidx.compose.ui.graphics.Color.INSTANCE
            long r5 = r5.m2674getTransparent0d7_KjU()
            boolean r5 = androidx.compose.ui.graphics.Color.m2640equalsimpl0(r0, r5)
            if (r5 != 0) goto L3d
            r5 = r2
            goto L3e
        L3d:
            r5 = r3
        L3e:
            if (r36 == 0) goto L51
            androidx.compose.ui.text.style.BaselineShift$Companion r6 = androidx.compose.ui.text.style.BaselineShift.INSTANCE
            float r6 = r6.m4680getNoney9eOQZs()
            float r7 = r36.m4676unboximpl()
            boolean r6 = androidx.compose.ui.text.style.BaselineShift.m4673equalsimpl0(r7, r6)
            if (r6 != 0) goto L51
            goto L52
        L51:
            r2 = r3
        L52:
            r3 = 0
            if (r4 != 0) goto L5a
            if (r5 != 0) goto L5a
            if (r2 != 0) goto L5a
            goto L9b
        L5a:
            if (r4 == 0) goto L5f
            r18 = r31
            goto L67
        L5f:
            androidx.compose.ui.unit.TextUnit$Companion r4 = androidx.compose.ui.unit.TextUnit.INSTANCE
            long r6 = r4.m5075getUnspecifiedXSAIIZE()
            r18 = r6
        L67:
            if (r5 == 0) goto L6a
            goto L70
        L6a:
            androidx.compose.ui.graphics.Color$Companion r0 = androidx.compose.ui.graphics.Color.INSTANCE
            long r0 = r0.m2675getUnspecified0d7_KjU()
        L70:
            r23 = r0
            if (r2 == 0) goto L77
            r20 = r36
            goto L79
        L77:
            r20 = r3
        L79:
            androidx.compose.ui.text.SpanStyle r3 = new androidx.compose.ui.text.SpanStyle
            r8 = r3
            r9 = 0
            r11 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r21 = 0
            r22 = 0
            r25 = 0
            r26 = 0
            r27 = 0
            r28 = 0
            r29 = 63103(0xf67f, float:8.8426E-41)
            r30 = 0
            r8.<init>(r9, r11, r13, r14, r15, r16, r17, r18, r20, r21, r22, r23, r25, r26, r27, r28, r29, r30)
        L9b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.extensions.TextPaintExtensions_androidKt.m4665generateFallbackSpanStyle62GTOB8(long, boolean, long, androidx.compose.ui.text.style.BaselineShift):androidx.compose.ui.text.SpanStyle");
    }

    public static final void setTextMotion(AndroidTextPaint androidTextPaint, TextMotion textMotion) {
        int flags;
        Intrinsics.checkNotNullParameter(androidTextPaint, "<this>");
        if (textMotion == null) {
            textMotion = TextMotion.INSTANCE.getStatic();
        }
        if (textMotion.getSubpixelTextPositioning()) {
            flags = androidTextPaint.getFlags() | 128;
        } else {
            flags = androidTextPaint.getFlags() & (-129);
        }
        androidTextPaint.setFlags(flags);
        int linearity = textMotion.getLinearity();
        if (TextMotion.Linearity.m4807equalsimpl0(linearity, TextMotion.Linearity.INSTANCE.m4812getLinear4e0Vf04())) {
            androidTextPaint.setFlags(androidTextPaint.getFlags() | 64);
            androidTextPaint.setHinting(0);
        } else if (TextMotion.Linearity.m4807equalsimpl0(linearity, TextMotion.Linearity.INSTANCE.m4811getFontHinting4e0Vf04())) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(1);
        } else if (TextMotion.Linearity.m4807equalsimpl0(linearity, TextMotion.Linearity.INSTANCE.m4813getNone4e0Vf04())) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(0);
        } else {
            androidTextPaint.getFlags();
        }
    }

    public static final boolean hasFontAttributes(SpanStyle spanStyle) {
        Intrinsics.checkNotNullParameter(spanStyle, "<this>");
        return (spanStyle.getFontFamily() == null && spanStyle.getFontStyle() == null && spanStyle.getFontWeight() == null) ? false : true;
    }
}
