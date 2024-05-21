package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.foundation.text.modifiers.MinLinesConstrainer;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsicsKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParagraphLayoutCache.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001BH\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\rø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u0016\u00108\u001a\u00020\r2\u0006\u00109\u001a\u00020\r2\u0006\u0010:\u001a\u00020\u001fJ%\u0010;\u001a\u00020/2\u0006\u0010<\u001a\u0002072\u0006\u0010:\u001a\u00020\u001fH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b=\u0010>J#\u0010?\u001a\u00020\u000b2\u0006\u0010<\u001a\u0002072\u0006\u0010:\u001a\u00020\u001fø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ\b\u0010B\u001a\u00020*H\u0002J\u000e\u0010C\u001a\u00020\r2\u0006\u0010:\u001a\u00020\u001fJ\u000e\u0010D\u001a\u00020\r2\u0006\u0010:\u001a\u00020\u001fJ%\u0010E\u001a\u00020\u000b2\u0006\u0010<\u001a\u0002072\u0006\u0010:\u001a\u00020\u001fH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bF\u0010AJ\u0010\u0010G\u001a\u0002052\u0006\u0010:\u001a\u00020\u001fH\u0002J\b\u0010H\u001a\u0004\u0018\u00010IJK\u0010J\u001a\u00020*2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bK\u0010LR\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R%\u0010 \u001a\u00020!X\u0080\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u00020*8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0019\u0010\b\u001a\u00020\tX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u00106\u001a\u000207X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010&R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006M"}, d2 = {"Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;", "", "text", "", "style", "Landroidx/compose/ui/text/TextStyle;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "softWrap", "", "maxLines", "", "minLines", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "cachedIntrinsicHeight", "cachedIntrinsicHeightInputWidth", "value", "Landroidx/compose/ui/unit/Density;", "density", "getDensity$foundation_release", "()Landroidx/compose/ui/unit/Density;", "setDensity$foundation_release", "(Landroidx/compose/ui/unit/Density;)V", "didOverflow", "getDidOverflow$foundation_release", "()Z", "setDidOverflow$foundation_release", "(Z)V", "intrinsicsLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutSize", "Landroidx/compose/ui/unit/IntSize;", "getLayoutSize-YbymL2g$foundation_release", "()J", "setLayoutSize-ozmzZPI$foundation_release", "(J)V", "J", "mMinLinesConstrainer", "Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;", "observeFontChanges", "", "getObserveFontChanges$foundation_release", "()Lkotlin/Unit;", "I", "paragraph", "Landroidx/compose/ui/text/Paragraph;", "getParagraph$foundation_release", "()Landroidx/compose/ui/text/Paragraph;", "setParagraph$foundation_release", "(Landroidx/compose/ui/text/Paragraph;)V", "paragraphIntrinsics", "Landroidx/compose/ui/text/ParagraphIntrinsics;", "prevConstraints", "Landroidx/compose/ui/unit/Constraints;", "intrinsicHeight", ViewHierarchyNode.JsonKeys.WIDTH, "layoutDirection", "layoutText", "constraints", "layoutText-K40F9xA", "(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/Paragraph;", "layoutWithConstraints", "layoutWithConstraints-K40F9xA", "(JLandroidx/compose/ui/unit/LayoutDirection;)Z", "markDirty", "maxIntrinsicWidth", "minIntrinsicWidth", "newLayoutWillBeDifferent", "newLayoutWillBeDifferent-K40F9xA", "setLayoutDirection", "slowCreateTextLayoutResultOrNull", "Landroidx/compose/ui/text/TextLayoutResult;", "update", "update-L6sJoHM", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ParagraphLayoutCache {
    private int cachedIntrinsicHeight;
    private int cachedIntrinsicHeightInputWidth;
    private Density density;
    private boolean didOverflow;
    private FontFamily.Resolver fontFamilyResolver;
    private LayoutDirection intrinsicsLayoutDirection;
    private long layoutSize;
    private MinLinesConstrainer mMinLinesConstrainer;
    private int maxLines;
    private int minLines;
    private int overflow;
    private Paragraph paragraph;
    private ParagraphIntrinsics paragraphIntrinsics;
    private long prevConstraints;
    private boolean softWrap;
    private TextStyle style;
    private String text;

    public /* synthetic */ ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, textStyle, resolver, i, z, i2, i3);
    }

    /* renamed from: getDensity$foundation_release, reason: from getter */
    public final Density getDensity() {
        return this.density;
    }

    /* renamed from: getDidOverflow$foundation_release, reason: from getter */
    public final boolean getDidOverflow() {
        return this.didOverflow;
    }

    /* renamed from: getLayoutSize-YbymL2g$foundation_release, reason: not valid java name and from getter */
    public final long getLayoutSize() {
        return this.layoutSize;
    }

    /* renamed from: getParagraph$foundation_release, reason: from getter */
    public final Paragraph getParagraph() {
        return this.paragraph;
    }

    public final void setDidOverflow$foundation_release(boolean z) {
        this.didOverflow = z;
    }

    /* renamed from: setLayoutSize-ozmzZPI$foundation_release, reason: not valid java name */
    public final void m864setLayoutSizeozmzZPI$foundation_release(long j) {
        this.layoutSize = j;
    }

    public final void setParagraph$foundation_release(Paragraph paragraph) {
        this.paragraph = paragraph;
    }

    private ParagraphLayoutCache(String text, TextStyle style, FontFamily.Resolver fontFamilyResolver, int i, boolean z, int i2, int i3) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        this.text = text;
        this.style = style;
        this.fontFamilyResolver = fontFamilyResolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.layoutSize = IntSizeKt.IntSize(0, 0);
        this.prevConstraints = Constraints.INSTANCE.m4847fixedJhjzzOo(0, 0);
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
    }

    public /* synthetic */ ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, textStyle, resolver, (i4 & 8) != 0 ? TextOverflow.INSTANCE.m4824getClipgIe3tQ8() : i, (i4 & 16) != 0 ? true : z, (i4 & 32) != 0 ? Integer.MAX_VALUE : i2, (i4 & 64) != 0 ? 1 : i3, null);
    }

    public final void setDensity$foundation_release(Density density) {
        Density density2 = this.density;
        if (density2 == null) {
            this.density = density;
            return;
        }
        if (density == null) {
            this.density = density;
            markDirty();
        } else {
            if (density2.getDensity() == density.getDensity() && density2.getFontScale() == density.getFontScale()) {
                return;
            }
            this.density = density;
            markDirty();
        }
    }

    public final Unit getObserveFontChanges$foundation_release() {
        ParagraphIntrinsics paragraphIntrinsics = this.paragraphIntrinsics;
        if (paragraphIntrinsics != null) {
            paragraphIntrinsics.getHasStaleResolvedFonts();
        }
        return Unit.INSTANCE;
    }

    /* renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m863layoutWithConstraintsK40F9xA(long constraints, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        boolean z = true;
        if (this.minLines > 1) {
            MinLinesConstrainer.Companion companion = MinLinesConstrainer.INSTANCE;
            MinLinesConstrainer minLinesConstrainer = this.mMinLinesConstrainer;
            TextStyle textStyle = this.style;
            Density density = this.density;
            Intrinsics.checkNotNull(density);
            MinLinesConstrainer from = companion.from(minLinesConstrainer, layoutDirection, textStyle, density, this.fontFamilyResolver);
            this.mMinLinesConstrainer = from;
            constraints = from.m852coerceMinLinesOh53vG4$foundation_release(constraints, this.minLines);
        }
        boolean z2 = false;
        if (!m861newLayoutWillBeDifferentK40F9xA(constraints, layoutDirection)) {
            if (!Constraints.m4832equalsimpl0(constraints, this.prevConstraints)) {
                Paragraph paragraph = this.paragraph;
                Intrinsics.checkNotNull(paragraph);
                this.layoutSize = ConstraintsKt.m4850constrain4WqzIAM(constraints, IntSizeKt.IntSize(TextDelegateKt.ceilToIntPx(paragraph.getWidth()), TextDelegateKt.ceilToIntPx(paragraph.getHeight())));
                if (TextOverflow.m4817equalsimpl0(this.overflow, TextOverflow.INSTANCE.m4826getVisiblegIe3tQ8()) || (IntSize.m5043getWidthimpl(r9) >= paragraph.getWidth() && IntSize.m5042getHeightimpl(r9) >= paragraph.getHeight())) {
                    z = false;
                }
                this.didOverflow = z;
            }
            return false;
        }
        Paragraph m860layoutTextK40F9xA = m860layoutTextK40F9xA(constraints, layoutDirection);
        this.prevConstraints = constraints;
        this.layoutSize = ConstraintsKt.m4850constrain4WqzIAM(constraints, IntSizeKt.IntSize(TextDelegateKt.ceilToIntPx(m860layoutTextK40F9xA.getWidth()), TextDelegateKt.ceilToIntPx(m860layoutTextK40F9xA.getHeight())));
        if (!TextOverflow.m4817equalsimpl0(this.overflow, TextOverflow.INSTANCE.m4826getVisiblegIe3tQ8()) && (IntSize.m5043getWidthimpl(r9) < m860layoutTextK40F9xA.getWidth() || IntSize.m5042getHeightimpl(r9) < m860layoutTextK40F9xA.getHeight())) {
            z2 = true;
        }
        this.didOverflow = z2;
        this.paragraph = m860layoutTextK40F9xA;
        return true;
    }

    public final int intrinsicHeight(int width, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        int i = this.cachedIntrinsicHeightInputWidth;
        int i2 = this.cachedIntrinsicHeight;
        if (width == i && i != -1) {
            return i2;
        }
        int ceilToIntPx = TextDelegateKt.ceilToIntPx(m860layoutTextK40F9xA(ConstraintsKt.Constraints(0, width, 0, Integer.MAX_VALUE), layoutDirection).getHeight());
        this.cachedIntrinsicHeightInputWidth = width;
        this.cachedIntrinsicHeight = ceilToIntPx;
        return ceilToIntPx;
    }

    /* renamed from: update-L6sJoHM, reason: not valid java name */
    public final void m865updateL6sJoHM(String text, TextStyle style, FontFamily.Resolver fontFamilyResolver, int overflow, boolean softWrap, int maxLines, int minLines) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        this.text = text;
        this.style = style;
        this.fontFamilyResolver = fontFamilyResolver;
        this.overflow = overflow;
        this.softWrap = softWrap;
        this.maxLines = maxLines;
        this.minLines = minLines;
        markDirty();
    }

    private final ParagraphIntrinsics setLayoutDirection(LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics = this.paragraphIntrinsics;
        if (paragraphIntrinsics == null || layoutDirection != this.intrinsicsLayoutDirection || paragraphIntrinsics.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            String str = this.text;
            TextStyle resolveDefaults = TextStyleKt.resolveDefaults(this.style, layoutDirection);
            Density density = this.density;
            Intrinsics.checkNotNull(density);
            paragraphIntrinsics = ParagraphIntrinsicsKt.ParagraphIntrinsics$default(str, resolveDefaults, (List) null, (List) null, density, this.fontFamilyResolver, 12, (Object) null);
        }
        this.paragraphIntrinsics = paragraphIntrinsics;
        return paragraphIntrinsics;
    }

    /* renamed from: layoutText-K40F9xA, reason: not valid java name */
    private final Paragraph m860layoutTextK40F9xA(long constraints, LayoutDirection layoutDirection) {
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        return ParagraphKt.m4314Paragraph_EkL_Y(layoutDirection2, LayoutUtilsKt.m849finalConstraintstfFHcEY(constraints, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth()), LayoutUtilsKt.m850finalMaxLinesxdlQI24(this.softWrap, this.overflow, this.maxLines), TextOverflow.m4817equalsimpl0(this.overflow, TextOverflow.INSTANCE.m4825getEllipsisgIe3tQ8()));
    }

    /* renamed from: newLayoutWillBeDifferent-K40F9xA, reason: not valid java name */
    private final boolean m861newLayoutWillBeDifferentK40F9xA(long constraints, LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics;
        Paragraph paragraph = this.paragraph;
        if (paragraph == null || (paragraphIntrinsics = this.paragraphIntrinsics) == null || paragraphIntrinsics.getHasStaleResolvedFonts() || layoutDirection != this.intrinsicsLayoutDirection) {
            return true;
        }
        if (Constraints.m4832equalsimpl0(constraints, this.prevConstraints)) {
            return false;
        }
        return Constraints.m4839getMaxWidthimpl(constraints) != Constraints.m4839getMaxWidthimpl(this.prevConstraints) || ((float) Constraints.m4838getMaxHeightimpl(constraints)) < paragraph.getHeight() || paragraph.getDidExceedMaxLines();
    }

    private final void markDirty() {
        this.paragraph = null;
        this.paragraphIntrinsics = null;
        this.intrinsicsLayoutDirection = null;
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
        this.prevConstraints = Constraints.INSTANCE.m4847fixedJhjzzOo(0, 0);
        this.layoutSize = IntSizeKt.IntSize(0, 0);
        this.didOverflow = false;
    }

    public final TextLayoutResult slowCreateTextLayoutResultOrNull() {
        Density density;
        LayoutDirection layoutDirection = this.intrinsicsLayoutDirection;
        if (layoutDirection == null || (density = this.density) == null) {
            return null;
        }
        AnnotatedString annotatedString = new AnnotatedString(this.text, null, null, 6, null);
        if (this.paragraph == null || this.paragraphIntrinsics == null) {
            return null;
        }
        long m4830copyZbe2FdA$default = Constraints.m4830copyZbe2FdA$default(this.prevConstraints, 0, 0, 0, 0, 10, null);
        return new TextLayoutResult(new TextLayoutInput(annotatedString, this.style, CollectionsKt.emptyList(), this.maxLines, this.softWrap, this.overflow, density, layoutDirection, this.fontFamilyResolver, m4830copyZbe2FdA$default, (DefaultConstructorMarker) null), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString, this.style, (List<AnnotatedString.Range<Placeholder>>) CollectionsKt.emptyList(), density, this.fontFamilyResolver), m4830copyZbe2FdA$default, this.maxLines, TextOverflow.m4817equalsimpl0(this.overflow, TextOverflow.INSTANCE.m4825getEllipsisgIe3tQ8()), null), this.layoutSize, null);
    }

    public final int minIntrinsicWidth(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return TextDelegateKt.ceilToIntPx(setLayoutDirection(layoutDirection).getMinIntrinsicWidth());
    }

    public final int maxIntrinsicWidth(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return TextDelegateKt.ceilToIntPx(setLayoutDirection(layoutDirection).getMaxIntrinsicWidth());
    }
}
