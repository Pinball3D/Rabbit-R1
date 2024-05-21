package com.davemorrissey.labs.subscaleview;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import com.google.android.exoplayer2.C;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/* loaded from: classes2.dex */
public final class ImageSource {
    static final String ASSET_SCHEME = "file:///android_asset/";
    static final String FILE_SCHEME = "file:///";
    private final Bitmap bitmap;
    private boolean cached;
    private final Integer resource;
    private int sHeight;
    private Rect sRegion;
    private int sWidth;
    private boolean tile;
    private final Uri uri;

    /* JADX INFO: Access modifiers changed from: protected */
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Integer getResource() {
        return this.resource;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getSHeight() {
        return this.sHeight;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Rect getSRegion() {
        return this.sRegion;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getSWidth() {
        return this.sWidth;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean getTile() {
        return this.tile;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Uri getUri() {
        return this.uri;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isCached() {
        return this.cached;
    }

    public ImageSource tiling(boolean z) {
        this.tile = z;
        return this;
    }

    private ImageSource(Bitmap bitmap, boolean z) {
        this.bitmap = bitmap;
        this.uri = null;
        this.resource = null;
        this.tile = false;
        this.sWidth = bitmap.getWidth();
        this.sHeight = bitmap.getHeight();
        this.cached = z;
    }

    private ImageSource(Uri uri) {
        String uri2 = uri.toString();
        if (uri2.startsWith(FILE_SCHEME) && !new File(uri2.substring(7)).exists()) {
            try {
                uri = Uri.parse(URLDecoder.decode(uri2, C.UTF8_NAME));
            } catch (UnsupportedEncodingException unused) {
            }
        }
        this.bitmap = null;
        this.uri = uri;
        this.resource = null;
        this.tile = true;
    }

    private ImageSource(int i) {
        this.bitmap = null;
        this.uri = null;
        this.resource = Integer.valueOf(i);
        this.tile = true;
    }

    public static ImageSource resource(int i) {
        return new ImageSource(i);
    }

    public static ImageSource asset(String str) {
        if (str == null) {
            throw new NullPointerException("Asset name must not be null");
        }
        return uri(ASSET_SCHEME + str);
    }

    public static ImageSource uri(String str) {
        if (str == null) {
            throw new NullPointerException("Uri must not be null");
        }
        if (!str.contains("://")) {
            if (str.startsWith("/")) {
                str = str.substring(1);
            }
            str = FILE_SCHEME + str;
        }
        return new ImageSource(Uri.parse(str));
    }

    public static ImageSource uri(Uri uri) {
        if (uri == null) {
            throw new NullPointerException("Uri must not be null");
        }
        return new ImageSource(uri);
    }

    public static ImageSource bitmap(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        return new ImageSource(bitmap, false);
    }

    public static ImageSource cachedBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        return new ImageSource(bitmap, true);
    }

    public ImageSource tilingEnabled() {
        return tiling(true);
    }

    public ImageSource tilingDisabled() {
        return tiling(false);
    }

    public ImageSource region(Rect rect) {
        this.sRegion = rect;
        setInvariants();
        return this;
    }

    public ImageSource dimensions(int i, int i2) {
        if (this.bitmap == null) {
            this.sWidth = i;
            this.sHeight = i2;
        }
        setInvariants();
        return this;
    }

    private void setInvariants() {
        Rect rect = this.sRegion;
        if (rect != null) {
            this.tile = true;
            this.sWidth = rect.width();
            this.sHeight = this.sRegion.height();
        }
    }
}
