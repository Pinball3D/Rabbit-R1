package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import android.util.TypedValue;
import androidx.collection.LruCache;
import androidx.compose.ui.text.font.AndroidFont;
import androidx.compose.ui.text.font.AndroidPreloadedFont;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.ResourceFont;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidFontListTypeface.android.kt */
@Deprecated(message = "Duplicate cache")
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidTypefaceCache;", "", "()V", "cache", "Landroidx/collection/LruCache;", "", "Landroid/graphics/Typeface;", "getKey", "context", "Landroid/content/Context;", "font", "Landroidx/compose/ui/text/font/Font;", "getOrCreate", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidTypefaceCache {
    public static final AndroidTypefaceCache INSTANCE = new AndroidTypefaceCache();
    private static final LruCache<String, Typeface> cache = new LruCache<>(16);

    private AndroidTypefaceCache() {
    }

    public final Typeface getOrCreate(Context context, Font font) {
        Typeface loadBlocking;
        Typeface it;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(font, "font");
        String key = getKey(context, font);
        if (key != null && (it = cache.get(key)) != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            return it;
        }
        if (font instanceof ResourceFont) {
            loadBlocking = AndroidResourceFontLoaderHelper.INSTANCE.create(context, ((ResourceFont) font).getResId());
        } else {
            if (!(font instanceof AndroidFont)) {
                throw new IllegalArgumentException("Unknown font type: " + font);
            }
            AndroidFont androidFont = (AndroidFont) font;
            loadBlocking = androidFont.getTypefaceLoader().loadBlocking(context, androidFont);
        }
        if (loadBlocking == null) {
            throw new IllegalArgumentException("Unable to load font " + font);
        }
        if (key != null) {
            cache.put(key, loadBlocking);
        }
        return loadBlocking;
    }

    public final String getKey(Context context, Font font) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(font, "font");
        if (font instanceof ResourceFont) {
            TypedValue typedValue = new TypedValue();
            context.getResources().getValue(((ResourceFont) font).getResId(), typedValue, true);
            StringBuilder sb = new StringBuilder("res:");
            CharSequence charSequence = typedValue.string;
            String obj = charSequence != null ? charSequence.toString() : null;
            Intrinsics.checkNotNull(obj);
            return sb.append(obj).toString();
        }
        if (font instanceof AndroidPreloadedFont) {
            return ((AndroidPreloadedFont) font).getCacheKey();
        }
        throw new IllegalArgumentException("Unknown font type: " + font);
    }
}
