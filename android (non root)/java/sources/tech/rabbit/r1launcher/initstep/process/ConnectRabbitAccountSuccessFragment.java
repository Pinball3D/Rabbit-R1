package tech.rabbit.r1launcher.initstep.process;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment;
import tech.rabbit.r1launcher.initstep.utils.Constants;

/* compiled from: ConnectRabbitAccountSuccessFragment.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "()V", "lastClickTime", "", "username", "", "onKeyUp", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "setUsername", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConnectRabbitAccountSuccessFragment extends Fragment implements OnKeyUpListener {
    public static final int $stable = 8;
    private long lastClickTime;
    private String username;

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    public ConnectRabbitAccountSuccessFragment() {
        super(R.layout.fragment_connect_rabbit_account_success);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        TextView textView = (TextView) requireView().findViewById(R.id.tv_continue);
        textView.setSelected(true);
        textView.setTextSize(2, 30.0f);
        ((TextView) requireView().findViewById(R.id.tv_status)).setText(requireContext().getString(R.string.text_goto_rabbit_activate_account_success, this.username));
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastClickTime < 500) {
            return;
        }
        this.lastClickTime = currentTimeMillis;
        FragmentActivity requireActivity = requireActivity();
        InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
        if (initStepActivity == null) {
            return;
        }
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
            if (initStepActivity.isBackShowing()) {
                initStepActivity.hideBack();
                initStepActivity.gotoConnectNetwork(ConnectNetworkFragment.ShowType.SelectNetworkType.INSTANCE);
                return;
            } else {
                initStepActivity.gotoGuidePasscode();
                return;
            }
        }
        if (keyCode == 19) {
            initStepActivity.showBack(R.string.text_init_step_1_name);
            TextView textView = (TextView) requireView().findViewById(R.id.tv_continue);
            textView.setSelected(false);
            textView.setTextSize(2, 24.0f);
            return;
        }
        if (keyCode == 20) {
            initStepActivity.hideBack();
            TextView textView2 = (TextView) requireView().findViewById(R.id.tv_continue);
            textView2.setSelected(true);
            textView2.setTextSize(2, 30.0f);
        }
    }

    public final void setUsername(String username) {
        String str = username;
        if (str == null || str.length() == 0) {
            return;
        }
        this.username = username;
    }
}
