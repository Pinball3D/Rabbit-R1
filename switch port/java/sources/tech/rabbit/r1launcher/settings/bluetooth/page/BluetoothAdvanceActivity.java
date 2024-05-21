package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.os.Bundle;
import android.view.MotionEvent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentTransaction;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;

/* compiled from: BluetoothAdvanceActivity.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothAdvanceActivity extends AppCompatActivity {
    public static final int $stable = 0;

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
        setContentView(R.layout.activity_bluetooth);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction(...)");
        int i = R.id.fl_container;
        BluetoothAdvanceFragment bluetoothAdvanceFragment = new BluetoothAdvanceFragment();
        bluetoothAdvanceFragment.setArguments(new Bundle());
        Bundle arguments = bluetoothAdvanceFragment.getArguments();
        if (arguments != null) {
            arguments.putParcelable(Device.TYPE, getIntent().getParcelableExtra(Device.TYPE));
        }
        Unit unit = Unit.INSTANCE;
        beginTransaction.replace(i, bluetoothAdvanceFragment);
        beginTransaction.commit();
    }
}
