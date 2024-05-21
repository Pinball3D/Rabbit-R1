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
import tech.rabbit.r1launcher.initstep.model.ScanQrCodeResult;
import tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment;
import tech.rabbit.r1launcher.initstep.utils.Constants;

/* compiled from: ConnectRabbitAccountFailureFragment.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "()V", "errorType", "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;", "lastClickTime", "", "onDestroyView", "", "onKeyUp", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "setErrorType", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConnectRabbitAccountFailureFragment extends Fragment implements OnKeyUpListener {
    public static final int $stable = 8;
    private ScanQrCodeResult.ErrorType errorType;
    private long lastClickTime;

    public final void setErrorType(ScanQrCodeResult.ErrorType errorType) {
        Intrinsics.checkNotNullParameter(errorType, "errorType");
        this.errorType = errorType;
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    public ConnectRabbitAccountFailureFragment() {
        super(R.layout.fragment_connect_rabbit_account_failure);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        StringBuilder sb = new StringBuilder(getString(R.string.unable_to_link_your_account));
        if (this.errorType != null) {
            StringBuilder append = sb.append("\n");
            StringBuilder sb2 = new StringBuilder("error code: #");
            ScanQrCodeResult.ErrorType errorType = this.errorType;
            append.append(sb2.append(errorType != null ? Integer.valueOf(errorType.ordinal() + 1) : null).toString());
        }
        ((TextView) requireView().findViewById(R.id.tv_tips)).setText(sb);
        TextView textView = (TextView) requireView().findViewById(R.id.tv_continue);
        textView.setSelected(true);
        textView.setTextSize(2, 30.0f);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.errorType = null;
        super.onDestroyView();
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        InitStepActivity initStepActivity;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastClickTime < 500) {
            return;
        }
        this.lastClickTime = currentTimeMillis;
        if (!Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
            if (keyCode == 19) {
                FragmentActivity requireActivity = requireActivity();
                initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
                if (initStepActivity != null) {
                    initStepActivity.showBack(R.string.text_init_step_1_name);
                }
                TextView textView = (TextView) requireView().findViewById(R.id.tv_continue);
                textView.setSelected(false);
                textView.setTextSize(2, 24.0f);
                return;
            }
            if (keyCode == 20) {
                FragmentActivity requireActivity2 = requireActivity();
                initStepActivity = requireActivity2 instanceof InitStepActivity ? (InitStepActivity) requireActivity2 : null;
                if (initStepActivity != null) {
                    initStepActivity.hideBack();
                }
                TextView textView2 = (TextView) requireView().findViewById(R.id.tv_continue);
                textView2.setSelected(true);
                textView2.setTextSize(2, 30.0f);
                return;
            }
            return;
        }
        FragmentActivity requireActivity3 = requireActivity();
        InitStepActivity initStepActivity2 = requireActivity3 instanceof InitStepActivity ? (InitStepActivity) requireActivity3 : null;
        if (initStepActivity2 != null && initStepActivity2.isBackShowing()) {
            FragmentActivity requireActivity4 = requireActivity();
            InitStepActivity initStepActivity3 = requireActivity4 instanceof InitStepActivity ? (InitStepActivity) requireActivity4 : null;
            if (initStepActivity3 != null) {
                initStepActivity3.hideBack();
            }
            FragmentActivity requireActivity5 = requireActivity();
            initStepActivity = requireActivity5 instanceof InitStepActivity ? (InitStepActivity) requireActivity5 : null;
            if (initStepActivity != null) {
                initStepActivity.gotoConnectNetwork(ConnectNetworkFragment.ShowType.SelectNetworkType.INSTANCE);
                return;
            }
            return;
        }
        FragmentActivity requireActivity6 = requireActivity();
        initStepActivity = requireActivity6 instanceof InitStepActivity ? (InitStepActivity) requireActivity6 : null;
        if (initStepActivity != null) {
            initStepActivity.gotoConnectRabbitAccount();
        }
    }
}
