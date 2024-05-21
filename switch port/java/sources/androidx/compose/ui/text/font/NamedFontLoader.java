package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.font.AndroidFont;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeviceFontFamilyNameFont.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/text/font/NamedFontLoader;", "Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;", "()V", "awaitLoad", "Landroid/graphics/Typeface;", "context", "Landroid/content/Context;", "font", "Landroidx/compose/ui/text/font/AndroidFont;", "(Landroid/content/Context;Landroidx/compose/ui/text/font/AndroidFont;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadBlocking", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class NamedFontLoader implements AndroidFont.TypefaceLoader {
    public static final NamedFontLoader INSTANCE = new NamedFontLoader();

    private NamedFontLoader() {
    }

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    public android.graphics.Typeface loadBlocking(Context context, AndroidFont font) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(font, "font");
        DeviceFontFamilyNameFont deviceFontFamilyNameFont = font instanceof DeviceFontFamilyNameFont ? (DeviceFontFamilyNameFont) font : null;
        if (deviceFontFamilyNameFont != null) {
            return deviceFontFamilyNameFont.loadCached(context);
        }
        return null;
    }

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    public Object awaitLoad(Context context, AndroidFont androidFont, Continuation<? super android.graphics.Typeface> continuation) {
        throw new UnsupportedOperationException("All preloaded fonts are optional local.");
    }
}
