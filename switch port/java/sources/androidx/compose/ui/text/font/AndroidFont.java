package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.font.FontVariation;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidFont.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b'\u0018\u00002\u00020\u0001:\u0001\u0011B\u001a\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0006B \u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\bø\u0001\u0000¢\u0006\u0002\u0010\tR\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFont;", "Landroidx/compose/ui/text/font/Font;", "loadingStrategy", "Landroidx/compose/ui/text/font/FontLoadingStrategy;", "typefaceLoader", "Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;", "(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "variationSettings", "Landroidx/compose/ui/text/font/FontVariation$Settings;", "(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getLoadingStrategy-PKNRLFQ", "()I", "I", "getTypefaceLoader", "()Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;", "getVariationSettings", "()Landroidx/compose/ui/text/font/FontVariation$Settings;", "TypefaceLoader", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AndroidFont implements Font {
    public static final int $stable = 0;
    private final int loadingStrategy;
    private final TypefaceLoader typefaceLoader;
    private final FontVariation.Settings variationSettings;

    /* compiled from: AndroidFont.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H¦@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001a\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;", "", "awaitLoad", "Landroid/graphics/Typeface;", "context", "Landroid/content/Context;", "font", "Landroidx/compose/ui/text/font/AndroidFont;", "(Landroid/content/Context;Landroidx/compose/ui/text/font/AndroidFont;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadBlocking", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface TypefaceLoader {
        Object awaitLoad(Context context, AndroidFont androidFont, Continuation<? super android.graphics.Typeface> continuation);

        android.graphics.Typeface loadBlocking(Context context, AndroidFont font);
    }

    public /* synthetic */ AndroidFont(int i, TypefaceLoader typefaceLoader, FontVariation.Settings settings, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, typefaceLoader, settings);
    }

    @Deprecated(message = "Replaced with fontVariation constructor", replaceWith = @ReplaceWith(expression = "AndroidFont(loadingStrategy, typefaceLoader, FontVariation.Settings())", imports = {}))
    public /* synthetic */ AndroidFont(int i, TypefaceLoader typefaceLoader, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, typefaceLoader);
    }

    @Override // androidx.compose.ui.text.font.Font
    /* renamed from: getLoadingStrategy-PKNRLFQ, reason: not valid java name and from getter */
    public final int getLoadingStrategy() {
        return this.loadingStrategy;
    }

    public final TypefaceLoader getTypefaceLoader() {
        return this.typefaceLoader;
    }

    public final FontVariation.Settings getVariationSettings() {
        return this.variationSettings;
    }

    private AndroidFont(int i, TypefaceLoader typefaceLoader, FontVariation.Settings variationSettings) {
        Intrinsics.checkNotNullParameter(typefaceLoader, "typefaceLoader");
        Intrinsics.checkNotNullParameter(variationSettings, "variationSettings");
        this.loadingStrategy = i;
        this.typefaceLoader = typefaceLoader;
        this.variationSettings = variationSettings;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    private AndroidFont(int i, TypefaceLoader typefaceLoader) {
        this(i, typefaceLoader, new FontVariation.Settings(new FontVariation.Setting[0]), null);
        Intrinsics.checkNotNullParameter(typefaceLoader, "typefaceLoader");
    }
}
