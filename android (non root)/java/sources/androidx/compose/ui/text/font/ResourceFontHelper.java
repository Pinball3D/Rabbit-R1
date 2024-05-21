package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidFontLoader.android.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/font/ResourceFontHelper;", "", "()V", "load", "Landroid/graphics/Typeface;", "context", "Landroid/content/Context;", "font", "Landroidx/compose/ui/text/font/ResourceFont;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ResourceFontHelper {
    public static final ResourceFontHelper INSTANCE = new ResourceFontHelper();

    private ResourceFontHelper() {
    }

    public final android.graphics.Typeface load(Context context, ResourceFont font) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(font, "font");
        android.graphics.Typeface font2 = context.getResources().getFont(font.getResId());
        Intrinsics.checkNotNullExpressionValue(font2, "context.resources.getFont(font.resId)");
        return font2;
    }
}
