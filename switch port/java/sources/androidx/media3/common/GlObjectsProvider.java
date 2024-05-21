package androidx.media3.common;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import androidx.media3.common.util.GlUtil;

/* loaded from: classes2.dex */
public interface GlObjectsProvider {

    @Deprecated
    public static final GlObjectsProvider DEFAULT = new GlObjectsProvider() { // from class: androidx.media3.common.GlObjectsProvider.1
        @Override // androidx.media3.common.GlObjectsProvider
        public EGLContext createEglContext(EGLDisplay eGLDisplay, int i, int[] iArr) throws GlUtil.GlException {
            return GlUtil.createEglContext(EGL14.EGL_NO_CONTEXT, eGLDisplay, i, iArr);
        }

        @Override // androidx.media3.common.GlObjectsProvider
        public EGLSurface createEglSurface(EGLDisplay eGLDisplay, Object obj, int i, boolean z) throws GlUtil.GlException {
            return GlUtil.createEglSurface(eGLDisplay, obj, i, z);
        }

        @Override // androidx.media3.common.GlObjectsProvider
        public EGLSurface createFocusedPlaceholderEglSurface(EGLContext eGLContext, EGLDisplay eGLDisplay, int[] iArr) throws GlUtil.GlException {
            return GlUtil.createFocusedPlaceholderEglSurface(eGLContext, eGLDisplay, iArr);
        }

        @Override // androidx.media3.common.GlObjectsProvider
        public GlTextureInfo createBuffersForTexture(int i, int i2, int i3) throws GlUtil.GlException {
            return new GlTextureInfo(i, GlUtil.createFboForTexture(i), -1, i2, i3);
        }
    };

    GlTextureInfo createBuffersForTexture(int i, int i2, int i3) throws GlUtil.GlException;

    EGLContext createEglContext(EGLDisplay eGLDisplay, int i, int[] iArr) throws GlUtil.GlException;

    EGLSurface createEglSurface(EGLDisplay eGLDisplay, Object obj, int i, boolean z) throws GlUtil.GlException;

    EGLSurface createFocusedPlaceholderEglSurface(EGLContext eGLContext, EGLDisplay eGLDisplay, int[] iArr) throws GlUtil.GlException;
}
