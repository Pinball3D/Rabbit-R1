package androidx.core.text;

import android.text.Html;
import android.text.Spanned;
import kotlin.Metadata;

/* compiled from: Html.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0086\b\u001a\u0017\u0010\t\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u0004H\u0086\b¨\u0006\u000b"}, d2 = {"parseAsHtml", "Landroid/text/Spanned;", "", "flags", "", "imageGetter", "Landroid/text/Html$ImageGetter;", "tagHandler", "Landroid/text/Html$TagHandler;", "toHtml", "option", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HtmlKt {
    public static final Spanned parseAsHtml(String str, int i, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        return HtmlCompat.fromHtml(str, i, imageGetter, tagHandler);
    }

    public static /* synthetic */ Spanned parseAsHtml$default(String str, int i, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            imageGetter = null;
        }
        if ((i2 & 4) != 0) {
            tagHandler = null;
        }
        return HtmlCompat.fromHtml(str, i, imageGetter, tagHandler);
    }

    public static final String toHtml(Spanned spanned, int i) {
        return HtmlCompat.toHtml(spanned, i);
    }

    public static /* synthetic */ String toHtml$default(Spanned spanned, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return HtmlCompat.toHtml(spanned, i);
    }
}
