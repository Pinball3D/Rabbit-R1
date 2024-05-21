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
import tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtView;

/* loaded from: classes3.dex */
public final class FragmentAboutBinding implements ViewBinding {
    public final CanBackLabelView cblvTitle;
    private final FrameLayout rootView;
    public final DpadRecyclerView rvList;
    public final ScrollBarExtView sbevScrollBar;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentAboutBinding(FrameLayout frameLayout, CanBackLabelView canBackLabelView, DpadRecyclerView dpadRecyclerView, ScrollBarExtView scrollBarExtView) {
        this.rootView = frameLayout;
        this.cblvTitle = canBackLabelView;
        this.rvList = dpadRecyclerView;
        this.sbevScrollBar = scrollBarExtView;
    }

    public static FragmentAboutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentAboutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_about, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentAboutBinding bind(View view) {
        int i = R.id.cblv_title;
        CanBackLabelView canBackLabelView = (CanBackLabelView) ViewBindings.findChildViewById(view, i);
        if (canBackLabelView != null) {
            i = R.id.rv_list;
            DpadRecyclerView dpadRecyclerView = (DpadRecyclerView) ViewBindings.findChildViewById(view, i);
            if (dpadRecyclerView != null) {
                i = R.id.sbev_scroll_bar;
                ScrollBarExtView scrollBarExtView = (ScrollBarExtView) ViewBindings.findChildViewById(view, i);
                if (scrollBarExtView != null) {
                    return new FragmentAboutBinding((FrameLayout) view, canBackLabelView, dpadRecyclerView, scrollBarExtView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
