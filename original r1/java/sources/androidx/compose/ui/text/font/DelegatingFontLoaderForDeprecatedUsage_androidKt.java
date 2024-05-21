package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DelegatingFontLoaderForDeprecatedUsage.android.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, d2 = {"createFontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontResourceLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "context", "Landroid/content/Context;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DelegatingFontLoaderForDeprecatedUsage_androidKt {
    @Deprecated(message = "This exists to bridge existing Font.ResourceLoader subclasses to be used as aFontFamily.ResourceLoader during upgrade.", replaceWith = @ReplaceWith(expression = "createFontFamilyResolver()", imports = {}))
    public static final FontFamily.Resolver createFontFamilyResolver(Font.ResourceLoader fontResourceLoader, Context context) {
        Intrinsics.checkNotNullParameter(fontResourceLoader, "fontResourceLoader");
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        return new FontFamilyResolverImpl(new DelegatingFontLoaderForBridgeUsage(fontResourceLoader, applicationContext), null, null, null, null, 30, null);
    }

    @Deprecated(message = "This exists to bridge existing Font.ResourceLoader APIs, and should be removed with them", replaceWith = @ReplaceWith(expression = "createFontFamilyResolver()", imports = {}))
    public static final FontFamily.Resolver createFontFamilyResolver(Font.ResourceLoader fontResourceLoader) {
        Intrinsics.checkNotNullParameter(fontResourceLoader, "fontResourceLoader");
        return new FontFamilyResolverImpl(new DelegatingFontLoaderForDeprecatedUsage(fontResourceLoader), null, null, null, null, 30, null);
    }
}
