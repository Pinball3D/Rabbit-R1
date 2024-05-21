package tech.rabbit.r1launcher.rabbit;

import android.app.Activity;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import kotlin.Metadata;
import tech.rabbit.common.utils.RabbitCommon;

/* compiled from: ScreenOffOp.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/ScreenOffOp;", "", "()V", "TAG", "", "isHomePage", "", "isScreenOn", "()Z", "setScreenOn", "(Z)V", "", "isHome", "screenOff", "startJudgeNeedScreenOff", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScreenOffOp {
    private static final String TAG = "ScreenOffOp";
    public static final ScreenOffOp INSTANCE = new ScreenOffOp();
    private static boolean isHomePage = true;
    private static boolean isScreenOn = true;
    public static final int $stable = 8;

    public final void isHomePage(boolean isHome) {
        isHomePage = isHome;
    }

    public final boolean isScreenOn() {
        return isScreenOn;
    }

    public final void setScreenOn(boolean z) {
        isScreenOn = z;
    }

    private ScreenOffOp() {
    }

    public final void startJudgeNeedScreenOff() {
        if (isHomePage) {
            screenOff();
        }
    }

    public final void screenOff() {
        if (KeyEventHandler.INSTANCE.getLastUpKey() != 26) {
            return;
        }
        try {
            Method declaredMethod = PowerManager.class.getDeclaredMethod("goToSleep", Long.TYPE);
            Activity sWeakActivity = RabbitCommon.INSTANCE.getSWeakActivity();
            declaredMethod.invoke(sWeakActivity != null ? (PowerManager) sWeakActivity.getSystemService(PowerManager.class) : null, Long.valueOf(SystemClock.uptimeMillis()));
            Log.i("screenoff---", "goToSleep");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
