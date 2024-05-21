package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ActivityFactoryModeBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final TextView tvAging;
    public final TextView tvBack;
    public final TextView tvDeviceId;
    public final TextView tvFactory;
    public final TextView tvShutdown;
    public final View viewAdbOpen;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private ActivityFactoryModeBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view) {
        this.rootView = frameLayout;
        this.tvAging = textView;
        this.tvBack = textView2;
        this.tvDeviceId = textView3;
        this.tvFactory = textView4;
        this.tvShutdown = textView5;
        this.viewAdbOpen = view;
    }

    public static ActivityFactoryModeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityFactoryModeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_factory_mode, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityFactoryModeBinding bind(View view) {
        View findChildViewById;
        int i = R.id.tv_aging;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.tv_back;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.tv_device_id;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView3 != null) {
                    i = R.id.tv_factory;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView4 != null) {
                        i = R.id.tv_shutdown;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView5 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_adb_open))) != null) {
                            return new ActivityFactoryModeBinding((FrameLayout) view, textView, textView2, textView3, textView4, textView5, findChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
