package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.CanBackLabelView;

/* loaded from: classes3.dex */
public final class FragmentSettings2Binding implements ViewBinding {
    public final CanBackLabelView cblvTitle;
    private final FrameLayout rootView;
    public final DpadRecyclerView rvList;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentSettings2Binding(FrameLayout frameLayout, CanBackLabelView canBackLabelView, DpadRecyclerView dpadRecyclerView) {
        this.rootView = frameLayout;
        this.cblvTitle = canBackLabelView;
        this.rvList = dpadRecyclerView;
    }

    public static FragmentSettings2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSettings2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_settings2, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentSettings2Binding bind(View view) {
        int i = R.id.cblv_title;
        CanBackLabelView canBackLabelView = (CanBackLabelView) ViewBindings.findChildViewById(view, i);
        if (canBackLabelView != null) {
            i = R.id.rv_list;
            DpadRecyclerView dpadRecyclerView = (DpadRecyclerView) ViewBindings.findChildViewById(view, i);
            if (dpadRecyclerView != null) {
                return new FragmentSettings2Binding((FrameLayout) view, canBackLabelView, dpadRecyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
