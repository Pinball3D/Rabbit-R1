package com.google.zxing.client.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.google.zxing.client.android.InactivityTimer;

/* loaded from: classes3.dex */
public final class InactivityTimer {
    private static final long INACTIVITY_DELAY_MS = 300000;
    private static final String TAG = "InactivityTimer";
    private Runnable callback;
    private final Context context;
    private boolean onBattery;
    private boolean registered = false;
    private final BroadcastReceiver powerStatusReceiver = new PowerStatusReceiver();
    private Handler handler = new Handler();

    public InactivityTimer(Context context, Runnable runnable) {
        this.context = context;
        this.callback = runnable;
    }

    public void activity() {
        cancelCallback();
        if (this.onBattery) {
            this.handler.postDelayed(this.callback, 300000L);
        }
    }

    public void start() {
        registerReceiver();
        activity();
    }

    public void cancel() {
        cancelCallback();
        unregisterReceiver();
    }

    private void unregisterReceiver() {
        if (this.registered) {
            this.context.unregisterReceiver(this.powerStatusReceiver);
            this.registered = false;
        }
    }

    private void registerReceiver() {
        if (this.registered) {
            return;
        }
        this.context.registerReceiver(this.powerStatusReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.registered = true;
    }

    private void cancelCallback() {
        this.handler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBattery(boolean z) {
        this.onBattery = z;
        if (this.registered) {
            activity();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class PowerStatusReceiver extends BroadcastReceiver {
        private PowerStatusReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                final boolean z = intent.getIntExtra("plugged", -1) <= 0;
                InactivityTimer.this.handler.post(new Runnable() { // from class: com.google.zxing.client.android.InactivityTimer$PowerStatusReceiver$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        InactivityTimer.PowerStatusReceiver.this.m5584x4df57f73(z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onReceive$0$com-google-zxing-client-android-InactivityTimer$PowerStatusReceiver, reason: not valid java name */
        public /* synthetic */ void m5584x4df57f73(boolean z) {
            InactivityTimer.this.onBattery(z);
        }
    }
}
