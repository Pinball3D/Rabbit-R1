package androidx.compose.foundation.text;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextPainter;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: TextDelegate.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 G2\u00020\u0001:\u0001GBf\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0012ø\u0001\u0000¢\u0006\u0002\u0010\u0015J/\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u001b2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010:ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010@J\u000e\u0010A\u001a\u00020B2\u0006\u0010=\u001a\u00020\u001bJ%\u0010C\u001a\u00020D2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u001bH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bE\u0010FR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\"R\u0011\u0010$\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b%\u0010\"R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\"R\u0014\u0010'\u001a\u00020(8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u001c\u0010\u000b\u001a\u00020\fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010,\u001a\u0004\b+\u0010\"R\u001c\u0010-\u001a\u0004\u0018\u00010(X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010*\"\u0004\b/\u00100R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u00108\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006H"}, d2 = {"Landroidx/compose/foundation/text/TextDelegate;", "", "text", "Landroidx/compose/ui/text/AnnotatedString;", "style", "Landroidx/compose/ui/text/TextStyle;", "maxLines", "", "minLines", "softWrap", "", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "density", "Landroidx/compose/ui/unit/Density;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "placeholders", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getDensity", "()Landroidx/compose/ui/unit/Density;", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/FontFamily$Resolver;", "intrinsicsLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getIntrinsicsLayoutDirection$foundation_release", "()Landroidx/compose/ui/unit/LayoutDirection;", "setIntrinsicsLayoutDirection$foundation_release", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "maxIntrinsicWidth", "getMaxIntrinsicWidth", "()I", "getMaxLines", "minIntrinsicWidth", "getMinIntrinsicWidth", "getMinLines", "nonNullIntrinsics", "Landroidx/compose/ui/text/MultiParagraphIntrinsics;", "getNonNullIntrinsics", "()Landroidx/compose/ui/text/MultiParagraphIntrinsics;", "getOverflow-gIe3tQ8", "I", "paragraphIntrinsics", "getParagraphIntrinsics$foundation_release", "setParagraphIntrinsics$foundation_release", "(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V", "getPlaceholders", "()Ljava/util/List;", "getSoftWrap", "()Z", "getStyle", "()Landroidx/compose/ui/text/TextStyle;", "getText", "()Landroidx/compose/ui/text/AnnotatedString;", "layout", "Landroidx/compose/ui/text/TextLayoutResult;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "layoutDirection", "prevResult", "layout-NN6Ew-U", "(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;", "layoutIntrinsics", "", "layoutText", "Landroidx/compose/ui/text/MultiParagraph;", "layoutText-K40F9xA", "(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextDelegate {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Density density;
    private final FontFamily.Resolver fontFamilyResolver;
    private LayoutDirection intrinsicsLayoutDirection;
    private final int maxLines;
    private final int minLines;
    private final int overflow;
    private MultiParagraphIntrinsics paragraphIntrinsics;
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    private final boolean softWrap;
    private final TextStyle style;
    private final AnnotatedString text;

    public /* synthetic */ TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, int i, int i2, boolean z, int i3, Density density, FontFamily.Resolver resolver, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, i, i2, z, i3, density, resolver, list);
    }

    public final Density getDensity() {
        return this.density;
    }

    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    /* renamed from: getIntrinsicsLayoutDirection$foundation_release, reason: from getter */
    public final LayoutDirection getIntrinsicsLayoutDirection() {
        return this.intrinsicsLayoutDirection;
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    public final int getMinLines() {
        return this.minLines;
    }

    /* renamed from: getOverflow-gIe3tQ8, reason: not valid java name and from getter */
    public final int getOverflow() {
        return this.overflow;
    }

    /* renamed from: getParagraphIntrinsics$foundation_release, reason: from getter */
    public final MultiParagraphIntrinsics getParagraphIntrinsics() {
        return this.paragraphIntrinsics;
    }

    public final List<AnnotatedString.Range<Placeholder>> getPlaceholders() {
        return this.placeholders;
    }

    public final boolean getSoftWrap() {
        return this.softWrap;
    }

    public final TextStyle getStyle() {
        return this.style;
    }

    public final AnnotatedString getText() {
        return this.text;
    }

    public final void setIntrinsicsLayoutDirection$foundation_release(LayoutDirection layoutDirection) {
        this.intrinsicsLayoutDirection = layoutDirection;
    }

    public final void setParagraphIntrinsics$foundation_release(MultiParagraphIntrinsics multiParagraphIntrinsics) {
        this.paragraphIntrinsics = multiParagraphIntrinsics;
    }

    private TextDelegate(AnnotatedString text, TextStyle style, int i, int i2, boolean z, int i3, Density density, FontFamily.Resolver fontFamilyResolver, List<AnnotatedString.Range<Placeholder>> placeholders) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        this.text = text;
        this.style = style;
        this.maxLines = i;
        this.minLines = i2;
        this.softWrap = z;
        this.overflow = i3;
        this.density = density;
        this.fontFamilyResolver = fontFamilyResolver;
        this.placeholders = placeholders;
        if (i <= 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (i2 <= 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (i2 > i) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public /* synthetic */ TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, int i, int i2, boolean z, int i3, Density density, FontFamily.Resolver resolver, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, (i4 & 4) != 0 ? Integer.MAX_VALUE : i, (i4 & 8) != 0 ? 1 : i2, (i4 & 16) != 0 ? true : z, (i4 & 32) != 0 ? TextOverflow.INSTANCE.m4824getClipgIe3tQ8() : i3, density, resolver, (i4 & 256) != 0 ? CollectionsKt.emptyList() : list, null);
    }

    private final MultiParagraphIntrinsics getNonNullIntrinsics() {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.paragraphIntrinsics;
        if (multiParagraphIntrinsics != null) {
            return multiParagraphIntrinsics;
        }
        throw new IllegalStateException("layoutIntrinsics must be called first");
    }

    public final int getMinIntrinsicWidth() {
        return TextDelegateKt.ceilToIntPx(getNonNullIntrinsics().getMinIntrinsicWidth());
    }

    public final int getMaxIntrinsicWidth() {
        return TextDelegateKt.ceilToIntPx(getNonNullIntrinsics().getMaxIntrinsicWidth());
    }

    public final void layoutIntrinsics(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.paragraphIntrinsics;
        if (multiParagraphIntrinsics == null || layoutDirection != this.intrinsicsLayoutDirection || multiParagraphIntrinsics.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(this.text, TextStyleKt.resolveDefaults(this.style, layoutDirection), this.placeholders, this.density, this.fontFamilyResolver);
        }
        this.paragraphIntrinsics = multiParagraphIntrinsics;
    }

    /* renamed from: layoutText-K40F9xA, reason: not valid java name */
    private final MultiParagraph m806layoutTextK40F9xA(long constraints, LayoutDirection layoutDirection) {
        layoutIntrinsics(layoutDirection);
        int m4841getMinWidthimpl = Constraints.m4841getMinWidthimpl(constraints);
        int m4839getMaxWidthimpl = ((this.softWrap || TextOverflow.m4817equalsimpl0(this.overflow, TextOverflow.INSTANCE.m4825getEllipsisgIe3tQ8())) && Constraints.m4835getHasBoundedWidthimpl(constraints)) ? Constraints.m4839getMaxWidthimpl(constraints) : Integer.MAX_VALUE;
        int i = (this.softWrap || !TextOverflow.m4817equalsimpl0(this.overflow, TextOverflow.INSTANCE.m4825getEllipsisgIe3tQ8())) ? this.maxLines : 1;
        if (m4841getMinWidthimpl != m4839getMaxWidthimpl) {
            m4839getMaxWidthimpl = RangesKt.coerceIn(getMaxIntrinsicWidth(), m4841getMinWidthimpl, m4839getMaxWidthimpl);
        }
        return new MultiParagraph(getNonNullIntrinsics(), ConstraintsKt.Constraints$default(0, m4839getMaxWidthimpl, 0, Constraints.m4838getMaxHeightimpl(constraints), 5, null), i, TextOverflow.m4817equalsimpl0(this.overflow, TextOverflow.INSTANCE.m4825getEllipsisgIe3tQ8()), null);
    }

    /* renamed from: layout-NN6Ew-U$default, reason: not valid java name */
    public static /* synthetic */ TextLayoutResult m805layoutNN6EwU$default(TextDelegate textDelegate, long j, LayoutDirection layoutDirection, TextLayoutResult textLayoutResult, int i, Object obj) {
        if ((i & 4) != 0) {
            textLayoutResult = null;
        }
        return textDelegate.m808layoutNN6EwU(j, layoutDirection, textLayoutResult);
    }

    /* renamed from: layout-NN6Ew-U, reason: not valid java name */
    public final TextLayoutResult m808layoutNN6EwU(long constraints, LayoutDirection layoutDirection, TextLayoutResult prevResult) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (prevResult != null && TextLayoutHelperKt.m841canReuse7_7YC6M(prevResult, this.text, this.style, this.placeholders, this.maxLines, this.softWrap, this.overflow, this.density, layoutDirection, this.fontFamilyResolver, constraints)) {
            return prevResult.m4385copyO0kMr_c(new TextLayoutInput(prevResult.getLayoutInput().getText(), this.style, prevResult.getLayoutInput().getPlaceholders(), prevResult.getLayoutInput().getMaxLines(), prevResult.getLayoutInput().getSoftWrap(), prevResult.getLayoutInput().getOverflow(), prevResult.getLayoutInput().getDensity(), prevResult.getLayoutInput().getLayoutDirection(), prevResult.getLayoutInput().getFontFamilyResolver(), constraints, (DefaultConstructorMarker) null), ConstraintsKt.m4850constrain4WqzIAM(constraints, IntSizeKt.IntSize(TextDelegateKt.ceilToIntPx(prevResult.getMultiParagraph().getWidth()), TextDelegateKt.ceilToIntPx(prevResult.getMultiParagraph().getHeight()))));
        }
        MultiParagraph m806layoutTextK40F9xA = m806layoutTextK40F9xA(constraints, layoutDirection);
        return new TextLayoutResult(new TextLayoutInput(this.text, this.style, this.placeholders, this.maxLines, this.softWrap, this.overflow, this.density, layoutDirection, this.fontFamilyResolver, constraints, (DefaultConstructorMarker) null), m806layoutTextK40F9xA, ConstraintsKt.m4850constrain4WqzIAM(constraints, IntSizeKt.IntSize(TextDelegateKt.ceilToIntPx(m806layoutTextK40F9xA.getWidth()), TextDelegateKt.ceilToIntPx(m806layoutTextK40F9xA.getHeight()))), null);
    }

    /* compiled from: TextDelegate.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/text/TextDelegate$Companion;", "", "()V", "paint", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void paint(Canvas canvas, TextLayoutResult textLayoutResult) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
            TextPainter.INSTANCE.paint(canvas, textLayoutResult);
        }
    }
}
