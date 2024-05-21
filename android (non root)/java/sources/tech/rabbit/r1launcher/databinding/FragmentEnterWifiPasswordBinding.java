package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class FragmentEnterWifiPasswordBinding implements ViewBinding {
    public final AppCompatEditText etPassword;
    private final LinearLayout rootView;
    public final TextView tvState;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentEnterWifiPasswordBinding(LinearLayout linearLayout, AppCompatEditText appCompatEditText, TextView textView) {
        this.rootView = linearLayout;
        this.etPassword = appCompatEditText;
        this.tvState = textView;
    }

    public static FragmentEnterWifiPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentEnterWifiPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_enter_wifi_password, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentEnterWifiPasswordBinding bind(View view) {
        int i = R.id.et_password;
        AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
        if (appCompatEditText != null) {
            i = R.id.tv_state;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new FragmentEnterWifiPasswordBinding((LinearLayout) view, appCompatEditText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
