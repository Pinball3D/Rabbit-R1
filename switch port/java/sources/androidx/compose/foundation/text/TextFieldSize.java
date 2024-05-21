package androidx.compose.foundation.text;

import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextFieldSize.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0001¢\u0006\u0002\u0010\u000bJ\u0018\u0010&\u001a\u00020\u0019H\u0002ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b'\u0010\u001cJ.\u0010(\u001a\u00020)2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R)\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019@BX\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\n\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006*"}, d2 = {"Landroidx/compose/foundation/text/TextFieldSize;", "", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "density", "Landroidx/compose/ui/unit/Density;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "resolvedStyle", "Landroidx/compose/ui/text/TextStyle;", "typeface", "(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/TextStyle;Ljava/lang/Object;)V", "getDensity", "()Landroidx/compose/ui/unit/Density;", "setDensity", "(Landroidx/compose/ui/unit/Density;)V", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/FontFamily$Resolver;", "setFontFamilyResolver", "(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "<set-?>", "Landroidx/compose/ui/unit/IntSize;", "minSize", "getMinSize-YbymL2g", "()J", "J", "getResolvedStyle", "()Landroidx/compose/ui/text/TextStyle;", "setResolvedStyle", "(Landroidx/compose/ui/text/TextStyle;)V", "getTypeface", "()Ljava/lang/Object;", "setTypeface", "(Ljava/lang/Object;)V", "computeMinSize", "computeMinSize-YbymL2g", "update", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class TextFieldSize {
    private Density density;
    private FontFamily.Resolver fontFamilyResolver;
    private LayoutDirection layoutDirection;
    private long minSize;
    private TextStyle resolvedStyle;
    private Object typeface;

    public final Density getDensity() {
        return this.density;
    }

    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    public final LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    /* renamed from: getMinSize-YbymL2g, reason: not valid java name and from getter */
    public final long getMinSize() {
        return this.minSize;
    }

    public final TextStyle getResolvedStyle() {
        return this.resolvedStyle;
    }

    public final Object getTypeface() {
        return this.typeface;
    }

    public final void setDensity(Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.density = density;
    }

    public final void setFontFamilyResolver(FontFamily.Resolver resolver) {
        Intrinsics.checkNotNullParameter(resolver, "<set-?>");
        this.fontFamilyResolver = resolver;
    }

    public final void setLayoutDirection(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.layoutDirection = layoutDirection;
    }

    public final void setResolvedStyle(TextStyle textStyle) {
        Intrinsics.checkNotNullParameter(textStyle, "<set-?>");
        this.resolvedStyle = textStyle;
    }

    public final void setTypeface(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<set-?>");
        this.typeface = obj;
    }

    public TextFieldSize(LayoutDirection layoutDirection, Density density, FontFamily.Resolver fontFamilyResolver, TextStyle resolvedStyle, Object typeface) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(resolvedStyle, "resolvedStyle");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        this.layoutDirection = layoutDirection;
        this.density = density;
        this.fontFamilyResolver = fontFamilyResolver;
        this.resolvedStyle = resolvedStyle;
        this.typeface = typeface;
        this.minSize = m834computeMinSizeYbymL2g();
    }

    public final void update(LayoutDirection layoutDirection, Density density, FontFamily.Resolver fontFamilyResolver, TextStyle resolvedStyle, Object typeface) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(resolvedStyle, "resolvedStyle");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        if (layoutDirection == this.layoutDirection && Intrinsics.areEqual(density, this.density) && Intrinsics.areEqual(fontFamilyResolver, this.fontFamilyResolver) && Intrinsics.areEqual(resolvedStyle, this.resolvedStyle) && Intrinsics.areEqual(typeface, this.typeface)) {
            return;
        }
        this.layoutDirection = layoutDirection;
        this.density = density;
        this.fontFamilyResolver = fontFamilyResolver;
        this.resolvedStyle = resolvedStyle;
        this.typeface = typeface;
        this.minSize = m834computeMinSizeYbymL2g();
    }

    /* renamed from: computeMinSize-YbymL2g, reason: not valid java name */
    private final long m834computeMinSizeYbymL2g() {
        return TextFieldDelegateKt.computeSizeForDefaultText$default(this.resolvedStyle, this.density, this.fontFamilyResolver, null, 0, 24, null);
    }
}
