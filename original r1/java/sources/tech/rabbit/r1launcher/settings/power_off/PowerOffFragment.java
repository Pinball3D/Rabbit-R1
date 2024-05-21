package tech.rabbit.r1launcher.settings.power_off;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;
import tech.rabbit.r1launcher.widget.SettingTitle;

/* compiled from: PowerOffFragment.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u001c\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Ltech/rabbit/r1launcher/settings/power_off/PowerOffFragment;", "Landroid/app/Fragment;", "()V", "settingTitle", "Ltech/rabbit/r1launcher/widget/SettingTitle;", "tvConfirm", "Landroid/widget/TextView;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onKeyCodeEvent", "", "keyCode", "", "keyEvent", "Landroid/view/KeyEvent;", "onViewCreated", "", "view", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PowerOffFragment extends Fragment {
    public static final int $stable = 8;
    private SettingTitle settingTitle;
    private TextView tvConfirm;

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_power_off, container, false);
        if (inflate == null) {
            return null;
        }
        View findViewById = inflate.findViewById(R.id.setting_title);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.settingTitle = (SettingTitle) findViewById;
        View findViewById2 = inflate.findViewById(R.id.tv_confirm);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.tvConfirm = (TextView) findViewById2;
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        SettingTitle settingTitle = this.settingTitle;
        if (settingTitle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("settingTitle");
            settingTitle = null;
        }
        settingTitle.setOnKeyDownCallback(new Function1<Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.power_off.PowerOffFragment$onViewCreated$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                if (i == 26 || i == 66 || i == 80) {
                    Activity activity = PowerOffFragment.this.getActivity();
                    PowerOffActivity powerOffActivity = activity instanceof PowerOffActivity ? (PowerOffActivity) activity : null;
                    if (powerOffActivity != null) {
                        powerOffActivity.finish();
                    }
                }
            }
        });
    }

    public final boolean onKeyCodeEvent(int keyCode, KeyEvent keyEvent) {
        if (keyCode != 26 && keyCode != 66 && keyCode != 80) {
            return false;
        }
        TextView textView = this.tvConfirm;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvConfirm");
            textView = null;
        }
        if (!textView.isFocused()) {
            return true;
        }
        SystemControllerUtil.INSTANCE.shutdownDevice();
        return true;
    }
}
