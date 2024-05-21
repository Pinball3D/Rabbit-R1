package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class FragmentLandscapeEnterWifiPasswordBinding implements ViewBinding {
    public final EditText etPassword;
    private final LinearLayout rootView;
    public final TextView tvState;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentLandscapeEnterWifiPasswordBinding(LinearLayout linearLayout, EditText editText, TextView textView) {
        this.rootView = linearLayout;
        this.etPassword = editText;
        this.tvState = textView;
    }

    public static FragmentLandscapeEnterWifiPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLandscapeEnterWifiPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_landscape_enter_wifi_password, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentLandscapeEnterWifiPasswordBinding bind(View view) {
        int i = R.id.et_password;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R.id.tv_state;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new FragmentLandscapeEnterWifiPasswordBinding((LinearLayout) view, editText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
