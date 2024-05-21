package com.davemorrissey.labs.subscaleview.decoder;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes2.dex */
public class SkiaImageDecoder implements ImageDecoder {
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final String FILE_PREFIX = "file://";
    private static final String RESOURCE_PREFIX = "android.resource://";
    private final Bitmap.Config bitmapConfig;

    public SkiaImageDecoder() {
        this(null);
    }

    public SkiaImageDecoder(Bitmap.Config config) {
        Bitmap.Config preferredBitmapConfig = SubsamplingScaleImageView.getPreferredBitmapConfig();
        if (config != null) {
            this.bitmapConfig = config;
        } else if (preferredBitmapConfig != null) {
            this.bitmapConfig = preferredBitmapConfig;
        } else {
            this.bitmapConfig = Bitmap.Config.RGB_565;
        }
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageDecoder
    public Bitmap decode(Context context, Uri uri) throws Exception {
        Bitmap bitmap;
        Resources resourcesForApplication;
        String uri2 = uri.toString();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = this.bitmapConfig;
        if (uri2.startsWith(RESOURCE_PREFIX)) {
            String authority = uri.getAuthority();
            if (context.getPackageName().equals(authority)) {
                resourcesForApplication = context.getResources();
            } else {
                resourcesForApplication = context.getPackageManager().getResourcesForApplication(authority);
            }
            List<String> pathSegments = uri.getPathSegments();
            int size = pathSegments.size();
            int i = 0;
            if (size == 2 && pathSegments.get(0).equals("drawable")) {
                i = resourcesForApplication.getIdentifier(pathSegments.get(1), "drawable", authority);
            } else if (size == 1 && TextUtils.isDigitsOnly(pathSegments.get(0))) {
                try {
                    i = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                }
            }
            bitmap = BitmapFactory.decodeResource(context.getResources(), i, options);
        } else {
            InputStream inputStream = null;
            if (uri2.startsWith(ASSET_PREFIX)) {
                bitmap = BitmapFactory.decodeStream(context.getAssets().open(uri2.substring(22)), null, options);
            } else if (uri2.startsWith(FILE_PREFIX)) {
                bitmap = BitmapFactory.decodeFile(uri2.substring(7), options);
            } else {
                try {
                    InputStream openInputStream = context.getContentResolver().openInputStream(uri);
                    try {
                        Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
                        if (openInputStream != null) {
                            try {
                                openInputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        bitmap = decodeStream;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = openInputStream;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        if (bitmap != null) {
            return bitmap;
        }
        throw new RuntimeException("Skia image region decoder returned null bitmap - image format may not be supported");
    }
}
