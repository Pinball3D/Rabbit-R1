package tech.rabbit.r1launcher.initstep.process;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.InitStepActivity;

/* compiled from: ConnectWifiSuccessFragment.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;", "Landroidx/fragment/app/Fragment;", "()V", "ssid", "", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "setSSID", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConnectWifiSuccessFragment extends Fragment {
    public static final int $stable = 8;
    private String ssid;

    public final void setSSID(String ssid) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        this.ssid = ssid;
    }

    public ConnectWifiSuccessFragment() {
        super(R.layout.fragment_connect_wifi_success);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        TextView textView = (TextView) view.findViewById(R.id.tv_connect_success);
        Context requireContext = requireContext();
        int i = R.string.text_connect_wifi_success;
        Object[] objArr = new Object[1];
        String str = this.ssid;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssid");
            str = null;
        }
        objArr[0] = str;
        textView.setText(requireContext.getString(i, objArr));
        FragmentActivity requireActivity = requireActivity();
        final InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
        if (initStepActivity == null) {
            return;
        }
        view.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectWifiSuccessFragment$onViewCreated$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                InitStepActivity.this.gotoConnectRabbitAccount();
            }
        }, 1200L);
    }
}
