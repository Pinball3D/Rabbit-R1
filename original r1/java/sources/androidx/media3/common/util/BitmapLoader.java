package androidx.media3.common.util;

import android.graphics.Bitmap;
import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public interface BitmapLoader {
    ListenableFuture<Bitmap> decodeBitmap(byte[] bArr);

    ListenableFuture<Bitmap> loadBitmap(Uri uri);

    default ListenableFuture<Bitmap> loadBitmapFromMetadata(MediaMetadata mediaMetadata) {
        if (mediaMetadata.artworkData != null) {
            return decodeBitmap(mediaMetadata.artworkData);
        }
        if (mediaMetadata.artworkUri != null) {
            return loadBitmap(mediaMetadata.artworkUri);
        }
        return null;
    }
}
