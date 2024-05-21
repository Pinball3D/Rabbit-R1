package com.journeyapps.barcodescanner;

import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;

/* loaded from: classes3.dex */
public class RotationListener {
    private RotationCallback callback;
    private int lastRotation;
    private OrientationEventListener orientationEventListener;
    private WindowManager windowManager;

    public void listen(Context context, RotationCallback rotationCallback) {
        stop();
        Context applicationContext = context.getApplicationContext();
        this.callback = rotationCallback;
        this.windowManager = (WindowManager) applicationContext.getSystemService("window");
        OrientationEventListener orientationEventListener = new OrientationEventListener(applicationContext, 3) { // from class: com.journeyapps.barcodescanner.RotationListener.1
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                int rotation;
                WindowManager windowManager = RotationListener.this.windowManager;
                RotationCallback rotationCallback2 = RotationListener.this.callback;
                if (RotationListener.this.windowManager == null || rotationCallback2 == null || (rotation = windowManager.getDefaultDisplay().getRotation()) == RotationListener.this.lastRotation) {
                    return;
                }
                RotationListener.this.lastRotation = rotation;
                rotationCallback2.onRotationChanged(rotation);
            }
        };
        this.orientationEventListener = orientationEventListener;
        orientationEventListener.enable();
        this.lastRotation = this.windowManager.getDefaultDisplay().getRotation();
    }

    public void stop() {
        OrientationEventListener orientationEventListener = this.orientationEventListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        this.orientationEventListener = null;
        this.windowManager = null;
        this.callback = null;
    }
}
