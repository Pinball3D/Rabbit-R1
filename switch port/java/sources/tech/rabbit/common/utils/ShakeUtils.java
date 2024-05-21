package tech.rabbit.common.utils;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ShakeUtils implements SensorEventListener {
    private static final int MIN_SHAKE_INTERVAL = 350;
    private static final int SHAKE_INTERVAL_MILLSECOND = 55;
    private static int SPEED_SHAKE_MILLSECONDS = 400;
    private static volatile ShakeUtils instance;
    private ArrayList<OnShakeListener> mOnShakeListeners = null;
    private long mLastShakeTime = 0;
    private long mLastUpdateTime = 0;
    private float mLastX = 0.0f;
    private float mLastY = 0.0f;
    private float mLastZ = 0.0f;
    private boolean shakeEnable = true;

    /* loaded from: classes3.dex */
    public interface OnShakeListener {
        void onShake(double d);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public void setShakeEnable(boolean z) {
        this.shakeEnable = z;
    }

    public static ShakeUtils getInstance() {
        if (instance == null) {
            synchronized (ShakeUtils.class) {
                if (instance == null) {
                    instance = new ShakeUtils();
                }
            }
        }
        return instance;
    }

    public void setup(Context context) {
        SensorManager sensorManager = (SensorManager) context.getApplicationContext().getSystemService("sensor");
        sensorManager.registerListener(this, sensorManager.getDefaultSensor(1), 2);
        this.mOnShakeListeners = new ArrayList<>();
    }

    public void bindShakeListener(OnShakeListener onShakeListener) {
        if (onShakeListener != null) {
            this.mOnShakeListeners.add(onShakeListener);
        }
    }

    public void unBindShakeListener(OnShakeListener onShakeListener) {
        this.mOnShakeListeners.remove(onShakeListener);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.mLastUpdateTime;
        if (j >= 55 && sensorEvent.values.length >= 3) {
            this.mLastUpdateTime = currentTimeMillis;
            float f = sensorEvent.values[0];
            float f2 = sensorEvent.values[1];
            float f3 = sensorEvent.values[2];
            float f4 = f - this.mLastX;
            float f5 = f2 - this.mLastY;
            float f6 = f3 - this.mLastZ;
            this.mLastX = f;
            this.mLastY = f2;
            this.mLastZ = f3;
            double sqrt = (Math.sqrt(((f4 * f4) + (f5 * f5)) + (f6 * f6)) * 1000.0d) / j;
            if (sqrt >= SPEED_SHAKE_MILLSECONDS) {
                startShake(sqrt);
            }
        }
    }

    private void startShake(double d) {
        if (this.shakeEnable) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.mLastShakeTime < 350) {
                return;
            }
            this.mLastShakeTime = currentTimeMillis;
            for (int i = 0; i < this.mOnShakeListeners.size(); i++) {
                this.mOnShakeListeners.get(i).onShake(d);
            }
        }
    }
}
