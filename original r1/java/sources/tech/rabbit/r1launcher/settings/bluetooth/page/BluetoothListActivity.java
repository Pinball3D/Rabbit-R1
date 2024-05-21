package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentTransaction;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;

/* compiled from: BluetoothListActivity.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\u0012\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothListActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "settingListFragment", "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothListActivity extends AppCompatActivity {
    public static final int $stable = 8;
    private final BluetoothSettingFragment settingListFragment = new BluetoothSettingFragment();

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return true;
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.i("TAG", "onCreate: ");
        setContentView(R.layout.activity_bluetooth);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction(...)");
        beginTransaction.replace(R.id.fl_container, this.settingListFragment);
        beginTransaction.commitAllowingStateLoss();
    }
}
