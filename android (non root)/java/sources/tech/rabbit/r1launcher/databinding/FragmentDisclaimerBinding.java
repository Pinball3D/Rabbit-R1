package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.CanBackLabelView;
import tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtView;

/* loaded from: classes3.dex */
public final class FragmentDisclaimerBinding implements ViewBinding {
    public final CanBackLabelView cblvTitle;
    private final FrameLayout rootView;
    public final ScrollBarExtView sbevScrollBar;
    public final SubsamplingScaleImageView ssivPicture;
    public final ScrollView svContainer;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentDisclaimerBinding(FrameLayout frameLayout, CanBackLabelView canBackLabelView, ScrollBarExtView scrollBarExtView, SubsamplingScaleImageView subsamplingScaleImageView, ScrollView scrollView) {
        this.rootView = frameLayout;
        this.cblvTitle = canBackLabelView;
        this.sbevScrollBar = scrollBarExtView;
        this.ssivPicture = subsamplingScaleImageView;
        this.svContainer = scrollView;
    }

    public static FragmentDisclaimerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDisclaimerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_disclaimer, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentDisclaimerBinding bind(View view) {
        int i = R.id.cblv_title;
        CanBackLabelView canBackLabelView = (CanBackLabelView) ViewBindings.findChildViewById(view, i);
        if (canBackLabelView != null) {
            i = R.id.sbev_scroll_bar;
            ScrollBarExtView scrollBarExtView = (ScrollBarExtView) ViewBindings.findChildViewById(view, i);
            if (scrollBarExtView != null) {
                i = R.id.ssiv_picture;
                SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) ViewBindings.findChildViewById(view, i);
                if (subsamplingScaleImageView != null) {
                    i = R.id.sv_container;
                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, i);
                    if (scrollView != null) {
                        return new FragmentDisclaimerBinding((FrameLayout) view, canBackLabelView, scrollBarExtView, subsamplingScaleImageView, scrollView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
