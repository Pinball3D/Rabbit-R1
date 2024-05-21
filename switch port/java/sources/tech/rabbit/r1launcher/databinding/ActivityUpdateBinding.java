package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ActivityUpdateBinding implements ViewBinding {
    public final Button btnFinish;
    public final Button btnNetwork;
    public final Button btnUpdate;
    public final LinearLayout llUpdateButtons;
    public final LinearLayout llUpdateResult;
    public final LinearLayout llUpdateState;
    public final ProgressBar progressUpdateState;
    public final RelativeLayout rlUpdateInfo;
    private final RelativeLayout rootView;
    public final TextView tvPkgUrl;
    public final TextView tvUpdateInfo;
    public final TextView tvUpdateInfoName;
    public final TextView tvUpdateInfoVersion;
    public final TextView tvUpdateName;
    public final TextView tvUpdateResult;
    public final TextView tvUpdateState;
    public final TextView tvUpdateVersion;

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    private ActivityUpdateBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, ProgressBar progressBar, RelativeLayout relativeLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = relativeLayout;
        this.btnFinish = button;
        this.btnNetwork = button2;
        this.btnUpdate = button3;
        this.llUpdateButtons = linearLayout;
        this.llUpdateResult = linearLayout2;
        this.llUpdateState = linearLayout3;
        this.progressUpdateState = progressBar;
        this.rlUpdateInfo = relativeLayout2;
        this.tvPkgUrl = textView;
        this.tvUpdateInfo = textView2;
        this.tvUpdateInfoName = textView3;
        this.tvUpdateInfoVersion = textView4;
        this.tvUpdateName = textView5;
        this.tvUpdateResult = textView6;
        this.tvUpdateState = textView7;
        this.tvUpdateVersion = textView8;
    }

    public static ActivityUpdateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityUpdateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_update, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityUpdateBinding bind(View view) {
        int i = R.id.btn_finish;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.btn_network;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.btn_update;
                Button button3 = (Button) ViewBindings.findChildViewById(view, i);
                if (button3 != null) {
                    i = R.id.ll_update_buttons;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = R.id.ll_update_result;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            i = R.id.ll_update_state;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout3 != null) {
                                i = R.id.progress_update_state;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                if (progressBar != null) {
                                    i = R.id.rl_update_info;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                    if (relativeLayout != null) {
                                        i = R.id.tv_pkg_url;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = R.id.tv_update_info;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView2 != null) {
                                                i = R.id.tv_update_info_name;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView3 != null) {
                                                    i = R.id.tv_update_info_version;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView4 != null) {
                                                        i = R.id.tv_update_name;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView5 != null) {
                                                            i = R.id.tv_update_result;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView6 != null) {
                                                                i = R.id.tv_update_state;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView7 != null) {
                                                                    i = R.id.tv_update_version;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView8 != null) {
                                                                        return new ActivityUpdateBinding((RelativeLayout) view, button, button2, button3, linearLayout, linearLayout2, linearLayout3, progressBar, relativeLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
