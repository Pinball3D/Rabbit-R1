package androidx.media3.common;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;

/* loaded from: classes2.dex */
public final class GlTextureInfo {
    public static final GlTextureInfo UNSET = new GlTextureInfo(-1, -1, -1, -1, -1);
    private final int fboId;
    private final int height;
    private boolean isReleased;
    private final int rboId;
    private final int texId;
    private final int width;

    public GlTextureInfo(int i, int i2, int i3, int i4, int i5) {
        this.texId = i;
        this.fboId = i2;
        this.rboId = i3;
        this.width = i4;
        this.height = i5;
    }

    public int getTexId() {
        Assertions.checkState(!this.isReleased);
        return this.texId;
    }

    public int getFboId() {
        Assertions.checkState(!this.isReleased);
        return this.fboId;
    }

    public int getRboId() {
        Assertions.checkState(!this.isReleased);
        return this.rboId;
    }

    public int getWidth() {
        Assertions.checkState(!this.isReleased);
        return this.width;
    }

    public int getHeight() {
        Assertions.checkState(!this.isReleased);
        return this.height;
    }

    public void release() throws GlUtil.GlException {
        this.isReleased = true;
        int i = this.texId;
        if (i != -1) {
            GlUtil.deleteTexture(i);
        }
        int i2 = this.fboId;
        if (i2 != -1) {
            GlUtil.deleteFbo(i2);
        }
        int i3 = this.rboId;
        if (i3 != -1) {
            GlUtil.deleteRbo(i3);
        }
    }
}
