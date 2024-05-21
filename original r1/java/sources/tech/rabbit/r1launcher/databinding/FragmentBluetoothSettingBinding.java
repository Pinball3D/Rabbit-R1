package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.SettingTitle;
import tech.rabbit.r1launcher.widget.UntouchableLinearLayout;

/* loaded from: classes3.dex */
public final class FragmentBluetoothSettingBinding implements ViewBinding {
    private final UntouchableLinearLayout rootView;
    public final DpadRecyclerView rv;
    public final SettingTitle st;

    @Override // androidx.viewbinding.ViewBinding
    public UntouchableLinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentBluetoothSettingBinding(UntouchableLinearLayout untouchableLinearLayout, DpadRecyclerView dpadRecyclerView, SettingTitle settingTitle) {
        this.rootView = untouchableLinearLayout;
        this.rv = dpadRecyclerView;
        this.st = settingTitle;
    }

    public static FragmentBluetoothSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentBluetoothSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_bluetooth_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentBluetoothSettingBinding bind(View view) {
        int i = R.id.rv;
        DpadRecyclerView dpadRecyclerView = (DpadRecyclerView) ViewBindings.findChildViewById(view, i);
        if (dpadRecyclerView != null) {
            i = R.id.st;
            SettingTitle settingTitle = (SettingTitle) ViewBindings.findChildViewById(view, i);
            if (settingTitle != null) {
                return new FragmentBluetoothSettingBinding((UntouchableLinearLayout) view, dpadRecyclerView, settingTitle);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
