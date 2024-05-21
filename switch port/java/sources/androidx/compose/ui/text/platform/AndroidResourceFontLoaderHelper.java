package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidFontListTypeface.android.kt */
@Deprecated(message = "Only used by deprecated APIs in this file, remove with them.")
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidResourceFontLoaderHelper;", "", "()V", "create", "Landroid/graphics/Typeface;", "context", "Landroid/content/Context;", "resourceId", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class AndroidResourceFontLoaderHelper {
    public static final AndroidResourceFontLoaderHelper INSTANCE = new AndroidResourceFontLoaderHelper();

    private AndroidResourceFontLoaderHelper() {
    }

    public final Typeface create(Context context, int resourceId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Typeface font = context.getResources().getFont(resourceId);
        Intrinsics.checkNotNullExpressionValue(font, "context.resources.getFont(resourceId)");
        return font;
    }
}
