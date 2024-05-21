package tech.rabbit.r1launcher.settings.power_off;

import android.app.Activity;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import tech.rabbit.r1launcher.R;

/* compiled from: PowerOffActivity.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0003J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Ltech/rabbit/r1launcher/settings/power_off/PowerOffActivity;", "Landroid/app/Activity;", "()V", "powerOffFragment", "Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;", "getPowerOffFragment", "()Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;", "powerOffFragment$delegate", "Lkotlin/Lazy;", "changeToPowerOffFragment", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PowerOffActivity extends Activity {
    public static final int $stable = 8;

    /* renamed from: powerOffFragment$delegate, reason: from kotlin metadata */
    private final Lazy powerOffFragment = LazyKt.lazy(new Function0<PowerOffFragment>() { // from class: tech.rabbit.r1launcher.settings.power_off.PowerOffActivity$powerOffFragment$2
        @Override // kotlin.jvm.functions.Function0
        public final PowerOffFragment invoke() {
            return new PowerOffFragment();
        }
    });

    private final PowerOffFragment getPowerOffFragment() {
        return (PowerOffFragment) this.powerOffFragment.getValue();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings_page);
        changeToPowerOffFragment();
    }

    private final void changeToPowerOffFragment() {
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.root_layout, getPowerOffFragment());
        beginTransaction.commit();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == 26 || keyCode == 66 || keyCode == 80) {
            getPowerOffFragment().onKeyCodeEvent(keyCode, event);
        }
        return super.onKeyUp(keyCode, event);
    }
}
