package androidx.compose.ui.text;

import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextIndentKt;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParagraphStyle.kt */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007\u001a&\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001aq\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\u0018\u0010\"\u001a\u0004\u0018\u00010\n*\u00020\u00042\b\u0010#\u001a\u0004\u0018\u00010\nH\u0002\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006$"}, d2 = {"DefaultLineHeight", "Landroidx/compose/ui/unit/TextUnit;", "J", "lerp", "Landroidx/compose/ui/text/ParagraphStyle;", "start", "stop", "fraction", "", "lerpPlatformStyle", "Landroidx/compose/ui/text/PlatformParagraphStyle;", "resolveParagraphStyleDefaults", "style", "direction", "Landroidx/compose/ui/unit/LayoutDirection;", "fastMerge", "textAlign", "Landroidx/compose/ui/text/style/TextAlign;", "textDirection", "Landroidx/compose/ui/text/style/TextDirection;", "lineHeight", "textIndent", "Landroidx/compose/ui/text/style/TextIndent;", "platformStyle", "lineHeightStyle", "Landroidx/compose/ui/text/style/LineHeightStyle;", "lineBreak", "Landroidx/compose/ui/text/style/LineBreak;", "hyphens", "Landroidx/compose/ui/text/style/Hyphens;", "textMotion", "Landroidx/compose/ui/text/style/TextMotion;", "fastMerge-HtYhynw", "(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;Landroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;", "mergePlatformStyle", "other", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ParagraphStyleKt {
    private static final long DefaultLineHeight = TextUnit.INSTANCE.m5075getUnspecifiedXSAIIZE();

    public static final ParagraphStyle lerp(ParagraphStyle start, ParagraphStyle stop, float f) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        TextAlign textAlign = (TextAlign) SpanStyleKt.lerpDiscrete(start.getTextAlign(), stop.getTextAlign(), f);
        TextDirection textDirection = (TextDirection) SpanStyleKt.lerpDiscrete(start.getTextDirection(), stop.getTextDirection(), f);
        long m4379lerpTextUnitInheritableC3pnCVY = SpanStyleKt.m4379lerpTextUnitInheritableC3pnCVY(start.getLineHeight(), stop.getLineHeight(), f);
        TextIndent textIndent = start.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.INSTANCE.getNone();
        }
        TextIndent textIndent2 = stop.getTextIndent();
        if (textIndent2 == null) {
            textIndent2 = TextIndent.INSTANCE.getNone();
        }
        return new ParagraphStyle(textAlign, textDirection, m4379lerpTextUnitInheritableC3pnCVY, TextIndentKt.lerp(textIndent, textIndent2, f), lerpPlatformStyle(start.getPlatformStyle(), stop.getPlatformStyle(), f), (LineHeightStyle) SpanStyleKt.lerpDiscrete(start.getLineHeightStyle(), stop.getLineHeightStyle(), f), (LineBreak) SpanStyleKt.lerpDiscrete(start.getLineBreak(), stop.getLineBreak(), f), (Hyphens) SpanStyleKt.lerpDiscrete(start.getHyphens(), stop.getHyphens(), f), (TextMotion) SpanStyleKt.lerpDiscrete(start.getTextMotion(), stop.getTextMotion(), f), (DefaultConstructorMarker) null);
    }

    private static final PlatformParagraphStyle lerpPlatformStyle(PlatformParagraphStyle platformParagraphStyle, PlatformParagraphStyle platformParagraphStyle2, float f) {
        if (platformParagraphStyle == null && platformParagraphStyle2 == null) {
            return null;
        }
        if (platformParagraphStyle == null) {
            platformParagraphStyle = PlatformParagraphStyle.INSTANCE.getDefault();
        }
        if (platformParagraphStyle2 == null) {
            platformParagraphStyle2 = PlatformParagraphStyle.INSTANCE.getDefault();
        }
        return AndroidTextStyle_androidKt.lerp(platformParagraphStyle, platformParagraphStyle2, f);
    }

    public static final ParagraphStyle resolveParagraphStyleDefaults(ParagraphStyle style, LayoutDirection direction) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(direction, "direction");
        TextAlign m4770boximpl = TextAlign.m4770boximpl(style.getTextAlignOrDefault());
        TextDirection m4783boximpl = TextDirection.m4783boximpl(TextStyleKt.m4446resolveTextDirectionYj3eThk(direction, style.getTextDirection()));
        long lineHeight = TextUnitKt.m5082isUnspecifiedR2X_6o(style.getLineHeight()) ? DefaultLineHeight : style.getLineHeight();
        TextIndent textIndent = style.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.INSTANCE.getNone();
        }
        TextIndent textIndent2 = textIndent;
        PlatformParagraphStyle platformStyle = style.getPlatformStyle();
        LineHeightStyle lineHeightStyle = style.getLineHeightStyle();
        LineBreak m4698boximpl = LineBreak.m4698boximpl(style.getLineBreakOrDefault());
        Hyphens m4689boximpl = Hyphens.m4689boximpl(style.getHyphensOrDefault());
        TextMotion textMotion = style.getTextMotion();
        if (textMotion == null) {
            textMotion = TextMotion.INSTANCE.getStatic();
        }
        return new ParagraphStyle(m4770boximpl, m4783boximpl, lineHeight, textIndent2, platformStyle, lineHeightStyle, m4698boximpl, m4689boximpl, textMotion, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x003a, code lost:
    
        if (androidx.compose.ui.unit.TextUnit.m5061equalsimpl0(r11, r23.getLineHeight()) != false) goto L14;
     */
    /* renamed from: fastMerge-HtYhynw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.ParagraphStyle m4332fastMergeHtYhynw(androidx.compose.ui.text.ParagraphStyle r23, androidx.compose.ui.text.style.TextAlign r24, androidx.compose.ui.text.style.TextDirection r25, long r26, androidx.compose.ui.text.style.TextIndent r28, androidx.compose.ui.text.PlatformParagraphStyle r29, androidx.compose.ui.text.style.LineHeightStyle r30, androidx.compose.ui.text.style.LineBreak r31, androidx.compose.ui.text.style.Hyphens r32, androidx.compose.ui.text.style.TextMotion r33) {
        /*
            r0 = r23
            r1 = r24
            r2 = r25
            r3 = r28
            r4 = r29
            r5 = r30
            r6 = r31
            r7 = r32
            r8 = r33
            java.lang.String r9 = "$this$fastMerge"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r9)
            if (r1 == 0) goto L28
            androidx.compose.ui.text.style.TextAlign r9 = r23.getTextAlign()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r9)
            if (r9 == 0) goto L24
            goto L28
        L24:
            r11 = r26
            goto L93
        L28:
            boolean r9 = androidx.compose.ui.unit.TextUnitKt.m5082isUnspecifiedR2X_6o(r26)
            r9 = r9 ^ 1
            if (r9 == 0) goto L3d
            long r9 = r23.getLineHeight()
            r11 = r26
            boolean r9 = androidx.compose.ui.unit.TextUnit.m5061equalsimpl0(r11, r9)
            if (r9 == 0) goto L93
            goto L3f
        L3d:
            r11 = r26
        L3f:
            if (r3 == 0) goto L4b
            androidx.compose.ui.text.style.TextIndent r9 = r23.getTextIndent()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r9)
            if (r9 == 0) goto L93
        L4b:
            if (r2 == 0) goto L57
            androidx.compose.ui.text.style.TextDirection r9 = r23.getTextDirection()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r9)
            if (r9 == 0) goto L93
        L57:
            if (r4 == 0) goto L63
            androidx.compose.ui.text.PlatformParagraphStyle r9 = r23.getPlatformStyle()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r9)
            if (r9 == 0) goto L93
        L63:
            if (r5 == 0) goto L6f
            androidx.compose.ui.text.style.LineHeightStyle r9 = r23.getLineHeightStyle()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r9)
            if (r9 == 0) goto L93
        L6f:
            if (r6 == 0) goto L7b
            androidx.compose.ui.text.style.LineBreak r9 = r23.getLineBreak()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r9)
            if (r9 == 0) goto L93
        L7b:
            if (r7 == 0) goto L87
            androidx.compose.ui.text.style.Hyphens r9 = r23.getHyphens()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r9)
            if (r9 == 0) goto L93
        L87:
            if (r8 == 0) goto Lf0
            androidx.compose.ui.text.style.TextMotion r9 = r23.getTextMotion()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r9)
            if (r9 != 0) goto Lf0
        L93:
            boolean r9 = androidx.compose.ui.unit.TextUnitKt.m5082isUnspecifiedR2X_6o(r26)
            if (r9 == 0) goto L9f
            long r9 = r23.getLineHeight()
            r14 = r9
            goto La0
        L9f:
            r14 = r11
        La0:
            if (r3 != 0) goto La6
            androidx.compose.ui.text.style.TextIndent r3 = r23.getTextIndent()
        La6:
            r16 = r3
            if (r1 != 0) goto Lae
            androidx.compose.ui.text.style.TextAlign r1 = r23.getTextAlign()
        Lae:
            r12 = r1
            if (r2 != 0) goto Lb7
            androidx.compose.ui.text.style.TextDirection r1 = r23.getTextDirection()
            r13 = r1
            goto Lb8
        Lb7:
            r13 = r2
        Lb8:
            androidx.compose.ui.text.PlatformParagraphStyle r17 = mergePlatformStyle(r0, r4)
            if (r5 != 0) goto Lc5
            androidx.compose.ui.text.style.LineHeightStyle r1 = r23.getLineHeightStyle()
            r18 = r1
            goto Lc7
        Lc5:
            r18 = r5
        Lc7:
            if (r6 != 0) goto Ld0
            androidx.compose.ui.text.style.LineBreak r1 = r23.getLineBreak()
            r19 = r1
            goto Ld2
        Ld0:
            r19 = r6
        Ld2:
            if (r7 != 0) goto Ldb
            androidx.compose.ui.text.style.Hyphens r1 = r23.getHyphens()
            r20 = r1
            goto Ldd
        Ldb:
            r20 = r7
        Ldd:
            if (r8 != 0) goto Le6
            androidx.compose.ui.text.style.TextMotion r0 = r23.getTextMotion()
            r21 = r0
            goto Le8
        Le6:
            r21 = r8
        Le8:
            androidx.compose.ui.text.ParagraphStyle r0 = new androidx.compose.ui.text.ParagraphStyle
            r22 = 0
            r11 = r0
            r11.<init>(r12, r13, r14, r16, r17, r18, r19, r20, r21, r22)
        Lf0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.ParagraphStyleKt.m4332fastMergeHtYhynw(androidx.compose.ui.text.ParagraphStyle, androidx.compose.ui.text.style.TextAlign, androidx.compose.ui.text.style.TextDirection, long, androidx.compose.ui.text.style.TextIndent, androidx.compose.ui.text.PlatformParagraphStyle, androidx.compose.ui.text.style.LineHeightStyle, androidx.compose.ui.text.style.LineBreak, androidx.compose.ui.text.style.Hyphens, androidx.compose.ui.text.style.TextMotion):androidx.compose.ui.text.ParagraphStyle");
    }

    private static final PlatformParagraphStyle mergePlatformStyle(ParagraphStyle paragraphStyle, PlatformParagraphStyle platformParagraphStyle) {
        if (paragraphStyle.getPlatformStyle() == null) {
            return platformParagraphStyle;
        }
        if (platformParagraphStyle == null) {
            return paragraphStyle.getPlatformStyle();
        }
        return paragraphStyle.getPlatformStyle().merge(platformParagraphStyle);
    }
}
