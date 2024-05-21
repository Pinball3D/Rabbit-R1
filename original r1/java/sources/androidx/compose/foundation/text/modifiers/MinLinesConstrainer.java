package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: MinLinesConstrainer.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;", "", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "inputTextStyle", "Landroidx/compose/ui/text/TextStyle;", "density", "Landroidx/compose/ui/unit/Density;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V", "getDensity", "()Landroidx/compose/ui/unit/Density;", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/FontFamily$Resolver;", "getInputTextStyle", "()Landroidx/compose/ui/text/TextStyle;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "lineHeightCache", "", "oneLineHeightCache", "resolvedStyle", "coerceMinLines", "Landroidx/compose/ui/unit/Constraints;", "inConstraints", "minLines", "", "coerceMinLines-Oh53vG4$foundation_release", "(JI)J", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MinLinesConstrainer {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static MinLinesConstrainer last;
    private final Density density;
    private final FontFamily.Resolver fontFamilyResolver;
    private final TextStyle inputTextStyle;
    private final LayoutDirection layoutDirection;
    private float lineHeightCache;
    private float oneLineHeightCache;
    private final TextStyle resolvedStyle;

    public /* synthetic */ MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver, DefaultConstructorMarker defaultConstructorMarker) {
        this(layoutDirection, textStyle, density, resolver);
    }

    public final Density getDensity() {
        return this.density;
    }

    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    public final TextStyle getInputTextStyle() {
        return this.inputTextStyle;
    }

    public final LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    private MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
        this.layoutDirection = layoutDirection;
        this.inputTextStyle = textStyle;
        this.density = density;
        this.fontFamilyResolver = resolver;
        this.resolvedStyle = TextStyleKt.resolveDefaults(textStyle, layoutDirection);
        this.lineHeightCache = Float.NaN;
        this.oneLineHeightCache = Float.NaN;
    }

    /* compiled from: MinLinesConstrainer.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;", "", "()V", "last", "Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;", "from", "minMaxUtil", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "paramStyle", "Landroidx/compose/ui/text/TextStyle;", "density", "Landroidx/compose/ui/unit/Density;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MinLinesConstrainer from(MinLinesConstrainer minMaxUtil, LayoutDirection layoutDirection, TextStyle paramStyle, Density density, FontFamily.Resolver fontFamilyResolver) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(paramStyle, "paramStyle");
            Intrinsics.checkNotNullParameter(density, "density");
            Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
            if (minMaxUtil != null && layoutDirection == minMaxUtil.getLayoutDirection() && Intrinsics.areEqual(paramStyle, minMaxUtil.getInputTextStyle()) && density.getDensity() == minMaxUtil.getDensity().getDensity() && fontFamilyResolver == minMaxUtil.getFontFamilyResolver()) {
                return minMaxUtil;
            }
            MinLinesConstrainer minLinesConstrainer = MinLinesConstrainer.last;
            if (minLinesConstrainer != null && layoutDirection == minLinesConstrainer.getLayoutDirection() && Intrinsics.areEqual(paramStyle, minLinesConstrainer.getInputTextStyle()) && density.getDensity() == minLinesConstrainer.getDensity().getDensity() && fontFamilyResolver == minLinesConstrainer.getFontFamilyResolver()) {
                return minLinesConstrainer;
            }
            MinLinesConstrainer minLinesConstrainer2 = new MinLinesConstrainer(layoutDirection, TextStyleKt.resolveDefaults(paramStyle, layoutDirection), density, fontFamilyResolver, null);
            Companion companion = MinLinesConstrainer.INSTANCE;
            MinLinesConstrainer.last = minLinesConstrainer2;
            return minLinesConstrainer2;
        }
    }

    /* renamed from: coerceMinLines-Oh53vG4$foundation_release, reason: not valid java name */
    public final long m852coerceMinLinesOh53vG4$foundation_release(long inConstraints, int minLines) {
        String str;
        Paragraph m4312ParagraphUdtVg6A;
        String str2;
        Paragraph m4312ParagraphUdtVg6A2;
        int m4840getMinHeightimpl;
        float f = this.oneLineHeightCache;
        float f2 = this.lineHeightCache;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            str = MinLinesConstrainerKt.EmptyTextReplacement;
            m4312ParagraphUdtVg6A = ParagraphKt.m4312ParagraphUdtVg6A(str, this.resolvedStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), this.density, this.fontFamilyResolver, (r22 & 32) != 0 ? CollectionsKt.emptyList() : null, (r22 & 64) != 0 ? CollectionsKt.emptyList() : null, (r22 & 128) != 0 ? Integer.MAX_VALUE : 1, (r22 & 256) != 0 ? false : false);
            f = m4312ParagraphUdtVg6A.getHeight();
            str2 = MinLinesConstrainerKt.TwoLineTextReplacement;
            m4312ParagraphUdtVg6A2 = ParagraphKt.m4312ParagraphUdtVg6A(str2, this.resolvedStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), this.density, this.fontFamilyResolver, (r22 & 32) != 0 ? CollectionsKt.emptyList() : null, (r22 & 64) != 0 ? CollectionsKt.emptyList() : null, (r22 & 128) != 0 ? Integer.MAX_VALUE : 2, (r22 & 256) != 0 ? false : false);
            f2 = m4312ParagraphUdtVg6A2.getHeight() - f;
            this.oneLineHeightCache = f;
            this.lineHeightCache = f2;
        }
        if (minLines != 1) {
            m4840getMinHeightimpl = RangesKt.coerceAtMost(RangesKt.coerceAtLeast(MathKt.roundToInt(f + (f2 * (minLines - 1))), 0), Constraints.m4838getMaxHeightimpl(inConstraints));
        } else {
            m4840getMinHeightimpl = Constraints.m4840getMinHeightimpl(inConstraints);
        }
        return ConstraintsKt.Constraints(Constraints.m4841getMinWidthimpl(inConstraints), Constraints.m4839getMaxWidthimpl(inConstraints), m4840getMinHeightimpl, Constraints.m4838getMaxHeightimpl(inConstraints));
    }
}
