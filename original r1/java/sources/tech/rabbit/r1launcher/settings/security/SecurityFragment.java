package tech.rabbit.r1launcher.settings.security;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;
import tech.rabbit.r1launcher.widget.SettingTitle;

/* compiled from: SecurityFragment.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0002J&\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)J\u001a\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\n2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006,"}, d2 = {"Ltech/rabbit/r1launcher/settings/security/SecurityFragment;", "Landroidx/fragment/app/Fragment;", "()V", "flPassCode", "Landroid/widget/FrameLayout;", "getFlPassCode", "()Landroid/widget/FrameLayout;", "setFlPassCode", "(Landroid/widget/FrameLayout;)V", "mRootView", "Landroid/view/View;", "getMRootView", "()Landroid/view/View;", "setMRootView", "(Landroid/view/View;)V", "settingTitle", "Ltech/rabbit/r1launcher/widget/SettingTitle;", "getSettingTitle", "()Ltech/rabbit/r1launcher/widget/SettingTitle;", "setSettingTitle", "(Ltech/rabbit/r1launcher/widget/SettingTitle;)V", "tvPassCode", "Landroid/widget/TextView;", "getTvPassCode", "()Landroid/widget/TextView;", "setTvPassCode", "(Landroid/widget/TextView;)V", "doInit", "", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onKeyCodeEvent", "", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onViewCreated", "view", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SecurityFragment extends Fragment {
    public static final int $stable = 8;
    private FrameLayout flPassCode;
    private View mRootView;
    private SettingTitle settingTitle;
    private TextView tvPassCode;

    public final FrameLayout getFlPassCode() {
        return this.flPassCode;
    }

    public final View getMRootView() {
        return this.mRootView;
    }

    public final SettingTitle getSettingTitle() {
        return this.settingTitle;
    }

    public final TextView getTvPassCode() {
        return this.tvPassCode;
    }

    public final void setFlPassCode(FrameLayout frameLayout) {
        this.flPassCode = frameLayout;
    }

    public final void setMRootView(View view) {
        this.mRootView = view;
    }

    public final void setSettingTitle(SettingTitle settingTitle) {
        this.settingTitle = settingTitle;
    }

    public final void setTvPassCode(TextView textView) {
        this.tvPassCode = textView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        doInit();
    }

    private final void doInit() {
        SettingTitle settingTitle = this.settingTitle;
        if (settingTitle != null) {
            settingTitle.setOnKeyDownCallback(new Function1<Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.security.SecurityFragment$doInit$1
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
                    Context requireContext = SecurityFragment.this.requireContext();
                    Intrinsics.checkNotNull(requireContext, "null cannot be cast to non-null type tech.rabbit.r1launcher.settings.security.SecurityActivity");
                    ((SecurityActivity) requireContext).finish();
                }
            });
        }
        TextView textView = this.tvPassCode;
        if (textView != null) {
            textView.setFocusable(1);
        }
        TextView textView2 = this.tvPassCode;
        if (textView2 != null) {
            textView2.setFocusableInTouchMode(true);
        }
        TextView textView3 = this.tvPassCode;
        if (textView3 != null) {
            textView3.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.security.SecurityFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    SecurityFragment.doInit$lambda$1(SecurityFragment.this, view, z);
                }
            });
        }
        TextView textView4 = this.tvPassCode;
        if (textView4 != null) {
            textView4.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doInit$lambda$1(SecurityFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            TextView textView = this$0.tvPassCode;
            if (textView != null) {
                textView.setTextSize(0, 60.0f);
            }
            TextView textView2 = this$0.tvPassCode;
            if (textView2 != null) {
                textView2.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            }
            TextView textView3 = this$0.tvPassCode;
            ViewGroup.LayoutParams layoutParams = textView3 != null ? textView3.getLayoutParams() : null;
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (marginLayoutParams != null) {
                marginLayoutParams.leftMargin = 12;
            }
            if (marginLayoutParams != null) {
                marginLayoutParams.rightMargin = 12;
            }
            FrameLayout frameLayout = this$0.flPassCode;
            ViewGroup.LayoutParams layoutParams2 = frameLayout != null ? frameLayout.getLayoutParams() : null;
            if (layoutParams2 != null) {
                layoutParams2.height = 72;
            }
            FrameLayout frameLayout2 = this$0.flPassCode;
            if (frameLayout2 == null) {
                return;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(ColorStateList.valueOf(this$0.requireContext().getColor(R.color.orange_ff4d00)));
            gradientDrawable.setCornerRadius(20.0f);
            frameLayout2.setBackground(gradientDrawable);
            return;
        }
        TextView textView4 = this$0.tvPassCode;
        if (textView4 != null) {
            textView4.setTextSize(0, 48.0f);
        }
        TextView textView5 = this$0.tvPassCode;
        if (textView5 != null) {
            textView5.setTextColor(-1);
        }
        TextView textView6 = this$0.tvPassCode;
        ViewGroup.LayoutParams layoutParams3 = textView6 != null ? textView6.getLayoutParams() : null;
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        if (marginLayoutParams2 != null) {
            marginLayoutParams2.leftMargin = 0;
        }
        if (marginLayoutParams2 != null) {
            marginLayoutParams2.rightMargin = 0;
        }
        FrameLayout frameLayout3 = this$0.flPassCode;
        ViewGroup.LayoutParams layoutParams4 = frameLayout3 != null ? frameLayout3.getLayoutParams() : null;
        if (layoutParams4 != null) {
            layoutParams4.height = 58;
        }
        FrameLayout frameLayout4 = this$0.flPassCode;
        if (frameLayout4 == null) {
            return;
        }
        frameLayout4.setBackground(null);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_security, container, false);
        this.mRootView = inflate;
        this.settingTitle = inflate != null ? (SettingTitle) inflate.findViewById(R.id.setting_title) : null;
        View view = this.mRootView;
        this.flPassCode = view != null ? (FrameLayout) view.findViewById(R.id.fl_change_passcode) : null;
        View view2 = this.mRootView;
        this.tvPassCode = view2 != null ? (TextView) view2.findViewById(R.id.tv_pass_code) : null;
        return this.mRootView;
    }

    public final boolean onKeyCodeEvent(int keyCode, KeyEvent event) {
        TextView textView;
        if (!KeyCodeExtensionKt.isKeyCodeConfirm(keyCode) || (textView = this.tvPassCode) == null || !textView.isFocused()) {
            return false;
        }
        FragmentActivity requireActivity = requireActivity();
        SecurityActivity securityActivity = requireActivity instanceof SecurityActivity ? (SecurityActivity) requireActivity : null;
        if (securityActivity == null) {
            return false;
        }
        securityActivity.gotoVerifyPasscode();
        return false;
    }
}
