package tech.rabbit.r1launcher.initstep.process;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.text.HtmlCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.zxing.integration.android.IntentIntegrator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment;
import tech.rabbit.r1launcher.initstep.scanqrcode.ScanQrCodeActivity;
import tech.rabbit.r1launcher.initstep.utils.Constants;

/* compiled from: ConnectRabbitAccountFragment.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "()V", "lastClickTime", "", "onKeyUp", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConnectRabbitAccountFragment extends Fragment implements OnKeyUpListener {
    public static final int $stable = 8;
    private long lastClickTime;

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    public ConnectRabbitAccountFragment() {
        super(R.layout.fragment_connect_rabbit_account);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        TextView textView = (TextView) requireView().findViewById(R.id.tv_content);
        String string = requireContext().getString(R.string.text_goto_rabbit_activate_account);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        textView.setText(HtmlCompat.fromHtml(string, 63, null, null));
        TextView textView2 = (TextView) requireView().findViewById(R.id.tv_continue);
        textView2.setSelected(true);
        textView2.setTextSize(2, 30.0f);
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
            }
            IntentIntegrator intentIntegrator = new IntentIntegrator(initStepActivity);
            intentIntegrator.setDesiredBarcodeFormats("QR_CODE");
            intentIntegrator.setPrompt("scan qrcode");
            intentIntegrator.setBeepEnabled(false);
            intentIntegrator.setCaptureActivity(ScanQrCodeActivity.class);
            intentIntegrator.initiateScan();
            return;
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
}
