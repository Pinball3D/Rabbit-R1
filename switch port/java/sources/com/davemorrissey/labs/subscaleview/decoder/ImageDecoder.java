package com.davemorrissey.labs.subscaleview.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;

/* loaded from: classes2.dex */
public interface ImageDecoder {
    Bitmap decode(Context context, Uri uri) throws Exception;
}
