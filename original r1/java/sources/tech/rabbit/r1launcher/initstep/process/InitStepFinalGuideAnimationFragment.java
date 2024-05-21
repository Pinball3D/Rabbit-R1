package tech.rabbit.r1launcher.initstep.process;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import com.airbnb.lottie.LottieAnimationView;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.utils.Constants;
import tech.rabbit.r1launcher.initstep.utils.Utils;

/* compiled from: InitStepFinalGuideAnimationFragment.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010 \u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J$\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\r2\b\b\u0001\u0010%\u001a\u00020\u00062\b\b\u0002\u0010&\u001a\u00020\u0006H\u0002J\b\u0010'\u001a\u00020\u001bH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "()V", "animations1", "", "", "animations2", "animations3", "currentAnimationResId", "firstClickTimestampInPartD", "", "lavAnimator1", "Lcom/airbnb/lottie/LottieAnimationView;", "lavAnimator2", "lavAnimator3", "mDoubleClickHits", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onKeyDown", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "onViewCreated", "view", "playAnimation", "animator", "animationResId", "repeatCount", "preloadAnimation", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InitStepFinalGuideAnimationFragment extends Fragment implements OnKeyUpListener {
    public static final int $stable = 8;
    private final List<Integer> animations1;
    private final List<Integer> animations2;
    private final List<Integer> animations3;
    private int currentAnimationResId;
    private long firstClickTimestampInPartD;
    private LottieAnimationView lavAnimator1;
    private LottieAnimationView lavAnimator2;
    private LottieAnimationView lavAnimator3;
    private final long[] mDoubleClickHits;

    public InitStepFinalGuideAnimationFragment() {
        super(R.layout.fragment_init_step_final_guide_animation);
        this.animations1 = CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(R.raw.animation_init_step_final_guide_a), Integer.valueOf(R.raw.animation_init_step_final_guide_b)});
        this.animations2 = CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(R.raw.animation_init_step_final_guide_c), Integer.valueOf(R.raw.animation_init_step_final_guide_d)});
        this.animations3 = CollectionsKt.listOf(Integer.valueOf(R.raw.animation_init_step_final_guide_e));
        this.mDoubleClickHits = new long[2];
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.lav_animator_1);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.lavAnimator1 = (LottieAnimationView) findViewById;
        View findViewById2 = onCreateView.findViewById(R.id.lav_animator_2);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.lavAnimator2 = (LottieAnimationView) findViewById2;
        View findViewById3 = onCreateView.findViewById(R.id.lav_animator_3);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.lavAnimator3 = (LottieAnimationView) findViewById3;
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        LottieAnimationView lottieAnimationView;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        preloadAnimation();
        LottieAnimationView lottieAnimationView2 = this.lavAnimator1;
        if (lottieAnimationView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimator1");
            lottieAnimationView2 = null;
        }
        lottieAnimationView2.addAnimatorListener(new AnimatorListenerAdapter() { // from class: tech.rabbit.r1launcher.initstep.process.InitStepFinalGuideAnimationFragment$onViewCreated$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                int i;
                LottieAnimationView lottieAnimationView3;
                Intrinsics.checkNotNullParameter(animation, "animation");
                i = InitStepFinalGuideAnimationFragment.this.currentAnimationResId;
                if (i != R.raw.animation_init_step_final_guide_a) {
                    return;
                }
                InitStepFinalGuideAnimationFragment initStepFinalGuideAnimationFragment = InitStepFinalGuideAnimationFragment.this;
                lottieAnimationView3 = initStepFinalGuideAnimationFragment.lavAnimator1;
                if (lottieAnimationView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lavAnimator1");
                    lottieAnimationView3 = null;
                }
                initStepFinalGuideAnimationFragment.playAnimation(lottieAnimationView3, R.raw.animation_init_step_final_guide_b, -1);
            }
        });
        LottieAnimationView lottieAnimationView3 = this.lavAnimator2;
        if (lottieAnimationView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimator2");
            lottieAnimationView3 = null;
        }
        lottieAnimationView3.addAnimatorListener(new AnimatorListenerAdapter() { // from class: tech.rabbit.r1launcher.initstep.process.InitStepFinalGuideAnimationFragment$onViewCreated$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                int i;
                LottieAnimationView lottieAnimationView4;
                Intrinsics.checkNotNullParameter(animation, "animation");
                i = InitStepFinalGuideAnimationFragment.this.currentAnimationResId;
                if (i != R.raw.animation_init_step_final_guide_c) {
                    return;
                }
                InitStepFinalGuideAnimationFragment initStepFinalGuideAnimationFragment = InitStepFinalGuideAnimationFragment.this;
                lottieAnimationView4 = initStepFinalGuideAnimationFragment.lavAnimator2;
                if (lottieAnimationView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lavAnimator2");
                    lottieAnimationView4 = null;
                }
                initStepFinalGuideAnimationFragment.playAnimation(lottieAnimationView4, R.raw.animation_init_step_final_guide_d, -1);
            }
        });
        LottieAnimationView lottieAnimationView4 = this.lavAnimator3;
        if (lottieAnimationView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimator3");
            lottieAnimationView4 = null;
        }
        lottieAnimationView4.addAnimatorListener(new AnimatorListenerAdapter() { // from class: tech.rabbit.r1launcher.initstep.process.InitStepFinalGuideAnimationFragment$onViewCreated$3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                int i;
                Intrinsics.checkNotNullParameter(animation, "animation");
                i = InitStepFinalGuideAnimationFragment.this.currentAnimationResId;
                if (i != R.raw.animation_init_step_final_guide_e) {
                    return;
                }
                InitStepFinalGuideAnimationFragment.this.requireActivity().finish();
            }
        });
        LottieAnimationView lottieAnimationView5 = this.lavAnimator1;
        if (lottieAnimationView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimator1");
            lottieAnimationView = null;
        } else {
            lottieAnimationView = lottieAnimationView5;
        }
        playAnimation$default(this, lottieAnimationView, R.raw.animation_init_step_final_guide_a, 0, 4, null);
    }

    private final void preloadAnimation() {
        Iterator<T> it = this.animations1.iterator();
        while (true) {
            LottieAnimationView lottieAnimationView = null;
            if (!it.hasNext()) {
                break;
            }
            int intValue = ((Number) it.next()).intValue();
            LottieAnimationView lottieAnimationView2 = this.lavAnimator1;
            if (lottieAnimationView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lavAnimator1");
            } else {
                lottieAnimationView = lottieAnimationView2;
            }
            lottieAnimationView.setAnimation(intValue);
        }
        Iterator<T> it2 = this.animations2.iterator();
        while (it2.hasNext()) {
            int intValue2 = ((Number) it2.next()).intValue();
            LottieAnimationView lottieAnimationView3 = this.lavAnimator2;
            if (lottieAnimationView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lavAnimator2");
                lottieAnimationView3 = null;
            }
            lottieAnimationView3.setAnimation(intValue2);
        }
        Iterator<T> it3 = this.animations3.iterator();
        while (it3.hasNext()) {
            int intValue3 = ((Number) it3.next()).intValue();
            LottieAnimationView lottieAnimationView4 = this.lavAnimator3;
            if (lottieAnimationView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lavAnimator3");
                lottieAnimationView4 = null;
            }
            lottieAnimationView4.setAnimation(intValue3);
        }
    }

    static /* synthetic */ void playAnimation$default(InitStepFinalGuideAnimationFragment initStepFinalGuideAnimationFragment, LottieAnimationView lottieAnimationView, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        initStepFinalGuideAnimationFragment.playAnimation(lottieAnimationView, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void playAnimation(LottieAnimationView animator, int animationResId, int repeatCount) {
        this.currentAnimationResId = animationResId;
        animator.setRepeatCount(repeatCount);
        animator.setRepeatMode(1);
        animator.setAnimation(animationResId);
        animator.playAnimation();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LottieAnimationView lottieAnimationView = this.lavAnimator1;
        LottieAnimationView lottieAnimationView2 = null;
        if (lottieAnimationView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimator1");
            lottieAnimationView = null;
        }
        lottieAnimationView.removeAllAnimatorListeners();
        LottieAnimationView lottieAnimationView3 = this.lavAnimator2;
        if (lottieAnimationView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimator2");
            lottieAnimationView3 = null;
        }
        lottieAnimationView3.removeAllAnimatorListeners();
        LottieAnimationView lottieAnimationView4 = this.lavAnimator3;
        if (lottieAnimationView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lavAnimator3");
        } else {
            lottieAnimationView2 = lottieAnimationView4;
        }
        lottieAnimationView2.removeAllAnimatorListeners();
        super.onDestroyView();
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int keyCode, KeyEvent event) {
        LottieAnimationView lottieAnimationView;
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode) && this.currentAnimationResId == R.raw.animation_init_step_final_guide_d) {
            if (this.firstClickTimestampInPartD == 0) {
                this.firstClickTimestampInPartD = SystemClock.uptimeMillis();
                return;
            }
            if (SystemClock.uptimeMillis() - this.firstClickTimestampInPartD >= 1000) {
                this.firstClickTimestampInPartD = -1L;
                LottieAnimationView lottieAnimationView2 = this.lavAnimator2;
                if (lottieAnimationView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lavAnimator2");
                    lottieAnimationView2 = null;
                }
                lottieAnimationView2.setVisibility(8);
                LottieAnimationView lottieAnimationView3 = this.lavAnimator3;
                if (lottieAnimationView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lavAnimator3");
                    lottieAnimationView = null;
                } else {
                    lottieAnimationView = lottieAnimationView3;
                }
                playAnimation$default(this, lottieAnimationView, R.raw.animation_init_step_final_guide_e, 0, 4, null);
            }
        }
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        LottieAnimationView lottieAnimationView;
        this.firstClickTimestampInPartD = 0L;
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode) && this.currentAnimationResId == R.raw.animation_init_step_final_guide_b && Utils.isFastClick$default(Utils.INSTANCE, this.mDoubleClickHits, 0L, 2, null)) {
            LottieAnimationView lottieAnimationView2 = this.lavAnimator1;
            if (lottieAnimationView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lavAnimator1");
                lottieAnimationView2 = null;
            }
            lottieAnimationView2.setVisibility(8);
            LottieAnimationView lottieAnimationView3 = this.lavAnimator2;
            if (lottieAnimationView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lavAnimator2");
                lottieAnimationView = null;
            } else {
                lottieAnimationView = lottieAnimationView3;
            }
            playAnimation$default(this, lottieAnimationView, R.raw.animation_init_step_final_guide_c, 0, 4, null);
        }
    }
}
