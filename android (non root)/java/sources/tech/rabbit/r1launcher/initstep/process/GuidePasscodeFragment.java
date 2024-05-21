package tech.rabbit.r1launcher.initstep.process;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.utils.Constants;

/* compiled from: GuidePasscodeFragment.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "()V", "lastClickTime", "", "tvContinue", "Landroid/widget/TextView;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GuidePasscodeFragment extends Fragment implements OnKeyUpListener {
    public static final int $stable = 8;
    private long lastClickTime;
    private TextView tvContinue;

    public GuidePasscodeFragment() {
        super(R.layout.fragment_guide_passcode);
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        TextView textView = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.tv_continue);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        TextView textView2 = (TextView) findViewById;
        this.tvContinue = textView2;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
        } else {
            textView = textView2;
        }
        textView.setSelected(true);
        return onCreateView;
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastClickTime < 500) {
            return;
        }
        this.lastClickTime = currentTimeMillis;
        TextView textView = null;
        TextView textView2 = null;
        if (keyCode == 19) {
            FragmentActivity requireActivity = requireActivity();
            InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
            if (initStepActivity != null) {
                initStepActivity.showBack(R.string.text_init_step_2_name);
            }
            TextView textView3 = this.tvContinue;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
            } else {
                textView = textView3;
            }
            textView.setSelected(false);
            return;
        }
        if (keyCode == 20) {
            FragmentActivity requireActivity2 = requireActivity();
            InitStepActivity initStepActivity2 = requireActivity2 instanceof InitStepActivity ? (InitStepActivity) requireActivity2 : null;
            if (initStepActivity2 != null) {
                initStepActivity2.hideBack();
            }
            TextView textView4 = this.tvContinue;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
            } else {
                textView2 = textView4;
            }
            textView2.setSelected(true);
            return;
        }
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
            FragmentActivity requireActivity3 = requireActivity();
            InitStepActivity initStepActivity3 = requireActivity3 instanceof InitStepActivity ? (InitStepActivity) requireActivity3 : null;
            if (initStepActivity3 != null && !initStepActivity3.isBackShowing()) {
                FragmentActivity requireActivity4 = requireActivity();
                InitStepActivity initStepActivity4 = requireActivity4 instanceof InitStepActivity ? (InitStepActivity) requireActivity4 : null;
                if (initStepActivity4 != null) {
                    initStepActivity4.gotoSetPasscode();
                    return;
                }
                return;
            }
            FragmentActivity requireActivity5 = requireActivity();
            InitStepActivity initStepActivity5 = requireActivity5 instanceof InitStepActivity ? (InitStepActivity) requireActivity5 : null;
            if (initStepActivity5 != null) {
                initStepActivity5.hideBack();
            }
            FragmentActivity requireActivity6 = requireActivity();
            Intrinsics.checkNotNull(requireActivity6, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.InitStepActivity");
            InitStepActivity.gotoConnectAccountSuccess$default((InitStepActivity) requireActivity6, null, 1, null);
        }
    }
}
