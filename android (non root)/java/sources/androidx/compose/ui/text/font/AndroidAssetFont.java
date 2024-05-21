package androidx.compose.ui.text.font;

import android.content.Context;
import android.content.res.AssetManager;
import androidx.compose.ui.text.font.FontVariation;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPreloadedFont.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B4\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000bø\u0001\u0000¢\u0006\u0002\u0010\fJ\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0010¢\u0006\u0002\b\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Landroidx/compose/ui/text/font/AndroidAssetFont;", "Landroidx/compose/ui/text/font/AndroidPreloadedFont;", "assetManager", "Landroid/content/res/AssetManager;", "path", "", "weight", "Landroidx/compose/ui/text/font/FontWeight;", "style", "Landroidx/compose/ui/text/font/FontStyle;", "variationSettings", "Landroidx/compose/ui/text/font/FontVariation$Settings;", "(Landroid/content/res/AssetManager;Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getAssetManager", "()Landroid/content/res/AssetManager;", "cacheKey", "getCacheKey", "()Ljava/lang/String;", "getPath", "doLoad", "Landroid/graphics/Typeface;", "context", "Landroid/content/Context;", "doLoad$ui_text_release", "equals", "", "other", "", "hashCode", "", "toString", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidAssetFont extends AndroidPreloadedFont {
    private final AssetManager assetManager;
    private final String cacheKey;
    private final String path;

    public /* synthetic */ AndroidAssetFont(AssetManager assetManager, String str, FontWeight fontWeight, int i, FontVariation.Settings settings, DefaultConstructorMarker defaultConstructorMarker) {
        this(assetManager, str, fontWeight, i, settings);
    }

    public final AssetManager getAssetManager() {
        return this.assetManager;
    }

    @Override // androidx.compose.ui.text.font.AndroidPreloadedFont
    public String getCacheKey() {
        return this.cacheKey;
    }

    public final String getPath() {
        return this.path;
    }

    public /* synthetic */ AndroidAssetFont(AssetManager assetManager, String str, FontWeight fontWeight, int i, FontVariation.Settings settings, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(assetManager, str, (i2 & 4) != 0 ? FontWeight.INSTANCE.getNormal() : fontWeight, (i2 & 8) != 0 ? FontStyle.INSTANCE.m4515getNormal_LCdwA() : i, settings, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private AndroidAssetFont(AssetManager assetManager, String path, FontWeight weight, int i, FontVariation.Settings variationSettings) {
        super(weight, i, variationSettings, null);
        Intrinsics.checkNotNullParameter(assetManager, "assetManager");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(weight, "weight");
        Intrinsics.checkNotNullParameter(variationSettings, "variationSettings");
        this.assetManager = assetManager;
        this.path = path;
        setTypeface$ui_text_release(doLoad$ui_text_release(null));
        this.cacheKey = "asset:" + path;
    }

    @Override // androidx.compose.ui.text.font.AndroidPreloadedFont
    public android.graphics.Typeface doLoad$ui_text_release(Context context) {
        return TypefaceBuilderCompat.INSTANCE.createFromAssets(this.assetManager, this.path, context, getVariationSettings());
    }

    public String toString() {
        return "Font(assetManager, path=" + this.path + ", weight=" + getWeight() + ", style=" + ((Object) FontStyle.m4512toStringimpl(getStyle())) + ')';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AndroidAssetFont)) {
            return false;
        }
        AndroidAssetFont androidAssetFont = (AndroidAssetFont) other;
        return Intrinsics.areEqual(this.path, androidAssetFont.path) && Intrinsics.areEqual(getVariationSettings(), androidAssetFont.getVariationSettings());
    }

    public int hashCode() {
        return (this.path.hashCode() * 31) + getVariationSettings().hashCode();
    }
}
