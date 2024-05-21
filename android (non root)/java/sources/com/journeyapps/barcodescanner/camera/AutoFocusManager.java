package com.journeyapps.barcodescanner.camera;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.journeyapps.barcodescanner.camera.AutoFocusManager;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes3.dex */
public final class AutoFocusManager {
    private static final long AUTO_FOCUS_INTERVAL_MS = 2000;
    private static final Collection<String> FOCUS_MODES_CALLING_AF;
    private static final String TAG = "AutoFocusManager";
    private int MESSAGE_FOCUS = 1;
    private final Camera.AutoFocusCallback autoFocusCallback;
    private final Camera camera;
    private final Handler.Callback focusHandlerCallback;
    private boolean focusing;
    private Handler handler;
    private boolean stopped;
    private final boolean useAutoFocus;

    static {
        ArrayList arrayList = new ArrayList(2);
        FOCUS_MODES_CALLING_AF = arrayList;
        arrayList.add("auto");
        arrayList.add("macro");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.journeyapps.barcodescanner.camera.AutoFocusManager$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Camera.AutoFocusCallback {
        AnonymousClass2() {
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, Camera camera) {
            AutoFocusManager.this.handler.post(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.AutoFocusManager$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AutoFocusManager.AnonymousClass2.this.m5592x7b23e9dd();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAutoFocus$0$com-journeyapps-barcodescanner-camera-AutoFocusManager$2, reason: not valid java name */
        public /* synthetic */ void m5592x7b23e9dd() {
            AutoFocusManager.this.focusing = false;
            AutoFocusManager.this.autoFocusAgainLater();
        }
    }

    public AutoFocusManager(Camera camera, CameraSettings cameraSettings) {
        Handler.Callback callback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.camera.AutoFocusManager.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what != AutoFocusManager.this.MESSAGE_FOCUS) {
                    return false;
                }
                AutoFocusManager.this.focus();
                return true;
            }
        };
        this.focusHandlerCallback = callback;
        this.autoFocusCallback = new AnonymousClass2();
        this.handler = new Handler(callback);
        this.camera = camera;
        String focusMode = camera.getParameters().getFocusMode();
        boolean z = cameraSettings.isAutoFocusEnabled() && FOCUS_MODES_CALLING_AF.contains(focusMode);
        this.useAutoFocus = z;
        Log.i(TAG, "Current focus mode '" + focusMode + "'; use auto focus? " + z);
        start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void autoFocusAgainLater() {
        if (!this.stopped && !this.handler.hasMessages(this.MESSAGE_FOCUS)) {
            Handler handler = this.handler;
            handler.sendMessageDelayed(handler.obtainMessage(this.MESSAGE_FOCUS), 2000L);
        }
    }

    public void start() {
        this.stopped = false;
        focus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void focus() {
        if (!this.useAutoFocus || this.stopped || this.focusing) {
            return;
        }
        try {
            this.camera.autoFocus(this.autoFocusCallback);
            this.focusing = true;
        } catch (RuntimeException e) {
            Log.w(TAG, "Unexpected exception while focusing", e);
            autoFocusAgainLater();
        }
    }

    private void cancelOutstandingTask() {
        this.handler.removeMessages(this.MESSAGE_FOCUS);
    }

    public void stop() {
        this.stopped = true;
        this.focusing = false;
        cancelOutstandingTask();
        if (this.useAutoFocus) {
            try {
                this.camera.cancelAutoFocus();
            } catch (RuntimeException e) {
                Log.w(TAG, "Unexpected exception while cancelling focusing", e);
            }
        }
    }
}
