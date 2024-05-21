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
public final class FragmentConnectRabbitAccountBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvContent;
    public final TextView tvContinue;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentConnectRabbitAccountBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.tvContent = textView;
        this.tvContinue = textView2;
    }

    public static FragmentConnectRabbitAccountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentConnectRabbitAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_connect_rabbit_account, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentConnectRabbitAccountBinding bind(View view) {
        int i = R.id.tv_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.tv_continue;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                return new FragmentConnectRabbitAccountBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
