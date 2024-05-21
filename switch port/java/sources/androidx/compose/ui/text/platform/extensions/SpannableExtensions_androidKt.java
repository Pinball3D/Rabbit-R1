package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.FontFeatureSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import androidx.compose.ui.text.android.style.LineHeightSpan;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.android.style.ShadowSpan;
import androidx.compose.ui.text.android.style.SkewXSpan;
import androidx.compose.ui.text.android.style.TextDecorationSpan;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.style.DrawStyleSpan;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;

/* compiled from: SpannableExtensions.android.kt */
@Metadata(d1 = {"\u0000Î\u0001\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u001aF\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00120\u00112\u001e\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000e0\u0014H\u0000\u001a-\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\nH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u001b\u001a\f\u0010\u001c\u001a\u00020\u0001*\u00020\u001dH\u0002\u001a\u0016\u0010\u001e\u001a\u00020\u0002*\u0004\u0018\u00010\u00022\u0006\u0010\u001f\u001a\u00020\u0002H\u0002\u001a1\u0010 \u001a\u00020\u000e*\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b&\u0010'\u001a1\u0010(\u001a\u00020\u000e*\u00020!2\b\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b+\u001a.\u0010,\u001a\u00020\u000e*\u00020!2\b\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002\u001a1\u00100\u001a\u00020\u000e*\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b1\u0010'\u001a&\u00102\u001a\u00020\u000e*\u00020!2\b\u00103\u001a\u0004\u0018\u0001042\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002\u001aS\u00105\u001a\u00020\u000e*\u00020!2\u0006\u00106\u001a\u00020\u001d2\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00120\u00112&\u00107\u001a\"\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=08H\u0002ø\u0001\u0001\u001a&\u0010>\u001a\u00020\u000e*\u00020!2\b\u0010?\u001a\u0004\u0018\u00010@2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002\u001a9\u0010A\u001a\u00020\u000e*\u00020!2\u0006\u0010B\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u0010D\u001a&\u0010E\u001a\u00020\u000e*\u00020!2\b\u0010F\u001a\u0004\u0018\u00010G2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002\u001a1\u0010H\u001a\u00020\u000e*\u00020!2\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\nH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bI\u0010J\u001a9\u0010H\u001a\u00020\u000e*\u00020!2\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\n2\u0006\u0010K\u001a\u00020LH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bM\u0010N\u001a&\u0010O\u001a\u00020\u000e*\u00020!2\b\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0000\u001a&\u0010R\u001a\u00020\u000e*\u00020!2\b\u0010S\u001a\u0004\u0018\u00010T2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002\u001a$\u0010U\u001a\u00020\u000e*\u00020!2\u0006\u0010V\u001a\u00020W2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0000\u001a\"\u0010X\u001a\u00020\u000e*\u00020!2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\t\u001a\u00020\nH\u0002\u001a[\u0010Z\u001a\u00020\u000e*\u00020!2\u0006\u00106\u001a\u00020\u001d2\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00120\u00112\u0006\u0010\t\u001a\u00020\n2&\u00107\u001a\"\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=08H\u0000ø\u0001\u0001\u001a&\u0010[\u001a\u00020\u000e*\u00020!2\b\u0010\\\u001a\u0004\u0018\u00010]2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0000\u001a&\u0010^\u001a\u00020\u000e*\u00020!2\b\u0010_\u001a\u0004\u0018\u00010`2\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\nH\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006a"}, d2 = {"needsLetterSpacingSpan", "", "Landroidx/compose/ui/text/SpanStyle;", "getNeedsLetterSpacingSpan", "(Landroidx/compose/ui/text/SpanStyle;)Z", "createLetterSpacingSpan", "Landroid/text/style/MetricAffectingSpan;", "letterSpacing", "Landroidx/compose/ui/unit/TextUnit;", "density", "Landroidx/compose/ui/unit/Density;", "createLetterSpacingSpan-eAf_CNQ", "(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;", "flattenFontStylesAndApply", "", "contextFontSpanStyle", "spanStyles", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "block", "Lkotlin/Function3;", "", "resolveLineHeightInPx", "", "lineHeight", "contextFontSize", "resolveLineHeightInPx-o2QH7mI", "(JFLandroidx/compose/ui/unit/Density;)F", "hasFontAttributes", "Landroidx/compose/ui/text/TextStyle;", "merge", "spanStyle", "setBackground", "Landroid/text/Spannable;", "color", "Landroidx/compose/ui/graphics/Color;", "start", "end", "setBackground-RPmYEkk", "(Landroid/text/Spannable;JII)V", "setBaselineShift", "baselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "setBaselineShift-0ocSgnM", "setBrush", "brush", "Landroidx/compose/ui/graphics/Brush;", ViewHierarchyNode.JsonKeys.ALPHA, "setColor", "setColor-RPmYEkk", "setDrawStyle", "drawStyle", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "setFontAttributes", "contextTextStyle", "resolveTypeface", "Lkotlin/Function4;", "Landroidx/compose/ui/text/font/FontFamily;", "Landroidx/compose/ui/text/font/FontWeight;", "Landroidx/compose/ui/text/font/FontStyle;", "Landroidx/compose/ui/text/font/FontSynthesis;", "Landroid/graphics/Typeface;", "setFontFeatureSettings", "fontFeatureSettings", "", "setFontSize", "fontSize", "setFontSize-KmRG4DE", "(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V", "setGeometricTransform", "textGeometricTransform", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "setLineHeight", "setLineHeight-r9BaKPg", "(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;)V", "lineHeightStyle", "Landroidx/compose/ui/text/style/LineHeightStyle;", "setLineHeight-KmRG4DE", "(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/style/LineHeightStyle;)V", "setLocaleList", "localeList", "Landroidx/compose/ui/text/intl/LocaleList;", "setShadow", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "setSpan", "span", "", "setSpanStyle", "spanStyleRange", "setSpanStyles", "setTextDecoration", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "setTextIndent", "textIndent", "Landroidx/compose/ui/text/style/TextIndent;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SpannableExtensions_androidKt {
    public static final void setSpan(Spannable spannable, Object span, int i, int i2) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        Intrinsics.checkNotNullParameter(span, "span");
        spannable.setSpan(span, i, i2, 33);
    }

    public static final void setTextIndent(Spannable spannable, TextIndent textIndent, float f, Density density) {
        float m5064getValueimpl;
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        Intrinsics.checkNotNullParameter(density, "density");
        if (textIndent != null) {
            if ((TextUnit.m5061equalsimpl0(textIndent.getFirstLine(), TextUnitKt.getSp(0)) && TextUnit.m5061equalsimpl0(textIndent.getRestLine(), TextUnitKt.getSp(0))) || TextUnitKt.m5082isUnspecifiedR2X_6o(textIndent.getFirstLine()) || TextUnitKt.m5082isUnspecifiedR2X_6o(textIndent.getRestLine())) {
                return;
            }
            long m5063getTypeUIouoOA = TextUnit.m5063getTypeUIouoOA(textIndent.getFirstLine());
            float f2 = 0.0f;
            if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5097getSpUIouoOA())) {
                m5064getValueimpl = density.mo334toPxR2X_6o(textIndent.getFirstLine());
            } else {
                m5064getValueimpl = TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5096getEmUIouoOA()) ? TextUnit.m5064getValueimpl(textIndent.getFirstLine()) * f : 0.0f;
            }
            long m5063getTypeUIouoOA2 = TextUnit.m5063getTypeUIouoOA(textIndent.getRestLine());
            if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA2, TextUnitType.INSTANCE.m5097getSpUIouoOA())) {
                f2 = density.mo334toPxR2X_6o(textIndent.getRestLine());
            } else if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA2, TextUnitType.INSTANCE.m5096getEmUIouoOA())) {
                f2 = TextUnit.m5064getValueimpl(textIndent.getRestLine()) * f;
            }
            setSpan(spannable, new LeadingMarginSpan.Standard((int) Math.ceil(m5064getValueimpl), (int) Math.ceil(f2)), 0, spannable.length());
        }
    }

    /* renamed from: setLineHeight-KmRG4DE, reason: not valid java name */
    public static final void m4663setLineHeightKmRG4DE(Spannable setLineHeight, long j, float f, Density density, LineHeightStyle lineHeightStyle) {
        Intrinsics.checkNotNullParameter(setLineHeight, "$this$setLineHeight");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(lineHeightStyle, "lineHeightStyle");
        float m4658resolveLineHeightInPxo2QH7mI = m4658resolveLineHeightInPxo2QH7mI(j, f, density);
        if (Float.isNaN(m4658resolveLineHeightInPxo2QH7mI)) {
            return;
        }
        Spannable spannable = setLineHeight;
        setSpan(setLineHeight, new LineHeightStyleSpan(m4658resolveLineHeightInPxo2QH7mI, 0, (spannable.length() == 0 || StringsKt.last(spannable) == '\n') ? setLineHeight.length() + 1 : setLineHeight.length(), LineHeightStyle.Trim.m4762isTrimFirstLineTopimpl$ui_text_release(lineHeightStyle.getTrim()), LineHeightStyle.Trim.m4763isTrimLastLineBottomimpl$ui_text_release(lineHeightStyle.getTrim()), lineHeightStyle.getAlignment()), 0, setLineHeight.length());
    }

    /* renamed from: setLineHeight-r9BaKPg, reason: not valid java name */
    public static final void m4664setLineHeightr9BaKPg(Spannable setLineHeight, long j, float f, Density density) {
        Intrinsics.checkNotNullParameter(setLineHeight, "$this$setLineHeight");
        Intrinsics.checkNotNullParameter(density, "density");
        float m4658resolveLineHeightInPxo2QH7mI = m4658resolveLineHeightInPxo2QH7mI(j, f, density);
        if (Float.isNaN(m4658resolveLineHeightInPxo2QH7mI)) {
            return;
        }
        setSpan(setLineHeight, new LineHeightSpan(m4658resolveLineHeightInPxo2QH7mI), 0, setLineHeight.length());
    }

    /* renamed from: resolveLineHeightInPx-o2QH7mI, reason: not valid java name */
    private static final float m4658resolveLineHeightInPxo2QH7mI(long j, float f, Density density) {
        long m5063getTypeUIouoOA = TextUnit.m5063getTypeUIouoOA(j);
        if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5097getSpUIouoOA())) {
            return density.mo334toPxR2X_6o(j);
        }
        if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5096getEmUIouoOA())) {
            return TextUnit.m5064getValueimpl(j) * f;
        }
        return Float.NaN;
    }

    public static final void setSpanStyles(Spannable spannable, TextStyle contextTextStyle, List<AnnotatedString.Range<SpanStyle>> spanStyles, Density density, Function4<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> resolveTypeface) {
        MetricAffectingSpan m4657createLetterSpacingSpaneAf_CNQ;
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        Intrinsics.checkNotNullParameter(contextTextStyle, "contextTextStyle");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resolveTypeface, "resolveTypeface");
        setFontAttributes(spannable, contextTextStyle, spanStyles, resolveTypeface);
        int size = spanStyles.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range<SpanStyle> range = spanStyles.get(i);
            int start = range.getStart();
            int end = range.getEnd();
            if (start >= 0 && start < spannable.length() && end > start && end <= spannable.length()) {
                setSpanStyle(spannable, range, density);
                if (getNeedsLetterSpacingSpan(range.getItem())) {
                    z = true;
                }
            }
        }
        if (z) {
            int size2 = spanStyles.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AnnotatedString.Range<SpanStyle> range2 = spanStyles.get(i2);
                int start2 = range2.getStart();
                int end2 = range2.getEnd();
                SpanStyle item = range2.getItem();
                if (start2 >= 0 && start2 < spannable.length() && end2 > start2 && end2 <= spannable.length() && (m4657createLetterSpacingSpaneAf_CNQ = m4657createLetterSpacingSpaneAf_CNQ(item.getLetterSpacing(), density)) != null) {
                    setSpan(spannable, m4657createLetterSpacingSpaneAf_CNQ, start2, end2);
                }
            }
        }
    }

    private static final void setSpanStyle(Spannable spannable, AnnotatedString.Range<SpanStyle> range, Density density) {
        int start = range.getStart();
        int end = range.getEnd();
        SpanStyle item = range.getItem();
        m4660setBaselineShift0ocSgnM(spannable, item.getBaselineShift(), start, end);
        m4661setColorRPmYEkk(spannable, item.m4373getColor0d7_KjU(), start, end);
        setBrush(spannable, item.getBrush(), item.getAlpha(), start, end);
        setTextDecoration(spannable, item.getTextDecoration(), start, end);
        m4662setFontSizeKmRG4DE(spannable, item.getFontSize(), density, start, end);
        setFontFeatureSettings(spannable, item.getFontFeatureSettings(), start, end);
        setGeometricTransform(spannable, item.getTextGeometricTransform(), start, end);
        setLocaleList(spannable, item.getLocaleList(), start, end);
        m4659setBackgroundRPmYEkk(spannable, item.getBackground(), start, end);
        setShadow(spannable, item.getShadow(), start, end);
        setDrawStyle(spannable, item.getDrawStyle(), start, end);
    }

    public static final void flattenFontStylesAndApply(SpanStyle spanStyle, List<AnnotatedString.Range<SpanStyle>> spanStyles, Function3<? super SpanStyle, ? super Integer, ? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(block, "block");
        if (spanStyles.size() <= 1) {
            if (!spanStyles.isEmpty()) {
                block.invoke(merge(spanStyle, spanStyles.get(0).getItem()), Integer.valueOf(spanStyles.get(0).getStart()), Integer.valueOf(spanStyles.get(0).getEnd()));
                return;
            }
            return;
        }
        int size = spanStyles.size();
        int i = size * 2;
        Integer[] numArr = new Integer[i];
        for (int i2 = 0; i2 < i; i2++) {
            numArr[i2] = 0;
        }
        int size2 = spanStyles.size();
        for (int i3 = 0; i3 < size2; i3++) {
            AnnotatedString.Range<SpanStyle> range = spanStyles.get(i3);
            numArr[i3] = Integer.valueOf(range.getStart());
            numArr[i3 + size] = Integer.valueOf(range.getEnd());
        }
        ArraysKt.sort((Object[]) numArr);
        int intValue = ((Number) ArraysKt.first(numArr)).intValue();
        for (int i4 = 0; i4 < i; i4++) {
            int intValue2 = numArr[i4].intValue();
            if (intValue2 != intValue) {
                int size3 = spanStyles.size();
                SpanStyle spanStyle2 = spanStyle;
                for (int i5 = 0; i5 < size3; i5++) {
                    AnnotatedString.Range<SpanStyle> range2 = spanStyles.get(i5);
                    if (range2.getStart() != range2.getEnd() && AnnotatedStringKt.intersect(intValue, intValue2, range2.getStart(), range2.getEnd())) {
                        spanStyle2 = merge(spanStyle2, range2.getItem());
                    }
                }
                if (spanStyle2 != null) {
                    block.invoke(spanStyle2, Integer.valueOf(intValue), Integer.valueOf(intValue2));
                }
                intValue = intValue2;
            }
        }
    }

    /* renamed from: createLetterSpacingSpan-eAf_CNQ, reason: not valid java name */
    private static final MetricAffectingSpan m4657createLetterSpacingSpaneAf_CNQ(long j, Density density) {
        long m5063getTypeUIouoOA = TextUnit.m5063getTypeUIouoOA(j);
        if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5097getSpUIouoOA())) {
            return new LetterSpacingSpanPx(density.mo334toPxR2X_6o(j));
        }
        if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5096getEmUIouoOA())) {
            return new LetterSpacingSpanEm(TextUnit.m5064getValueimpl(j));
        }
        return null;
    }

    private static final boolean getNeedsLetterSpacingSpan(SpanStyle spanStyle) {
        return TextUnitType.m5092equalsimpl0(TextUnit.m5063getTypeUIouoOA(spanStyle.getLetterSpacing()), TextUnitType.INSTANCE.m5097getSpUIouoOA()) || TextUnitType.m5092equalsimpl0(TextUnit.m5063getTypeUIouoOA(spanStyle.getLetterSpacing()), TextUnitType.INSTANCE.m5096getEmUIouoOA());
    }

    private static final void setShadow(Spannable spannable, Shadow shadow, int i, int i2) {
        if (shadow != null) {
            setSpan(spannable, new ShadowSpan(ColorKt.m2693toArgb8_81llA(shadow.getColor()), Offset.m2400getXimpl(shadow.getOffset()), Offset.m2401getYimpl(shadow.getOffset()), TextPaintExtensions_androidKt.correctBlurRadius(shadow.getBlurRadius())), i, i2);
        }
    }

    private static final void setDrawStyle(Spannable spannable, DrawStyle drawStyle, int i, int i2) {
        if (drawStyle != null) {
            setSpan(spannable, new DrawStyleSpan(drawStyle), i, i2);
        }
    }

    public static final void setLocaleList(Spannable spannable, LocaleList localeList, int i, int i2) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        if (localeList != null) {
            setSpan(spannable, LocaleListHelperMethods.INSTANCE.localeSpan(localeList), i, i2);
        }
    }

    private static final void setGeometricTransform(Spannable spannable, TextGeometricTransform textGeometricTransform, int i, int i2) {
        if (textGeometricTransform != null) {
            setSpan(spannable, new ScaleXSpan(textGeometricTransform.getScaleX()), i, i2);
            setSpan(spannable, new SkewXSpan(textGeometricTransform.getSkewX()), i, i2);
        }
    }

    private static final void setFontFeatureSettings(Spannable spannable, String str, int i, int i2) {
        if (str != null) {
            setSpan(spannable, new FontFeatureSpan(str), i, i2);
        }
    }

    /* renamed from: setFontSize-KmRG4DE, reason: not valid java name */
    public static final void m4662setFontSizeKmRG4DE(Spannable setFontSize, long j, Density density, int i, int i2) {
        Intrinsics.checkNotNullParameter(setFontSize, "$this$setFontSize");
        Intrinsics.checkNotNullParameter(density, "density");
        long m5063getTypeUIouoOA = TextUnit.m5063getTypeUIouoOA(j);
        if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5097getSpUIouoOA())) {
            setSpan(setFontSize, new AbsoluteSizeSpan(MathKt.roundToInt(density.mo334toPxR2X_6o(j)), false), i, i2);
        } else if (TextUnitType.m5092equalsimpl0(m5063getTypeUIouoOA, TextUnitType.INSTANCE.m5096getEmUIouoOA())) {
            setSpan(setFontSize, new RelativeSizeSpan(TextUnit.m5064getValueimpl(j)), i, i2);
        }
    }

    public static final void setTextDecoration(Spannable spannable, TextDecoration textDecoration, int i, int i2) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        if (textDecoration != null) {
            setSpan(spannable, new TextDecorationSpan(textDecoration.contains(TextDecoration.INSTANCE.getUnderline()), textDecoration.contains(TextDecoration.INSTANCE.getLineThrough())), i, i2);
        }
    }

    /* renamed from: setBaselineShift-0ocSgnM, reason: not valid java name */
    private static final void m4660setBaselineShift0ocSgnM(Spannable spannable, BaselineShift baselineShift, int i, int i2) {
        if (baselineShift != null) {
            setSpan(spannable, new BaselineShiftSpan(baselineShift.m4676unboximpl()), i, i2);
        }
    }

    private static final void setBrush(Spannable spannable, Brush brush, float f, int i, int i2) {
        if (brush != null) {
            if (brush instanceof SolidColor) {
                m4661setColorRPmYEkk(spannable, ((SolidColor) brush).getValue(), i, i2);
            } else if (brush instanceof ShaderBrush) {
                setSpan(spannable, new ShaderBrushSpan((ShaderBrush) brush, f), i, i2);
            }
        }
    }

    private static final boolean hasFontAttributes(TextStyle textStyle) {
        return TextPaintExtensions_androidKt.hasFontAttributes(textStyle.toSpanStyle()) || textStyle.m4438getFontSynthesisZQGJjVo() != null;
    }

    private static final SpanStyle merge(SpanStyle spanStyle, SpanStyle spanStyle2) {
        return spanStyle == null ? spanStyle2 : spanStyle.merge(spanStyle2);
    }

    private static final void setFontAttributes(final Spannable spannable, TextStyle textStyle, List<AnnotatedString.Range<SpanStyle>> list, final Function4<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> function4) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range<SpanStyle> range = list.get(i);
            AnnotatedString.Range<SpanStyle> range2 = range;
            if (TextPaintExtensions_androidKt.hasFontAttributes(range2.getItem()) || range2.getItem().getFontSynthesis() != null) {
                arrayList.add(range);
            }
        }
        ArrayList arrayList2 = arrayList;
        flattenFontStylesAndApply(hasFontAttributes(textStyle) ? new SpanStyle(0L, 0L, textStyle.getFontWeight(), textStyle.m4437getFontStyle4Lr2A7w(), textStyle.m4438getFontSynthesisZQGJjVo(), textStyle.getFontFamily(), (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (DefaultConstructorMarker) null) : null, arrayList2, new Function3<SpanStyle, Integer, Integer, Unit>() { // from class: androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt$setFontAttributes$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(SpanStyle spanStyle, Integer num, Integer num2) {
                invoke(spanStyle, num.intValue(), num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(SpanStyle spanStyle, int i2, int i3) {
                Intrinsics.checkNotNullParameter(spanStyle, "spanStyle");
                Spannable spannable2 = spannable;
                Function4<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface> function42 = function4;
                FontFamily fontFamily = spanStyle.getFontFamily();
                FontWeight fontWeight = spanStyle.getFontWeight();
                if (fontWeight == null) {
                    fontWeight = FontWeight.INSTANCE.getNormal();
                }
                FontStyle fontStyle = spanStyle.getFontStyle();
                FontStyle m4507boximpl = FontStyle.m4507boximpl(fontStyle != null ? fontStyle.m4513unboximpl() : FontStyle.INSTANCE.m4515getNormal_LCdwA());
                FontSynthesis fontSynthesis = spanStyle.getFontSynthesis();
                spannable2.setSpan(new TypefaceSpan(function42.invoke(fontFamily, fontWeight, m4507boximpl, FontSynthesis.m4516boximpl(fontSynthesis != null ? fontSynthesis.getValue() : FontSynthesis.INSTANCE.m4525getAllGVVA2EU()))), i2, i3, 33);
            }
        });
    }

    /* renamed from: setBackground-RPmYEkk, reason: not valid java name */
    public static final void m4659setBackgroundRPmYEkk(Spannable setBackground, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(setBackground, "$this$setBackground");
        if (j != Color.INSTANCE.m2675getUnspecified0d7_KjU()) {
            setSpan(setBackground, new BackgroundColorSpan(ColorKt.m2693toArgb8_81llA(j)), i, i2);
        }
    }

    /* renamed from: setColor-RPmYEkk, reason: not valid java name */
    public static final void m4661setColorRPmYEkk(Spannable setColor, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(setColor, "$this$setColor");
        if (j != Color.INSTANCE.m2675getUnspecified0d7_KjU()) {
            setSpan(setColor, new ForegroundColorSpan(ColorKt.m2693toArgb8_81llA(j)), i, i2);
        }
    }
}
