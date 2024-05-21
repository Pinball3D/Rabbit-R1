package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.Uri;
import kotlin.Metadata;

/* compiled from: Icon.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0004H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0005H\u0087\b¨\u0006\u0006"}, d2 = {"toAdaptiveIcon", "Landroid/graphics/drawable/Icon;", "Landroid/graphics/Bitmap;", "toIcon", "Landroid/net/Uri;", "", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IconKt {
    public static final Icon toAdaptiveIcon(Bitmap bitmap) {
        return Icon.createWithAdaptiveBitmap(bitmap);
    }

    public static final Icon toIcon(Bitmap bitmap) {
        return Icon.createWithBitmap(bitmap);
    }

    public static final Icon toIcon(Uri uri) {
        return Icon.createWithContentUri(uri);
    }

    public static final Icon toIcon(byte[] bArr) {
        return Icon.createWithData(bArr, 0, bArr.length);
    }
}
