package tech.rabbit.r1launcher.utils;

import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import io.sentry.HttpStatusCodeRange;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KeyCodeExtension.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u001e\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\u0010\tJ \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Ltech/rabbit/r1launcher/utils/OnSafeConfirmKeyListener;", "Landroid/view/View$OnKeyListener;", "defaultInterval", "", "onSafeKey", "Lkotlin/Function3;", "Landroid/view/View;", "Landroid/view/KeyEvent;", "", "(ILkotlin/jvm/functions/Function3;)V", "lastTimeClicked", "", "onKey", "", "v", "keyCode", NotificationCompat.CATEGORY_EVENT, "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OnSafeConfirmKeyListener implements View.OnKeyListener {
    public static final int $stable = 8;
    private int defaultInterval;
    private long lastTimeClicked;
    private final Function3<View, Integer, KeyEvent, Unit> onSafeKey;

    /* JADX WARN: Multi-variable type inference failed */
    public OnSafeConfirmKeyListener(int i, Function3<? super View, ? super Integer, ? super KeyEvent, Unit> onSafeKey) {
        Intrinsics.checkNotNullParameter(onSafeKey, "onSafeKey");
        this.defaultInterval = i;
        this.onSafeKey = onSafeKey;
    }

    public /* synthetic */ OnSafeConfirmKeyListener(int i, Function3 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? HttpStatusCodeRange.DEFAULT_MIN : i, function3);
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View v, int keyCode, KeyEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        if (!KeyCodeExtensionKt.isKeyCodeConfirm(keyCode) || event.getAction() != 1 || SystemClock.elapsedRealtime() - this.lastTimeClicked < this.defaultInterval) {
            return false;
        }
        this.lastTimeClicked = SystemClock.elapsedRealtime();
        this.onSafeKey.invoke(v, Integer.valueOf(keyCode), event);
        return true;
    }
}
