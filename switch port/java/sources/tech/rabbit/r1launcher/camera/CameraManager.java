package tech.rabbit.r1launcher.camera;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.ImageReader;
import android.os.Handler;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.app.ActivityCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import tech.rabbit.r1launcher.camera.CameraManager;

/* compiled from: CameraManager.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001-B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0007J\b\u0010\u001a\u001a\u00020\u0019H\u0003J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J\u001a\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001eH\u0003J\b\u0010\u001f\u001a\u00020\u000fH\u0002J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0017H\u0007J\u0016\u0010\"\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00172\u0006\u0010#\u001a\u00020$J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u0004H\u0007J\u0010\u0010'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Ltech/rabbit/r1launcher/camera/CameraManager;", "", "()V", "TAG", "", "cameraCaptureSession", "Landroid/hardware/camera2/CameraCaptureSession;", "cameraDevice", "Landroid/hardware/camera2/CameraDevice;", "dstHeight", "", "dstWidth", "imageReader", "Landroid/media/ImageReader;", "isFront", "", "needReopenCamera", "getNeedReopenCamera", "()Z", "setNeedReopenCamera", "(Z)V", "textureViewRef", "Ljava/lang/ref/WeakReference;", "Landroid/view/TextureView;", "close", "", "createCameraPreviewSession", "flipTextureView", "flipTextureViewWithDelay", "delay", "", "isOpened", "open", "textureView", "openCamera", "cameraManager", "Landroid/hardware/camera2/CameraManager;", "rotateWithName", "name", "showImage", "bitmap", "Landroid/graphics/Bitmap;", "takePictureIfOpened", "callback", "Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;", "TakePictureCallback", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CameraManager {
    public static final CameraManager INSTANCE = new CameraManager();
    private static final String TAG = "CameraManager";
    private static CameraCaptureSession cameraCaptureSession = null;
    private static CameraDevice cameraDevice = null;
    private static final int dstHeight = 720;
    private static final int dstWidth = 1080;
    private static ImageReader imageReader;
    private static boolean isFront;
    private static volatile boolean needReopenCamera;
    private static WeakReference<TextureView> textureViewRef;

    /* compiled from: CameraManager.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;", "", "onResult", "", "base64", "", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface TakePictureCallback {
        void onResult(String base64);
    }

    private final boolean isOpened() {
        return cameraDevice != null;
    }

    public final boolean getNeedReopenCamera() {
        return needReopenCamera;
    }

    public final void setNeedReopenCamera(boolean z) {
        needReopenCamera = z;
    }

    private CameraManager() {
    }

    public final void open(TextureView textureView) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(textureView, "textureView");
        if (isOpened()) {
            Log.e(TAG, "camera in use, open failed.");
            return;
        }
        Object systemService = textureView.getContext().getSystemService("camera");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.camera2.CameraManager");
        android.hardware.camera2.CameraManager cameraManager = (android.hardware.camera2.CameraManager) systemService;
        openCamera(textureView, cameraManager);
        CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(cameraManager.getCameraIdList()[0]);
        Intrinsics.checkNotNullExpressionValue(cameraCharacteristics, "getCameraCharacteristics(...)");
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        int i3 = dstWidth;
        int i4 = dstHeight;
        if (streamConfigurationMap != null) {
            Size[] outputSizes = streamConfigurationMap.getOutputSizes(256);
            Intrinsics.checkNotNull(outputSizes);
            i = Integer.MAX_VALUE;
            i2 = Integer.MAX_VALUE;
            for (Size size : outputSizes) {
                if (size.getWidth() * dstHeight == size.getHeight() * dstWidth && ((i > size.getHeight() || i2 > size.getWidth()) && size.getWidth() >= dstWidth && size.getHeight() >= dstHeight)) {
                    i = size.getHeight();
                    i2 = size.getWidth();
                }
            }
        } else {
            i = Integer.MAX_VALUE;
            i2 = Integer.MAX_VALUE;
        }
        if (i2 != Integer.MAX_VALUE && i != Integer.MAX_VALUE) {
            i4 = i;
            i3 = i2;
        }
        imageReader = ImageReader.newInstance(i3, i4, 256, 1);
    }

    public final void openCamera(TextureView textureView, android.hardware.camera2.CameraManager cameraManager) {
        Intrinsics.checkNotNullParameter(textureView, "textureView");
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        if (ActivityCompat.checkSelfPermission(textureView.getContext(), "android.permission.CAMERA") != 0) {
            Log.e(TAG, "no camera permission, open failed.");
            return;
        }
        textureViewRef = new WeakReference<>(textureView);
        flipTextureView(isFront);
        cameraManager.openCamera(cameraManager.getCameraIdList()[0], new CameraDevice.StateCallback() { // from class: tech.rabbit.r1launcher.camera.CameraManager$openCamera$1
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice camera) {
                Intrinsics.checkNotNullParameter(camera, "camera");
                CameraManager cameraManager2 = CameraManager.INSTANCE;
                CameraManager.cameraDevice = camera;
                CameraManager.INSTANCE.createCameraPreviewSession();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice camera) {
                Intrinsics.checkNotNullParameter(camera, "camera");
                camera.close();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice camera, int error) {
                Intrinsics.checkNotNullParameter(camera, "camera");
                camera.close();
                CameraManager.INSTANCE.setNeedReopenCamera(error == 3);
            }
        }, (Handler) null);
    }

    public final void close() {
        CameraCaptureSession cameraCaptureSession2 = cameraCaptureSession;
        if (cameraCaptureSession2 != null) {
            cameraCaptureSession2.close();
        }
        cameraCaptureSession = null;
        ImageReader imageReader2 = imageReader;
        if (imageReader2 != null) {
            imageReader2.close();
        }
        imageReader = null;
        CameraDevice cameraDevice2 = cameraDevice;
        if (cameraDevice2 != null) {
            cameraDevice2.close();
        }
        cameraDevice = null;
    }

    public final void rotateWithName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, "front")) {
            if (isFront) {
                return;
            }
            isFront = true;
            flipTextureViewWithDelay$default(this, true, 0L, 2, null);
            return;
        }
        if (Intrinsics.areEqual(lowerCase, "back") && isFront) {
            isFront = false;
            flipTextureViewWithDelay$default(this, false, 0L, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void flipTextureView(boolean isFront2) {
        TextureView textureView;
        if (isFront2) {
            WeakReference<TextureView> weakReference = textureViewRef;
            textureView = weakReference != null ? weakReference.get() : null;
            if (textureView == null) {
                return;
            }
            textureView.setScaleY(-1.0f);
            return;
        }
        WeakReference<TextureView> weakReference2 = textureViewRef;
        textureView = weakReference2 != null ? weakReference2.get() : null;
        if (textureView == null) {
            return;
        }
        textureView.setScaleY(1.0f);
    }

    static /* synthetic */ void flipTextureViewWithDelay$default(CameraManager cameraManager, boolean z, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 800;
        }
        cameraManager.flipTextureViewWithDelay(z, j);
    }

    private final void flipTextureViewWithDelay(boolean isFront2, long delay) {
        BuildersKt.runBlocking$default(null, new CameraManager$flipTextureViewWithDelay$1(delay, isFront2, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createCameraPreviewSession() {
        TextureView textureView;
        SurfaceTexture surfaceTexture;
        WeakReference<TextureView> weakReference = textureViewRef;
        if (weakReference == null || (textureView = weakReference.get()) == null || (surfaceTexture = textureView.getSurfaceTexture()) == null) {
            return;
        }
        surfaceTexture.setDefaultBufferSize(640, 480);
        Surface surface = new Surface(surfaceTexture);
        CameraDevice cameraDevice2 = cameraDevice;
        Intrinsics.checkNotNull(cameraDevice2);
        final CaptureRequest.Builder createCaptureRequest = cameraDevice2.createCaptureRequest(1);
        Intrinsics.checkNotNullExpressionValue(createCaptureRequest, "createCaptureRequest(...)");
        createCaptureRequest.addTarget(surface);
        CameraDevice cameraDevice3 = cameraDevice;
        Intrinsics.checkNotNull(cameraDevice3);
        ImageReader imageReader2 = imageReader;
        Intrinsics.checkNotNull(imageReader2);
        cameraDevice3.createCaptureSession(CollectionsKt.listOf((Object[]) new Surface[]{surface, imageReader2.getSurface()}), new CameraCaptureSession.StateCallback() { // from class: tech.rabbit.r1launcher.camera.CameraManager$createCameraPreviewSession$1
            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigureFailed(CameraCaptureSession session) {
                Intrinsics.checkNotNullParameter(session, "session");
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigured(CameraCaptureSession session) {
                Intrinsics.checkNotNullParameter(session, "session");
                CameraManager cameraManager = CameraManager.INSTANCE;
                CameraManager.cameraCaptureSession = session;
                session.setRepeatingRequest(createCaptureRequest.build(), null, null);
            }
        }, null);
    }

    private final void showImage(Bitmap bitmap) {
        WeakReference<TextureView> weakReference = textureViewRef;
        Intrinsics.checkNotNull(weakReference);
        TextureView textureView = weakReference.get();
        Intrinsics.checkNotNull(textureView);
        LinearLayout linearLayout = new LinearLayout(textureView.getContext());
        linearLayout.setOrientation(1);
        WeakReference<TextureView> weakReference2 = textureViewRef;
        Intrinsics.checkNotNull(weakReference2);
        TextureView textureView2 = weakReference2.get();
        Intrinsics.checkNotNull(textureView2);
        ImageView imageView = new ImageView(textureView2.getContext());
        imageView.setImageBitmap(bitmap);
        linearLayout.addView(imageView);
        WeakReference<TextureView> weakReference3 = textureViewRef;
        Intrinsics.checkNotNull(weakReference3);
        TextureView textureView3 = weakReference3.get();
        Intrinsics.checkNotNull(textureView3);
        new AlertDialog.Builder(textureView3.getContext()).setView(linearLayout).setPositiveButton("确定", (DialogInterface.OnClickListener) null).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    public final void takePictureIfOpened(final TakePictureCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!isOpened() || imageReader == null || cameraCaptureSession == null) {
            callback.onResult("");
            return;
        }
        CameraDevice cameraDevice2 = cameraDevice;
        Intrinsics.checkNotNull(cameraDevice2);
        CaptureRequest.Builder createCaptureRequest = cameraDevice2.createCaptureRequest(2);
        Intrinsics.checkNotNullExpressionValue(createCaptureRequest, "createCaptureRequest(...)");
        ImageReader imageReader2 = imageReader;
        Intrinsics.checkNotNull(imageReader2);
        createCaptureRequest.addTarget(imageReader2.getSurface());
        CameraCaptureSession cameraCaptureSession2 = cameraCaptureSession;
        Intrinsics.checkNotNull(cameraCaptureSession2);
        cameraCaptureSession2.capture(createCaptureRequest.build(), new CameraCaptureSession.CaptureCallback() { // from class: tech.rabbit.r1launcher.camera.CameraManager$takePictureIfOpened$1
            /* JADX WARN: Code restructure failed: missing block: B:10:0x0055, code lost:
            
                if (r4 != false) goto L11;
             */
            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onCaptureCompleted(android.hardware.camera2.CameraCaptureSession r10, android.hardware.camera2.CaptureRequest r11, android.hardware.camera2.TotalCaptureResult r12) {
                /*
                    r9 = this;
                    java.lang.String r0 = "session"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                    java.lang.String r10 = "request"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r10)
                    java.lang.String r10 = "result"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r10)
                    android.media.ImageReader r10 = tech.rabbit.r1launcher.camera.CameraManager.access$getImageReader$p()
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
                    android.media.Image r10 = r10.acquireNextImage()
                    if (r10 != 0) goto L24
                    tech.rabbit.r1launcher.camera.CameraManager$TakePictureCallback r9 = tech.rabbit.r1launcher.camera.CameraManager.TakePictureCallback.this
                    java.lang.String r10 = ""
                    r9.onResult(r10)
                    return
                L24:
                    android.media.Image$Plane[] r11 = r10.getPlanes()
                    r12 = 0
                    r11 = r11[r12]
                    java.nio.ByteBuffer r11 = r11.getBuffer()
                    int r0 = r11.capacity()
                    byte[] r1 = new byte[r0]
                    r11.get(r1)
                    android.graphics.Bitmap r11 = android.graphics.BitmapFactory.decodeByteArray(r1, r12, r0)
                    int r0 = r11.getWidth()
                    int r1 = r11.getHeight()
                    android.graphics.Matrix r7 = new android.graphics.Matrix
                    r7.<init>()
                    r2 = 720(0x2d0, float:1.009E-42)
                    r3 = 1080(0x438, float:1.513E-42)
                    if (r0 != r3) goto L57
                    if (r1 != r2) goto L57
                    boolean r4 = tech.rabbit.r1launcher.camera.CameraManager.access$isFront$p()
                    if (r4 == 0) goto L77
                L57:
                    float r3 = (float) r3
                    float r0 = (float) r0
                    float r3 = r3 / r0
                    float r0 = (float) r2
                    float r1 = (float) r1
                    float r0 = r0 / r1
                    boolean r1 = tech.rabbit.r1launcher.camera.CameraManager.access$isFront$p()
                    r2 = -1
                    r4 = 1
                    if (r1 == 0) goto L67
                    r1 = r2
                    goto L68
                L67:
                    r1 = r4
                L68:
                    float r1 = (float) r1
                    float r3 = r3 * r1
                    boolean r1 = tech.rabbit.r1launcher.camera.CameraManager.access$isFront$p()
                    if (r1 == 0) goto L71
                    goto L72
                L71:
                    r2 = r4
                L72:
                    float r1 = (float) r2
                    float r0 = r0 * r1
                    r7.setScale(r3, r0)
                L77:
                    r0 = 1119092736(0x42b40000, float:90.0)
                    r7.postRotate(r0)
                    r3 = 0
                    r4 = 0
                    r5 = 1080(0x438, float:1.513E-42)
                    r6 = 720(0x2d0, float:1.009E-42)
                    r8 = 1
                    r2 = r11
                    android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r2, r3, r4, r5, r6, r7, r8)
                    java.lang.String r1 = "createBitmap(...)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                    r11.recycle()
                    java.io.ByteArrayOutputStream r11 = new java.io.ByteArrayOutputStream
                    r11.<init>()
                    android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
                    r2 = 100
                    r3 = r11
                    java.io.OutputStream r3 = (java.io.OutputStream) r3
                    r0.compress(r1, r2, r3)
                    byte[] r11 = r11.toByteArray()
                    java.lang.String r1 = "toByteArray(...)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r1)
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    java.lang.String r2 = "data:image/jpeg;base64,"
                    r1.<init>(r2)
                    java.lang.String r11 = android.util.Base64.encodeToString(r11, r12)
                    java.lang.StringBuilder r11 = r1.append(r11)
                    java.lang.String r11 = r11.toString()
                    r0.recycle()
                    r10.close()
                    tech.rabbit.r1launcher.camera.CameraManager$TakePictureCallback r9 = tech.rabbit.r1launcher.camera.CameraManager.TakePictureCallback.this
                    r9.onResult(r11)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.camera.CameraManager$takePictureIfOpened$1.onCaptureCompleted(android.hardware.camera2.CameraCaptureSession, android.hardware.camera2.CaptureRequest, android.hardware.camera2.TotalCaptureResult):void");
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureFailed(CameraCaptureSession session, CaptureRequest request, CaptureFailure failure) {
                Intrinsics.checkNotNullParameter(session, "session");
                Intrinsics.checkNotNullParameter(request, "request");
                Intrinsics.checkNotNullParameter(failure, "failure");
                CameraManager.TakePictureCallback.this.onResult("");
            }
        }, null);
    }
}
