package tech.rabbit.r1launcher.platform_views;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.TextureView;
import android.view.View;
import io.flutter.plugin.platform.PlatformView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.r1launcher.camera.CameraManager;
import tech.rabbit.r1launcher.rabbit.TTSPlayer;

/* compiled from: CameraPreviewView.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;", "Lio/flutter/plugin/platform/PlatformView;", "context", "Landroid/content/Context;", "id", "", "creationParams", "", "", "", "(Landroid/content/Context;ILjava/util/Map;)V", "textureView", "Landroid/view/TextureView;", "dispose", "", "getView", "Landroid/view/View;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CameraPreviewView implements PlatformView {
    public static final int $stable = 8;
    private final TextureView textureView;

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
    }

    public CameraPreviewView(Context context, int i, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        TextureView textureView = new TextureView(context);
        this.textureView = textureView;
        textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: tech.rabbit.r1launcher.platform_views.CameraPreviewView.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
                Intrinsics.checkNotNullParameter(surface, "surface");
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
                Intrinsics.checkNotNullParameter(surface, "surface");
                CameraManager.INSTANCE.open(CameraPreviewView.this.textureView);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
                Intrinsics.checkNotNullParameter(surface, "surface");
                CameraManager.INSTANCE.close();
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surface) {
                Intrinsics.checkNotNullParameter(surface, "surface");
                if (CameraManager.INSTANCE.getNeedReopenCamera()) {
                    Object systemService = CameraPreviewView.this.textureView.getContext().getSystemService("camera");
                    Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.camera2.CameraManager");
                    CameraManager.INSTANCE.openCamera(CameraPreviewView.this.textureView, (android.hardware.camera2.CameraManager) systemService);
                    CameraManager.INSTANCE.setNeedReopenCamera(false);
                }
            }
        });
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        KotlinUtilKt.postDelayOnMainThread(1L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.platform_views.CameraPreviewView$getView$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TTSPlayer.INSTANCE.stop();
            }
        });
        return this.textureView;
    }
}
