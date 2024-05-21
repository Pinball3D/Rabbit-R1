package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextLayoutResult.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001Bf\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017ø\u0001\u0000¢\u0006\u0002\u0010\u0018Bf\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u0016\u001a\u00020\u0017ø\u0001\u0000¢\u0006\u0002\u0010\u001bBp\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u0016\u001a\u00020\u0017ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ\u0085\u0001\u00107\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b8\u00109J\u0013\u0010:\u001a\u00020\r2\b\u0010;\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010<\u001a\u00020\u000bH\u0016J\b\u0010=\u001a\u00020>H\u0016R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u00020\u0017ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u0019\u001a\u00020\u001a¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001c\u0010\u000e\u001a\u00020\u000fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010*\u001a\u0004\b)\u0010(R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u001a\u0010\u0014\u001a\u00020\u00158FX\u0087\u0004¢\u0006\f\u0012\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b5\u00106\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006?"}, d2 = {"Landroidx/compose/ui/text/TextLayoutInput;", "", "text", "Landroidx/compose/ui/text/AnnotatedString;", "style", "Landroidx/compose/ui/text/TextStyle;", "placeholders", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "maxLines", "", "softWrap", "", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "density", "Landroidx/compose/ui/unit/Density;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "resourceLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/Font$ResourceLoader;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/Font$ResourceLoader;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V", "_developerSuppliedResourceLoader", "getConstraints-msEJaDk", "()J", "J", "getDensity", "()Landroidx/compose/ui/unit/Density;", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/FontFamily$Resolver;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "getMaxLines", "()I", "getOverflow-gIe3tQ8", "I", "getPlaceholders", "()Ljava/util/List;", "getResourceLoader$annotations", "()V", "getResourceLoader", "()Landroidx/compose/ui/text/font/Font$ResourceLoader;", "getSoftWrap", "()Z", "getStyle", "()Landroidx/compose/ui/text/TextStyle;", "getText", "()Landroidx/compose/ui/text/AnnotatedString;", "copy", "copy-hu-1Yfo", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/Font$ResourceLoader;J)Landroidx/compose/ui/text/TextLayoutInput;", "equals", "other", "hashCode", "toString", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextLayoutInput {
    public static final int $stable = 8;
    private Font.ResourceLoader _developerSuppliedResourceLoader;
    private final long constraints;
    private final Density density;
    private final FontFamily.Resolver fontFamilyResolver;
    private final LayoutDirection layoutDirection;
    private final int maxLines;
    private final int overflow;
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    private final boolean softWrap;
    private final TextStyle style;
    private final AnnotatedString text;

    @Deprecated(message = "Font.ResourceLoader is replaced with FontFamily.Resolver", replaceWith = @ReplaceWith(expression = "TextLayoutInput(text, style, placeholders, maxLines, softWrap, overflow, density, layoutDirection, fontFamilyResolver, constraints", imports = {}))
    public /* synthetic */ TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) list, i, z, i2, density, layoutDirection, resourceLoader, j);
    }

    public /* synthetic */ TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) list, i, z, i2, density, layoutDirection, resolver, j);
    }

    @Deprecated(message = "Replaced with FontFamily.Resolver", replaceWith = @ReplaceWith(expression = "fontFamilyResolver", imports = {}))
    public static /* synthetic */ void getResourceLoader$annotations() {
    }

    /* renamed from: getConstraints-msEJaDk, reason: not valid java name and from getter */
    public final long getConstraints() {
        return this.constraints;
    }

    public final Density getDensity() {
        return this.density;
    }

    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    public final LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    /* renamed from: getOverflow-gIe3tQ8, reason: not valid java name and from getter */
    public final int getOverflow() {
        return this.overflow;
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

    private TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, FontFamily.Resolver resolver, long j) {
        this.text = annotatedString;
        this.style = textStyle;
        this.placeholders = list;
        this.maxLines = i;
        this.softWrap = z;
        this.overflow = i2;
        this.density = density;
        this.layoutDirection = layoutDirection;
        this.fontFamilyResolver = resolver;
        this.constraints = j;
        this._developerSuppliedResourceLoader = resourceLoader;
    }

    public final Font.ResourceLoader getResourceLoader() {
        Font.ResourceLoader resourceLoader = this._developerSuppliedResourceLoader;
        return resourceLoader == null ? DeprecatedBridgeFontResourceLoader.INSTANCE.from(this.fontFamilyResolver) : resourceLoader;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    private TextLayoutInput(AnnotatedString text, TextStyle style, List<AnnotatedString.Range<Placeholder>> placeholders, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j) {
        this(text, style, placeholders, i, z, i2, density, layoutDirection, resourceLoader, DelegatingFontLoaderForDeprecatedUsage_androidKt.createFontFamilyResolver(resourceLoader), j);
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    private TextLayoutInput(AnnotatedString text, TextStyle style, List<AnnotatedString.Range<Placeholder>> placeholders, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, FontFamily.Resolver fontFamilyResolver, long j) {
        this(text, style, placeholders, i, z, i2, density, layoutDirection, (Font.ResourceLoader) null, fontFamilyResolver, j);
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
    }

    @Deprecated(message = "Font.ResourceLoader is deprecated", replaceWith = @ReplaceWith(expression = "TextLayoutInput(text, style, placeholders, maxLines, softWrap, overFlow, density, layoutDirection, fontFamilyResolver, constraints)", imports = {}))
    /* renamed from: copy-hu-1Yfo, reason: not valid java name */
    public final TextLayoutInput m4381copyhu1Yfo(AnnotatedString text, TextStyle style, List<AnnotatedString.Range<Placeholder>> placeholders, int maxLines, boolean softWrap, int overflow, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long constraints) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        return new TextLayoutInput(text, style, placeholders, maxLines, softWrap, overflow, density, layoutDirection, resourceLoader, this.fontFamilyResolver, constraints);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextLayoutInput)) {
            return false;
        }
        TextLayoutInput textLayoutInput = (TextLayoutInput) other;
        return Intrinsics.areEqual(this.text, textLayoutInput.text) && Intrinsics.areEqual(this.style, textLayoutInput.style) && Intrinsics.areEqual(this.placeholders, textLayoutInput.placeholders) && this.maxLines == textLayoutInput.maxLines && this.softWrap == textLayoutInput.softWrap && TextOverflow.m4817equalsimpl0(this.overflow, textLayoutInput.overflow) && Intrinsics.areEqual(this.density, textLayoutInput.density) && this.layoutDirection == textLayoutInput.layoutDirection && Intrinsics.areEqual(this.fontFamilyResolver, textLayoutInput.fontFamilyResolver) && Constraints.m4832equalsimpl0(this.constraints, textLayoutInput.constraints);
    }

    public int hashCode() {
        return (((((((((((((((((this.text.hashCode() * 31) + this.style.hashCode()) * 31) + this.placeholders.hashCode()) * 31) + this.maxLines) * 31) + Boolean.hashCode(this.softWrap)) * 31) + TextOverflow.m4818hashCodeimpl(this.overflow)) * 31) + this.density.hashCode()) * 31) + this.layoutDirection.hashCode()) * 31) + this.fontFamilyResolver.hashCode()) * 31) + Constraints.m4842hashCodeimpl(this.constraints);
    }

    public String toString() {
        return "TextLayoutInput(text=" + ((Object) this.text) + ", style=" + this.style + ", placeholders=" + this.placeholders + ", maxLines=" + this.maxLines + ", softWrap=" + this.softWrap + ", overflow=" + ((Object) TextOverflow.m4819toStringimpl(this.overflow)) + ", density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", fontFamilyResolver=" + this.fontFamilyResolver + ", constraints=" + ((Object) Constraints.m4844toStringimpl(this.constraints)) + ')';
    }
}
