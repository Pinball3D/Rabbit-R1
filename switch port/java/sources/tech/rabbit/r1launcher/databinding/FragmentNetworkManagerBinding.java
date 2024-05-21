package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.CanBackLabelView;

/* loaded from: classes3.dex */
public final class FragmentNetworkManagerBinding implements ViewBinding {
    public final CanBackLabelView cblvTitle;
    private final LinearLayoutCompat rootView;
    public final DpadRecyclerView rvList;
    public final AppCompatTextView tvCellular;
    public final AppCompatTextView tvWifi;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    private FragmentNetworkManagerBinding(LinearLayoutCompat linearLayoutCompat, CanBackLabelView canBackLabelView, DpadRecyclerView dpadRecyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayoutCompat;
        this.cblvTitle = canBackLabelView;
        this.rvList = dpadRecyclerView;
        this.tvCellular = appCompatTextView;
        this.tvWifi = appCompatTextView2;
    }

    public static FragmentNetworkManagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentNetworkManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_network_manager, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentNetworkManagerBinding bind(View view) {
        int i = R.id.cblv_title;
        CanBackLabelView canBackLabelView = (CanBackLabelView) ViewBindings.findChildViewById(view, i);
        if (canBackLabelView != null) {
            i = R.id.rv_list;
            DpadRecyclerView dpadRecyclerView = (DpadRecyclerView) ViewBindings.findChildViewById(view, i);
            if (dpadRecyclerView != null) {
                i = R.id.tv_cellular;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = R.id.tv_wifi;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        return new FragmentNetworkManagerBinding((LinearLayoutCompat) view, canBackLabelView, dpadRecyclerView, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
