package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.font.FontVariation;
import kotlin.Metadata;

/* compiled from: PlatformTypefaces.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J%\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\b\u0010\tJ-\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000eJ?\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u001aÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/font/PlatformTypefaces;", "", "createDefault", "Landroid/graphics/Typeface;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "createDefault-FO1MlWM", "(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;", "createNamed", "name", "Landroidx/compose/ui/text/font/GenericFontFamily;", "createNamed-RetOiIg", "(Landroidx/compose/ui/text/font/GenericFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;", "optionalOnDeviceFontFamilyByName", "familyName", "", "weight", "style", "variationSettings", "Landroidx/compose/ui/text/font/FontVariation$Settings;", "context", "Landroid/content/Context;", "optionalOnDeviceFontFamilyByName-78DK7lM", "(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Landroid/content/Context;)Landroid/graphics/Typeface;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface PlatformTypefaces {
    /* renamed from: createDefault-FO1MlWM, reason: not valid java name */
    android.graphics.Typeface mo4535createDefaultFO1MlWM(FontWeight fontWeight, int fontStyle);

    /* renamed from: createNamed-RetOiIg, reason: not valid java name */
    android.graphics.Typeface mo4536createNamedRetOiIg(GenericFontFamily name, FontWeight fontWeight, int fontStyle);

    /* renamed from: optionalOnDeviceFontFamilyByName-78DK7lM, reason: not valid java name */
    android.graphics.Typeface mo4537optionalOnDeviceFontFamilyByName78DK7lM(String familyName, FontWeight weight, int style, FontVariation.Settings variationSettings, Context context);
}
