package tech.rabbit.r1launcher.initstep.process;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.airbnb.lottie.LottieAnimationView;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment;
import tech.rabbit.r1launcher.initstep.utils.Constants;

/* compiled from: InitStepGuideAnimationFragment.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "()V", "lavAnimatorPartA", "Lcom/airbnb/lottie/LottieAnimationView;", "lavAnimatorPartB", "lavAnimatorPartC", "partBRepeatCount", "", "tvClickToContinue", "Landroid/widget/TextView;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onKeyUp", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onViewCreated", "view", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InitStepGuideAnimationFragment extends Fragment implements OnKeyUpListener {
    public static final int $stable = 8;
    private LottieAnimationView lavAnimatorPartA;
    private LottieAnimationView lavAnimatorPartB;
    private LottieAnimationView lavAnimatorPartC;
    private int partBRepeatCount;
    private TextView tvClickToContinue;

    public InitStepGuideAnimationFragment() {
        super(R.layout.fragment_init_step_guide_animation);
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.lav_animator_part_a);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.lavAnimatorPartA = (LottieAnimationView) findViewById;
        View findViewById2 = onCreateView.findViewById(R.id.lav_animator_part_b);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.lavAnimatorPartB = (LottieAnimationView) findViewById2;
        View findViewById3 = onCreateView.findViewById(R.id.lav_animator_part_c);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.lavAnimatorPartC = (LottieAnimationView) findViewById3;
        View findViewById4 = onCreateView.findViewById(R.id.tv_click_to_continue);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
        this.tvClickToContinue = (TextView) findViewById4;
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        LottieAnimationView lottieAnimationView = this.lavAnimatorPartA;
        LottieAnimationView lottieAnimationView2 = null;
        if (lottieAnimationView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartA");
            lottieAnimationView = null;
        }
        lottieAnimationView.addAnimatorListener(new AnimatorListenerAdapter() { // from class: tech.rabbit.r1launcher.initstep.process.InitStepGuideAnimationFragment$onViewCreated$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                LottieAnimationView lottieAnimationView3;
                LottieAnimationView lottieAnimationView4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                lottieAnimationView3 = InitStepGuideAnimationFragment.this.lavAnimatorPartA;
                LottieAnimationView lottieAnimationView5 = null;
                if (lottieAnimationView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartA");
                    lottieAnimationView3 = null;
                }
                lottieAnimationView3.setVisibility(8);
                lottieAnimationView4 = InitStepGuideAnimationFragment.this.lavAnimatorPartB;
                if (lottieAnimationView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartB");
                } else {
                    lottieAnimationView5 = lottieAnimationView4;
                }
                lottieAnimationView5.playAnimation();
            }
        });
        LottieAnimationView lottieAnimationView3 = this.lavAnimatorPartB;
        if (lottieAnimationView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartB");
            lottieAnimationView3 = null;
        }
        lottieAnimationView3.addAnimatorListener(new AnimatorListenerAdapter() { // from class: tech.rabbit.r1launcher.initstep.process.InitStepGuideAnimationFragment$onViewCreated$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
                int i;
                int i2;
                TextView textView;
                Intrinsics.checkNotNullParameter(animation, "animation");
                InitStepGuideAnimationFragment initStepGuideAnimationFragment = InitStepGuideAnimationFragment.this;
                i = initStepGuideAnimationFragment.partBRepeatCount;
                initStepGuideAnimationFragment.partBRepeatCount = i + 1;
                i2 = initStepGuideAnimationFragment.partBRepeatCount;
                if (i2 == 2) {
                    textView = InitStepGuideAnimationFragment.this.tvClickToContinue;
                    if (textView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tvClickToContinue");
                        textView = null;
                    }
                    ObjectAnimator.ofFloat(textView, ViewHierarchyNode.JsonKeys.ALPHA, 0.0f, 1.0f).setDuration(300L).start();
                }
            }
        });
        LottieAnimationView lottieAnimationView4 = this.lavAnimatorPartC;
        if (lottieAnimationView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartC");
        } else {
            lottieAnimationView2 = lottieAnimationView4;
        }
        lottieAnimationView2.addAnimatorListener(new AnimatorListenerAdapter() { // from class: tech.rabbit.r1launcher.initstep.process.InitStepGuideAnimationFragment$onViewCreated$3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                FragmentActivity requireActivity = InitStepGuideAnimationFragment.this.requireActivity();
                InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
                if (initStepActivity != null) {
                    initStepActivity.gotoConnectNetwork(ConnectNetworkFragment.ShowType.SelectNetworkType.INSTANCE);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LottieAnimationView lottieAnimationView = this.lavAnimatorPartA;
        LottieAnimationView lottieAnimationView2 = null;
        if (lottieAnimationView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartA");
            lottieAnimationView = null;
        }
        lottieAnimationView.removeAllAnimatorListeners();
        LottieAnimationView lottieAnimationView3 = this.lavAnimatorPartB;
        if (lottieAnimationView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartB");
            lottieAnimationView3 = null;
        }
        lottieAnimationView3.removeAllAnimatorListeners();
        LottieAnimationView lottieAnimationView4 = this.lavAnimatorPartC;
        if (lottieAnimationView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartC");
        } else {
            lottieAnimationView2 = lottieAnimationView4;
        }
        lottieAnimationView2.removeAllAnimatorListeners();
        super.onDestroyView();
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
            LottieAnimationView lottieAnimationView = this.lavAnimatorPartB;
            TextView textView = null;
            if (lottieAnimationView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartB");
                lottieAnimationView = null;
            }
            lottieAnimationView.setVisibility(8);
            LottieAnimationView lottieAnimationView2 = this.lavAnimatorPartC;
            if (lottieAnimationView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartC");
                lottieAnimationView2 = null;
            }
            if (lottieAnimationView2.isAnimating()) {
                return;
            }
            TextView textView2 = this.tvClickToContinue;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvClickToContinue");
            } else {
                textView = textView2;
            }
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, ViewHierarchyNode.JsonKeys.ALPHA, 1.0f, 0.0f);
            Intrinsics.checkNotNull(ofFloat);
            ofFloat.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.InitStepGuideAnimationFragment$onKeyUp$lambda$2$$inlined$addListener$default$1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LottieAnimationView lottieAnimationView3;
                    lottieAnimationView3 = InitStepGuideAnimationFragment.this.lavAnimatorPartC;
                    if (lottieAnimationView3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("lavAnimatorPartC");
                        lottieAnimationView3 = null;
                    }
                    lottieAnimationView3.playAnimation();
                    ofFloat.removeAllUpdateListeners();
                    ofFloat.removeAllListeners();
                }
            });
            ofFloat.setDuration(300L).start();
        }
    }
}
