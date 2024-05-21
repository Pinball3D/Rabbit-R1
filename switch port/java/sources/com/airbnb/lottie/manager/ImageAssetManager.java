package com.airbnb.lottie.manager;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
public class ImageAssetManager {
    private static final Object bitmapHashLock = new Object();
    private final Context context;
    private ImageAssetDelegate delegate;
    private final Map<String, LottieImageAsset> imageAssets;
    private final String imagesFolder;

    public void setDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.delegate = imageAssetDelegate;
    }

    public ImageAssetManager(Drawable.Callback callback, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.imagesFolder = str;
        } else {
            this.imagesFolder = str + '/';
        }
        this.imageAssets = map;
        setDelegate(imageAssetDelegate);
        if (callback instanceof View) {
            this.context = ((View) callback).getContext().getApplicationContext();
        } else {
            this.context = null;
        }
    }

    public Bitmap updateBitmap(String str, Bitmap bitmap) {
        if (bitmap == null) {
            LottieImageAsset lottieImageAsset = this.imageAssets.get(str);
            Bitmap bitmap2 = lottieImageAsset.getBitmap();
            lottieImageAsset.setBitmap(null);
            return bitmap2;
        }
        Bitmap bitmap3 = this.imageAssets.get(str).getBitmap();
        putBitmap(str, bitmap);
        return bitmap3;
    }

    public LottieImageAsset getImageAssetById(String str) {
        return this.imageAssets.get(str);
    }

    public Bitmap bitmapForId(String str) {
        LottieImageAsset lottieImageAsset = this.imageAssets.get(str);
        if (lottieImageAsset == null) {
            return null;
        }
        Bitmap bitmap = lottieImageAsset.getBitmap();
        if (bitmap != null) {
            return bitmap;
        }
        ImageAssetDelegate imageAssetDelegate = this.delegate;
        if (imageAssetDelegate != null) {
            Bitmap fetchBitmap = imageAssetDelegate.fetchBitmap(lottieImageAsset);
            if (fetchBitmap != null) {
                putBitmap(str, fetchBitmap);
            }
            return fetchBitmap;
        }
        Context context = this.context;
        if (context == null) {
            return null;
        }
        String fileName = lottieImageAsset.getFileName();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (fileName.startsWith("data:") && fileName.indexOf("base64,") > 0) {
            try {
                byte[] decode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                return putBitmap(str, BitmapFactory.decodeByteArray(decode, 0, decode.length, options));
            } catch (IllegalArgumentException e) {
                Logger.warning("data URL did not have correct base64 format.", e);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.imagesFolder)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.imagesFolder + fileName), null, options);
                if (decodeStream == null) {
                    Logger.warning("Decoded image `" + str + "` is null.");
                    return null;
                }
                return putBitmap(str, Utils.resizeBitmapIfNeeded(decodeStream, lottieImageAsset.getWidth(), lottieImageAsset.getHeight()));
            } catch (IllegalArgumentException e2) {
                Logger.warning("Unable to decode image `" + str + "`.", e2);
                return null;
            }
        } catch (IOException e3) {
            Logger.warning("Unable to open asset.", e3);
            return null;
        }
    }

    public boolean hasSameContext(Context context) {
        if (this.context instanceof Application) {
            context = context.getApplicationContext();
        }
        return context == this.context;
    }

    private Bitmap putBitmap(String str, Bitmap bitmap) {
        synchronized (bitmapHashLock) {
            this.imageAssets.get(str).setBitmap(bitmap);
        }
        return bitmap;
    }
}
