package tech.rabbit.r1launcher.wss.reconnct;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.wss.WebSocketManager;

/* loaded from: classes3.dex */
public class WssStateMonitor {
    public static final int MSG_WHAT_RECONNECT = 0;
    static WssStateMonitor sInstance;
    Handler handler = new Handler(Looper.getMainLooper()) { // from class: tech.rabbit.r1launcher.wss.reconnct.WssStateMonitor.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            RLog.d("重连中");
            WebSocketManager.INSTANCE.connect();
        }
    };

    public static WssStateMonitor getInstance() {
        if (sInstance == null) {
            synchronized (WssStateMonitor.class) {
                if (sInstance == null) {
                    sInstance = new WssStateMonitor();
                }
            }
        }
        return sInstance;
    }

    public void startConnect() {
        this.handler.removeMessages(0);
        this.handler.sendEmptyMessageDelayed(0, 5000L);
    }
}
