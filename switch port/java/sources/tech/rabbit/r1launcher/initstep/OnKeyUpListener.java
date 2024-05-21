package tech.rabbit.r1launcher.initstep;

import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;

/* compiled from: InitStepActivity.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "", "onKeyDown", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface OnKeyUpListener {

    /* compiled from: InitStepActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void onKeyDown(OnKeyUpListener onKeyUpListener, int i, KeyEvent keyEvent) {
        }
    }

    void onKeyDown(int keyCode, KeyEvent event);

    void onKeyUp(int keyCode, KeyEvent event);
}
