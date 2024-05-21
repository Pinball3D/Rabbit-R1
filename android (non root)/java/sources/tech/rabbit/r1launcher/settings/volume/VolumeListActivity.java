package tech.rabbit.r1launcher.settings.volume;

import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentTransaction;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.about.VolumeSettingFragment;

/* compiled from: VolumeListActivity.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\u001a\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0013\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Ltech/rabbit/r1launcher/settings/volume/VolumeListActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "settingListFragment", "Ltech/rabbit/r1launcher/settings/about/VolumeSettingFragment;", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onKeyDown", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "onTouchEvent", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VolumeListActivity extends AppCompatActivity {
    public static final int $stable = 8;
    private final VolumeSettingFragment settingListFragment = new VolumeSettingFragment();

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
        setContentView(R.layout.activity_volume);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "beginTransaction(...)");
        beginTransaction.replace(R.id.fl_volume_container, this.settingListFragment);
        beginTransaction.commitAllowingStateLoss();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return this.settingListFragment.onKeyCodeEventUp(keyCode, event);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return this.settingListFragment.onKeyCodeEventDown(keyCode, event);
    }
}
