package org.webrtc;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGLContext;
import org.webrtc.EglBase10;
import org.webrtc.EglBase14;

/* loaded from: classes3.dex */
public interface EglBase {
    public static final int EGL_OPENGL_ES2_BIT = 4;
    public static final int EGL_OPENGL_ES3_BIT = 64;
    public static final int EGL_RECORDABLE_ANDROID = 12610;
    public static final Object lock = new Object();
    public static final int[] CONFIG_PLAIN = configBuilder().createConfigAttributes();
    public static final int[] CONFIG_RGBA = configBuilder().setHasAlphaChannel(true).createConfigAttributes();
    public static final int[] CONFIG_PIXEL_BUFFER = configBuilder().setSupportsPixelBuffer(true).createConfigAttributes();
    public static final int[] CONFIG_PIXEL_RGBA_BUFFER = configBuilder().setHasAlphaChannel(true).setSupportsPixelBuffer(true).createConfigAttributes();
    public static final int[] CONFIG_RECORDABLE = configBuilder().setIsRecordable(true).createConfigAttributes();

    /* loaded from: classes3.dex */
    public interface Context {
        public static final long NO_CONTEXT = 0;

        long getNativeEglContext();
    }

    void createDummyPbufferSurface();

    void createPbufferSurface(int i, int i2);

    void createSurface(SurfaceTexture surfaceTexture);

    void createSurface(Surface surface);

    void detachCurrent();

    Context getEglBaseContext();

    boolean hasSurface();

    void makeCurrent();

    void release();

    void releaseSurface();

    int surfaceHeight();

    int surfaceWidth();

    void swapBuffers();

    void swapBuffers(long j);

    static ConfigBuilder configBuilder() {
        return new ConfigBuilder();
    }

    /* loaded from: classes3.dex */
    public static class ConfigBuilder {
        private boolean hasAlphaChannel;
        private boolean isRecordable;
        private int openGlesVersion = 2;
        private boolean supportsPixelBuffer;

        public ConfigBuilder setHasAlphaChannel(boolean z) {
            this.hasAlphaChannel = z;
            return this;
        }

        public ConfigBuilder setIsRecordable(boolean z) {
            this.isRecordable = z;
            return this;
        }

        public ConfigBuilder setSupportsPixelBuffer(boolean z) {
            this.supportsPixelBuffer = z;
            return this;
        }

        public ConfigBuilder setOpenGlesVersion(int i) {
            if (i < 1 || i > 3) {
                throw new IllegalArgumentException("OpenGL ES version " + i + " not supported");
            }
            this.openGlesVersion = i;
            return this;
        }

        public int[] createConfigAttributes() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(12324);
            arrayList.add(8);
            arrayList.add(12323);
            arrayList.add(8);
            arrayList.add(12322);
            arrayList.add(8);
            if (this.hasAlphaChannel) {
                arrayList.add(12321);
                arrayList.add(8);
            }
            int i = this.openGlesVersion;
            if (i == 2 || i == 3) {
                arrayList.add(12352);
                arrayList.add(Integer.valueOf(this.openGlesVersion == 3 ? 64 : 4));
            }
            if (this.supportsPixelBuffer) {
                arrayList.add(12339);
                arrayList.add(1);
            }
            if (this.isRecordable) {
                arrayList.add(Integer.valueOf(EglBase.EGL_RECORDABLE_ANDROID));
                arrayList.add(1);
            }
            arrayList.add(12344);
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            return iArr;
        }
    }

    static int getOpenGlesVersionFromConfig(int[] iArr) {
        for (int i = 0; i < iArr.length - 1; i++) {
            if (iArr[i] == 12352) {
                int i2 = iArr[i + 1];
                if (i2 != 4) {
                    return i2 != 64 ? 1 : 3;
                }
                return 2;
            }
        }
        return 1;
    }

    static EglBase create(Context context, int[] iArr) {
        if (context == null) {
            return EglBase14Impl.isEGL14Supported() ? createEgl14(iArr) : createEgl10(iArr);
        }
        if (context instanceof EglBase14.Context) {
            return createEgl14((EglBase14.Context) context, iArr);
        }
        if (context instanceof EglBase10.Context) {
            return createEgl10((EglBase10.Context) context, iArr);
        }
        throw new IllegalArgumentException("Unrecognized Context");
    }

    static EglBase create() {
        return create(null, CONFIG_PLAIN);
    }

    static EglBase create(Context context) {
        return create(context, CONFIG_PLAIN);
    }

    static EglBase10 createEgl10(int[] iArr) {
        return new EglBase10Impl(null, iArr);
    }

    static EglBase10 createEgl10(EglBase10.Context context, int[] iArr) {
        return new EglBase10Impl(context == null ? null : context.getRawContext(), iArr);
    }

    static EglBase10 createEgl10(EGLContext eGLContext, int[] iArr) {
        return new EglBase10Impl(eGLContext, iArr);
    }

    static EglBase14 createEgl14(int[] iArr) {
        return new EglBase14Impl(null, iArr);
    }

    static EglBase14 createEgl14(EglBase14.Context context, int[] iArr) {
        return new EglBase14Impl(context == null ? null : context.getRawContext(), iArr);
    }

    static EglBase14 createEgl14(android.opengl.EGLContext eGLContext, int[] iArr) {
        return new EglBase14Impl(eGLContext, iArr);
    }
}
