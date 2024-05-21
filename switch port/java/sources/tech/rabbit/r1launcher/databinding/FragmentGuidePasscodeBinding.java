package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class FragmentGuidePasscodeBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvContinue;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentGuidePasscodeBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.tvContinue = textView;
    }

    public static FragmentGuidePasscodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentGuidePasscodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_guide_passcode, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentGuidePasscodeBinding bind(View view) {
        int i = R.id.tv_continue;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            return new FragmentGuidePasscodeBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
