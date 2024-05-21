package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.CameraPreview;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import com.journeyapps.barcodescanner.camera.CameraParametersCallback;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.journeyapps.barcodescanner.camera.CameraSurface;
import com.journeyapps.barcodescanner.camera.CenterCropStrategy;
import com.journeyapps.barcodescanner.camera.DisplayConfiguration;
import com.journeyapps.barcodescanner.camera.FitCenterStrategy;
import com.journeyapps.barcodescanner.camera.FitXYStrategy;
import com.journeyapps.barcodescanner.camera.PreviewScalingStrategy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class CameraPreview extends ViewGroup {
    private static final int ROTATION_LISTENER_DELAY_MS = 250;
    private static final String TAG = "CameraPreview";
    private CameraInstance cameraInstance;
    private CameraSettings cameraSettings;
    private Size containerSize;
    private Size currentSurfaceSize;
    private DisplayConfiguration displayConfiguration;
    private final StateListener fireState;
    private Rect framingRect;
    private Size framingRectSize;
    private double marginFraction;
    private int openedOrientation;
    private boolean previewActive;
    private Rect previewFramingRect;
    private PreviewScalingStrategy previewScalingStrategy;
    private Size previewSize;
    private RotationCallback rotationCallback;
    private RotationListener rotationListener;
    private final Handler.Callback stateCallback;
    private Handler stateHandler;
    private List<StateListener> stateListeners;
    private final SurfaceHolder.Callback surfaceCallback;
    private Rect surfaceRect;
    private SurfaceView surfaceView;
    private TextureView textureView;
    private boolean torchOn;
    private boolean useTextureView;
    private WindowManager windowManager;

    /* loaded from: classes3.dex */
    public interface StateListener {
        void cameraClosed();

        void cameraError(Exception exc);

        void previewSized();

        void previewStarted();

        void previewStopped();
    }

    public CameraInstance getCameraInstance() {
        return this.cameraInstance;
    }

    public CameraSettings getCameraSettings() {
        return this.cameraSettings;
    }

    public Rect getFramingRect() {
        return this.framingRect;
    }

    public Size getFramingRectSize() {
        return this.framingRectSize;
    }

    public double getMarginFraction() {
        return this.marginFraction;
    }

    public Rect getPreviewFramingRect() {
        return this.previewFramingRect;
    }

    public Size getPreviewSize() {
        return this.previewSize;
    }

    protected boolean isActive() {
        return this.cameraInstance != null;
    }

    public boolean isPreviewActive() {
        return this.previewActive;
    }

    public boolean isUseTextureView() {
        return this.useTextureView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void previewStarted() {
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.cameraSettings = cameraSettings;
    }

    public void setFramingRectSize(Size size) {
        this.framingRectSize = size;
    }

    public void setPreviewScalingStrategy(PreviewScalingStrategy previewScalingStrategy) {
        this.previewScalingStrategy = previewScalingStrategy;
    }

    public void setUseTextureView(boolean z) {
        this.useTextureView = z;
    }

    private TextureView.SurfaceTextureListener surfaceTextureListener() {
        return new TextureView.SurfaceTextureListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
                CameraPreview.this.currentSurfaceSize = new Size(i, i2);
                CameraPreview.this.startPreviewIfReady();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.journeyapps.barcodescanner.CameraPreview$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements RotationCallback {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onRotationChanged$0$com-journeyapps-barcodescanner-CameraPreview$4, reason: not valid java name */
        public /* synthetic */ void m5587xa84c9589() {
            CameraPreview.this.rotationChanged();
        }

        @Override // com.journeyapps.barcodescanner.RotationCallback
        public void onRotationChanged(int i) {
            CameraPreview.this.stateHandler.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.CameraPreview$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPreview.AnonymousClass4.this.m5587xa84c9589();
                }
            }, 250L);
        }
    }

    public CameraPreview(Context context) {
        super(context);
        this.useTextureView = false;
        this.previewActive = false;
        this.openedOrientation = -1;
        this.stateListeners = new ArrayList();
        this.cameraSettings = new CameraSettings();
        this.framingRect = null;
        this.previewFramingRect = null;
        this.framingRectSize = null;
        this.marginFraction = 0.1d;
        this.previewScalingStrategy = null;
        this.torchOn = false;
        this.surfaceCallback = new SurfaceHolder.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                CameraPreview.this.currentSurfaceSize = null;
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (surfaceHolder != null) {
                    CameraPreview.this.currentSurfaceSize = new Size(i2, i3);
                    CameraPreview.this.startPreviewIfReady();
                    return;
                }
                Log.e(CameraPreview.TAG, "*** WARNING *** surfaceChanged() gave us a null surface!");
            }
        };
        this.stateCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == R.id.zxing_prewiew_size_ready) {
                    CameraPreview.this.previewSized((Size) message.obj);
                    return true;
                }
                if (message.what == R.id.zxing_camera_error) {
                    Exception exc = (Exception) message.obj;
                    if (!CameraPreview.this.isActive()) {
                        return false;
                    }
                    CameraPreview.this.pause();
                    CameraPreview.this.fireState.cameraError(exc);
                    return false;
                }
                if (message.what != R.id.zxing_camera_closed) {
                    return false;
                }
                CameraPreview.this.fireState.cameraClosed();
                return false;
            }
        };
        this.rotationCallback = new AnonymousClass4();
        this.fireState = new StateListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.5
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewSized();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStarted();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStopped();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraError(exc);
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraClosed();
                }
            }
        };
        initialize(context, null, 0, 0);
    }

    public CameraPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.useTextureView = false;
        this.previewActive = false;
        this.openedOrientation = -1;
        this.stateListeners = new ArrayList();
        this.cameraSettings = new CameraSettings();
        this.framingRect = null;
        this.previewFramingRect = null;
        this.framingRectSize = null;
        this.marginFraction = 0.1d;
        this.previewScalingStrategy = null;
        this.torchOn = false;
        this.surfaceCallback = new SurfaceHolder.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                CameraPreview.this.currentSurfaceSize = null;
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (surfaceHolder != null) {
                    CameraPreview.this.currentSurfaceSize = new Size(i2, i3);
                    CameraPreview.this.startPreviewIfReady();
                    return;
                }
                Log.e(CameraPreview.TAG, "*** WARNING *** surfaceChanged() gave us a null surface!");
            }
        };
        this.stateCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == R.id.zxing_prewiew_size_ready) {
                    CameraPreview.this.previewSized((Size) message.obj);
                    return true;
                }
                if (message.what == R.id.zxing_camera_error) {
                    Exception exc = (Exception) message.obj;
                    if (!CameraPreview.this.isActive()) {
                        return false;
                    }
                    CameraPreview.this.pause();
                    CameraPreview.this.fireState.cameraError(exc);
                    return false;
                }
                if (message.what != R.id.zxing_camera_closed) {
                    return false;
                }
                CameraPreview.this.fireState.cameraClosed();
                return false;
            }
        };
        this.rotationCallback = new AnonymousClass4();
        this.fireState = new StateListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.5
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewSized();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStarted();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStopped();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraError(exc);
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraClosed();
                }
            }
        };
        initialize(context, attributeSet, 0, 0);
    }

    public CameraPreview(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.useTextureView = false;
        this.previewActive = false;
        this.openedOrientation = -1;
        this.stateListeners = new ArrayList();
        this.cameraSettings = new CameraSettings();
        this.framingRect = null;
        this.previewFramingRect = null;
        this.framingRectSize = null;
        this.marginFraction = 0.1d;
        this.previewScalingStrategy = null;
        this.torchOn = false;
        this.surfaceCallback = new SurfaceHolder.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                CameraPreview.this.currentSurfaceSize = null;
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i22, int i3) {
                if (surfaceHolder != null) {
                    CameraPreview.this.currentSurfaceSize = new Size(i22, i3);
                    CameraPreview.this.startPreviewIfReady();
                    return;
                }
                Log.e(CameraPreview.TAG, "*** WARNING *** surfaceChanged() gave us a null surface!");
            }
        };
        this.stateCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == R.id.zxing_prewiew_size_ready) {
                    CameraPreview.this.previewSized((Size) message.obj);
                    return true;
                }
                if (message.what == R.id.zxing_camera_error) {
                    Exception exc = (Exception) message.obj;
                    if (!CameraPreview.this.isActive()) {
                        return false;
                    }
                    CameraPreview.this.pause();
                    CameraPreview.this.fireState.cameraError(exc);
                    return false;
                }
                if (message.what != R.id.zxing_camera_closed) {
                    return false;
                }
                CameraPreview.this.fireState.cameraClosed();
                return false;
            }
        };
        this.rotationCallback = new AnonymousClass4();
        this.fireState = new StateListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.5
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewSized();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStarted();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStopped();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraError(exc);
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraClosed();
                }
            }
        };
        initialize(context, attributeSet, i, 0);
    }

    private void initialize(Context context, AttributeSet attributeSet, int i, int i2) {
        if (getBackground() == null) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        initializeAttributes(attributeSet);
        this.windowManager = (WindowManager) context.getSystemService("window");
        this.stateHandler = new Handler(this.stateCallback);
        this.rotationListener = new RotationListener();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setupSurfaceView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initializeAttributes(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.zxing_camera_preview);
        int dimension = (int) obtainStyledAttributes.getDimension(R.styleable.zxing_camera_preview_zxing_framing_rect_width, -1.0f);
        int dimension2 = (int) obtainStyledAttributes.getDimension(R.styleable.zxing_camera_preview_zxing_framing_rect_height, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.framingRectSize = new Size(dimension, dimension2);
        }
        this.useTextureView = obtainStyledAttributes.getBoolean(R.styleable.zxing_camera_preview_zxing_use_texture_view, true);
        int integer = obtainStyledAttributes.getInteger(R.styleable.zxing_camera_preview_zxing_preview_scaling_strategy, -1);
        if (integer == 1) {
            this.previewScalingStrategy = new CenterCropStrategy();
        } else if (integer == 2) {
            this.previewScalingStrategy = new FitCenterStrategy();
        } else if (integer == 3) {
            this.previewScalingStrategy = new FitXYStrategy();
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rotationChanged() {
        if (!isActive() || getDisplayRotation() == this.openedOrientation) {
            return;
        }
        pause();
        resume();
    }

    private void setupSurfaceView() {
        if (this.useTextureView) {
            TextureView textureView = new TextureView(getContext());
            this.textureView = textureView;
            textureView.setSurfaceTextureListener(surfaceTextureListener());
            addView(this.textureView);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.surfaceView = surfaceView;
        surfaceView.getHolder().addCallback(this.surfaceCallback);
        addView(this.surfaceView);
    }

    public void addStateListener(StateListener stateListener) {
        this.stateListeners.add(stateListener);
    }

    private void calculateFrames() {
        Size size;
        if (this.containerSize == null || (size = this.previewSize) == null || this.displayConfiguration == null) {
            this.previewFramingRect = null;
            this.framingRect = null;
            this.surfaceRect = null;
            throw new IllegalStateException("containerSize or previewSize is not set yet");
        }
        int i = size.width;
        int i2 = this.previewSize.height;
        int i3 = this.containerSize.width;
        int i4 = this.containerSize.height;
        Rect scalePreview = this.displayConfiguration.scalePreview(this.previewSize);
        if (scalePreview.width() <= 0 || scalePreview.height() <= 0) {
            return;
        }
        this.surfaceRect = scalePreview;
        this.framingRect = calculateFramingRect(new Rect(0, 0, i3, i4), this.surfaceRect);
        Rect rect = new Rect(this.framingRect);
        rect.offset(-this.surfaceRect.left, -this.surfaceRect.top);
        Rect rect2 = new Rect((rect.left * i) / this.surfaceRect.width(), (rect.top * i2) / this.surfaceRect.height(), (rect.right * i) / this.surfaceRect.width(), (rect.bottom * i2) / this.surfaceRect.height());
        this.previewFramingRect = rect2;
        if (rect2.width() <= 0 || this.previewFramingRect.height() <= 0) {
            this.previewFramingRect = null;
            this.framingRect = null;
            Log.w(TAG, "Preview frame is too small");
            return;
        }
        this.fireState.previewSized();
    }

    public void setTorch(boolean z) {
        this.torchOn = z;
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null) {
            cameraInstance.setTorch(z);
        }
    }

    public void changeCameraParameters(CameraParametersCallback cameraParametersCallback) {
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null) {
            cameraInstance.changeCameraParameters(cameraParametersCallback);
        }
    }

    private void containerSized(Size size) {
        this.containerSize = size;
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance == null || cameraInstance.getDisplayConfiguration() != null) {
            return;
        }
        DisplayConfiguration displayConfiguration = new DisplayConfiguration(getDisplayRotation(), size);
        this.displayConfiguration = displayConfiguration;
        displayConfiguration.setPreviewScalingStrategy(getPreviewScalingStrategy());
        this.cameraInstance.setDisplayConfiguration(this.displayConfiguration);
        this.cameraInstance.configureCamera();
        boolean z = this.torchOn;
        if (z) {
            this.cameraInstance.setTorch(z);
        }
    }

    public PreviewScalingStrategy getPreviewScalingStrategy() {
        PreviewScalingStrategy previewScalingStrategy = this.previewScalingStrategy;
        if (previewScalingStrategy != null) {
            return previewScalingStrategy;
        }
        if (this.textureView != null) {
            return new CenterCropStrategy();
        }
        return new FitCenterStrategy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void previewSized(Size size) {
        this.previewSize = size;
        if (this.containerSize != null) {
            calculateFrames();
            requestLayout();
            startPreviewIfReady();
        }
    }

    protected Matrix calculateTextureTransform(Size size, Size size2) {
        float f;
        float f2 = size.width / size.height;
        float f3 = size2.width / size2.height;
        float f4 = 1.0f;
        if (f2 < f3) {
            float f5 = f3 / f2;
            f = 1.0f;
            f4 = f5;
        } else {
            f = f2 / f3;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f4, f);
        matrix.postTranslate((size.width - (size.width * f4)) / 2.0f, (size.height - (size.height * f)) / 2.0f);
        return matrix;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPreviewIfReady() {
        Size size = this.currentSurfaceSize;
        if (size == null || this.previewSize == null || this.surfaceRect == null) {
            return;
        }
        if (this.surfaceView != null && size.equals(new Size(this.surfaceRect.width(), this.surfaceRect.height()))) {
            startCameraPreview(new CameraSurface(this.surfaceView.getHolder()));
            return;
        }
        TextureView textureView = this.textureView;
        if (textureView == null || textureView.getSurfaceTexture() == null) {
            return;
        }
        if (this.previewSize != null) {
            this.textureView.setTransform(calculateTextureTransform(new Size(this.textureView.getWidth(), this.textureView.getHeight()), this.previewSize));
        }
        startCameraPreview(new CameraSurface(this.textureView.getSurfaceTexture()));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        containerSized(new Size(i3 - i, i4 - i2));
        SurfaceView surfaceView = this.surfaceView;
        if (surfaceView == null) {
            TextureView textureView = this.textureView;
            if (textureView != null) {
                textureView.layout(0, 0, getWidth(), getHeight());
                return;
            }
            return;
        }
        Rect rect = this.surfaceRect;
        if (rect == null) {
            surfaceView.layout(0, 0, getWidth(), getHeight());
        } else {
            surfaceView.layout(rect.left, this.surfaceRect.top, this.surfaceRect.right, this.surfaceRect.bottom);
        }
    }

    public void resume() {
        Util.validateMainThread();
        Log.d(TAG, "resume()");
        initCamera();
        if (this.currentSurfaceSize != null) {
            startPreviewIfReady();
        } else {
            SurfaceView surfaceView = this.surfaceView;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.surfaceCallback);
            } else {
                TextureView textureView = this.textureView;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        surfaceTextureListener().onSurfaceTextureAvailable(this.textureView.getSurfaceTexture(), this.textureView.getWidth(), this.textureView.getHeight());
                    } else {
                        this.textureView.setSurfaceTextureListener(surfaceTextureListener());
                    }
                }
            }
        }
        requestLayout();
        this.rotationListener.listen(getContext(), this.rotationCallback);
    }

    public void pause() {
        TextureView textureView;
        SurfaceView surfaceView;
        Util.validateMainThread();
        Log.d(TAG, "pause()");
        this.openedOrientation = -1;
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null) {
            cameraInstance.close();
            this.cameraInstance = null;
            this.previewActive = false;
        } else {
            this.stateHandler.sendEmptyMessage(R.id.zxing_camera_closed);
        }
        if (this.currentSurfaceSize == null && (surfaceView = this.surfaceView) != null) {
            surfaceView.getHolder().removeCallback(this.surfaceCallback);
        }
        if (this.currentSurfaceSize == null && (textureView = this.textureView) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.containerSize = null;
        this.previewSize = null;
        this.previewFramingRect = null;
        this.rotationListener.stop();
        this.fireState.previewStopped();
    }

    public void pauseAndWait() {
        CameraInstance cameraInstance = getCameraInstance();
        pause();
        long nanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.isCameraClosed() && System.nanoTime() - nanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public void setMarginFraction(double d) {
        if (d >= 0.5d) {
            throw new IllegalArgumentException("The margin fraction must be less than 0.5");
        }
        this.marginFraction = d;
    }

    private int getDisplayRotation() {
        return this.windowManager.getDefaultDisplay().getRotation();
    }

    private void initCamera() {
        if (this.cameraInstance != null) {
            Log.w(TAG, "initCamera called twice");
            return;
        }
        CameraInstance createCameraInstance = createCameraInstance();
        this.cameraInstance = createCameraInstance;
        createCameraInstance.setReadyHandler(this.stateHandler);
        this.cameraInstance.open();
        this.openedOrientation = getDisplayRotation();
    }

    protected CameraInstance createCameraInstance() {
        CameraInstance cameraInstance = new CameraInstance(getContext());
        cameraInstance.setCameraSettings(this.cameraSettings);
        return cameraInstance;
    }

    private void startCameraPreview(CameraSurface cameraSurface) {
        if (this.previewActive || this.cameraInstance == null) {
            return;
        }
        Log.i(TAG, "Starting preview");
        this.cameraInstance.setSurface(cameraSurface);
        this.cameraInstance.startPreview();
        this.previewActive = true;
        previewStarted();
        this.fireState.previewStarted();
    }

    protected Rect calculateFramingRect(Rect rect, Rect rect2) {
        Rect rect3 = new Rect(rect);
        rect3.intersect(rect2);
        if (this.framingRectSize != null) {
            rect3.inset(Math.max(0, (rect3.width() - this.framingRectSize.width) / 2), Math.max(0, (rect3.height() - this.framingRectSize.height) / 2));
            return rect3;
        }
        int min = (int) Math.min(rect3.width() * this.marginFraction, rect3.height() * this.marginFraction);
        rect3.inset(min, min);
        if (rect3.height() > rect3.width()) {
            rect3.inset(0, (rect3.height() - rect3.width()) / 2);
        }
        return rect3;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", onSaveInstanceState);
        bundle.putBoolean("torch", this.torchOn);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("super"));
        setTorch(bundle.getBoolean("torch"));
    }

    public boolean isCameraClosed() {
        CameraInstance cameraInstance = this.cameraInstance;
        return cameraInstance == null || cameraInstance.isCameraClosed();
    }
}
