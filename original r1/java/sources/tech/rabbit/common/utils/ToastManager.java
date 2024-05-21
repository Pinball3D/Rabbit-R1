package tech.rabbit.common.utils;

import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

/* loaded from: classes3.dex */
public class ToastManager {
    static ToastManager sInstance;
    Handler handler = new Handler(Looper.getMainLooper());

    public static ToastManager getInstance() {
        if (sInstance == null) {
            synchronized (ToastManager.class) {
                if (sInstance == null) {
                    sInstance = new ToastManager();
                }
            }
        }
        return sInstance;
    }

    public void show(final CharSequence charSequence) {
        this.handler.post(new Runnable() { // from class: tech.rabbit.common.utils.ToastManager.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(RabbitCommon.sContext, charSequence, 0).show();
            }
        });
    }
}
