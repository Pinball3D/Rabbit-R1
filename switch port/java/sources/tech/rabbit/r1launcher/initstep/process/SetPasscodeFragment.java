package tech.rabbit.r1launcher.initstep.process;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.utils.Constants;
import tech.rabbit.r1launcher.initstep.widget.NumberPickerView;
import tech.rabbit.r1launcher.wss.Constant;

/* compiled from: SetPasscodeFragment.kt */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tH\u0016J&\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\b\u0010)\u001a\u00020\u001fH\u0016J\u001a\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u001d2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\b\u0010.\u001a\u00020\u001fH\u0016J\u001a\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u00101\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u00102\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;", "()V", "animator", "Landroid/animation/ValueAnimator;", "confirmedPasscodeContainer", "", "", "flContinueContainer", "Landroid/widget/FrameLayout;", "isEnter4Length", "", "lastTimeClicked", "", "llTipContainer", "Landroid/widget/LinearLayout;", "numberPickerView", "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;", "tvConfirmPasscode", "Landroid/widget/TextView;", "tvContinue", "tvRetry", "tvSuccessOrWaiting", "tvTips", "tvToFinish", "isEqualTips", "stringResId", "", "onConfirmItem", "", "text", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onKeyUp", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onScroll", "onViewCreated", "view", "setTextToTipsView", "updateCurrentTipsId", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SetPasscodeFragment extends Fragment implements OnKeyUpListener, NumberPickerView.OnNumberPickerListener {
    public static final int $stable = 8;
    private ValueAnimator animator;
    private final List<String> confirmedPasscodeContainer;
    private FrameLayout flContinueContainer;
    private boolean isEnter4Length;
    private long lastTimeClicked;
    private LinearLayout llTipContainer;
    private NumberPickerView numberPickerView;
    private TextView tvConfirmPasscode;
    private TextView tvContinue;
    private TextView tvRetry;
    private TextView tvSuccessOrWaiting;
    private TextView tvTips;
    private TextView tvToFinish;

    public SetPasscodeFragment() {
        super(R.layout.fragment_set_passcode);
        this.confirmedPasscodeContainer = new ArrayList();
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        NumberPickerView numberPickerView = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.npv_picker);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        NumberPickerView numberPickerView2 = (NumberPickerView) findViewById;
        this.numberPickerView = numberPickerView2;
        if (numberPickerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
        } else {
            numberPickerView = numberPickerView2;
        }
        numberPickerView.setOnNumberPickerListener(this);
        View findViewById2 = onCreateView.findViewById(R.id.tv_tip);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.tvTips = (TextView) findViewById2;
        View findViewById3 = onCreateView.findViewById(R.id.tv_retry);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.tvRetry = (TextView) findViewById3;
        View findViewById4 = onCreateView.findViewById(R.id.ll_tip_container);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
        this.llTipContainer = (LinearLayout) findViewById4;
        View findViewById5 = onCreateView.findViewById(R.id.tv_to_finish);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(...)");
        this.tvToFinish = (TextView) findViewById5;
        View findViewById6 = onCreateView.findViewById(R.id.tv_confirm_passcode);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(...)");
        this.tvConfirmPasscode = (TextView) findViewById6;
        View findViewById7 = onCreateView.findViewById(R.id.tv_continue);
        Intrinsics.checkNotNullExpressionValue(findViewById7, "findViewById(...)");
        this.tvContinue = (TextView) findViewById7;
        View findViewById8 = onCreateView.findViewById(R.id.fl_continue_container);
        Intrinsics.checkNotNullExpressionValue(findViewById8, "findViewById(...)");
        this.flContinueContainer = (FrameLayout) findViewById8;
        View findViewById9 = onCreateView.findViewById(R.id.tv_success_or_waiting);
        Intrinsics.checkNotNullExpressionValue(findViewById9, "findViewById(...)");
        this.tvSuccessOrWaiting = (TextView) findViewById9;
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setTextToTipsView(R.string.tips_passcode_create_a_passcode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextToTipsView(int stringResId) {
        TextView textView = this.tvTips;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTips");
            textView = null;
        }
        textView.setText(stringResId);
        updateCurrentTipsId(stringResId);
    }

    private final void updateCurrentTipsId(int stringResId) {
        TextView textView = this.tvTips;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTips");
            textView = null;
        }
        textView.setTag(Integer.valueOf(stringResId));
    }

    private final boolean isEqualTips(int stringResId) {
        TextView textView = this.tvTips;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTips");
            textView = null;
        }
        return Intrinsics.areEqual(textView.getTag(), Integer.valueOf(stringResId));
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        if (SystemClock.elapsedRealtime() - this.lastTimeClicked < 300) {
            return;
        }
        this.lastTimeClicked = SystemClock.elapsedRealtime();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            FragmentActivity requireActivity = requireActivity();
            NumberPickerView numberPickerView = null;
            NumberPickerView numberPickerView2 = null;
            NumberPickerView numberPickerView3 = null;
            NumberPickerView numberPickerView4 = null;
            NumberPickerView numberPickerView5 = null;
            NumberPickerView numberPickerView6 = null;
            TextView textView = null;
            NumberPickerView numberPickerView7 = null;
            NumberPickerView numberPickerView8 = null;
            TextView textView2 = null;
            final InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
            if (initStepActivity == null) {
                return;
            }
            if (!Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
                if (keyCode != 19) {
                    if (keyCode == 20) {
                        if (initStepActivity.isBackShowing()) {
                            FrameLayout frameLayout = this.flContinueContainer;
                            if (frameLayout == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                                frameLayout = null;
                            }
                            if (frameLayout.getAlpha() == 0.0f) {
                                initStepActivity.hideBack();
                                NumberPickerView numberPickerView9 = this.numberPickerView;
                                if (numberPickerView9 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                } else {
                                    numberPickerView8 = numberPickerView9;
                                }
                                numberPickerView8.setSelected(true);
                                return;
                            }
                        }
                        FrameLayout frameLayout2 = this.flContinueContainer;
                        if (frameLayout2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                            frameLayout2 = null;
                        }
                        if (frameLayout2.getAlpha() != 1.0f) {
                            NumberPickerView numberPickerView10 = this.numberPickerView;
                            if (numberPickerView10 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                            } else {
                                numberPickerView = numberPickerView10;
                            }
                            numberPickerView.onScrollDown();
                            return;
                        }
                        initStepActivity.hideBack();
                        TextView textView3 = this.tvContinue;
                        if (textView3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                            textView3 = null;
                        }
                        textView3.setSelected(true);
                        TextView textView4 = this.tvContinue;
                        if (textView4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                        } else {
                            textView2 = textView4;
                        }
                        textView2.setTextSize(2, 30.0f);
                        return;
                    }
                    return;
                }
                if (initStepActivity.isBackShowing()) {
                    FrameLayout frameLayout3 = this.flContinueContainer;
                    if (frameLayout3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                        frameLayout3 = null;
                    }
                    if (frameLayout3.getAlpha() == 0.0f) {
                        initStepActivity.hideBack();
                        NumberPickerView numberPickerView11 = this.numberPickerView;
                        if (numberPickerView11 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                        } else {
                            numberPickerView6 = numberPickerView11;
                        }
                        numberPickerView6.setSelected(true);
                        return;
                    }
                }
                FrameLayout frameLayout4 = this.flContinueContainer;
                if (frameLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                    frameLayout4 = null;
                }
                if (frameLayout4.getAlpha() != 1.0f) {
                    NumberPickerView numberPickerView12 = this.numberPickerView;
                    if (numberPickerView12 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    } else {
                        numberPickerView7 = numberPickerView12;
                    }
                    numberPickerView7.onScrollUp();
                    return;
                }
                initStepActivity.showBack(R.string.tip_init_step_set_passcode_reset_passcode);
                NumberPickerView numberPickerView13 = this.numberPickerView;
                if (numberPickerView13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    numberPickerView13 = null;
                }
                numberPickerView13.setSelected(false);
                TextView textView5 = this.tvContinue;
                if (textView5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                    textView5 = null;
                }
                textView5.setSelected(false);
                TextView textView6 = this.tvContinue;
                if (textView6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                } else {
                    textView = textView6;
                }
                textView.setTextSize(2, 24.0f);
                return;
            }
            NumberPickerView numberPickerView14 = this.numberPickerView;
            if (numberPickerView14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                numberPickerView14 = null;
            }
            if (!numberPickerView14.isSelected()) {
                FrameLayout frameLayout5 = this.flContinueContainer;
                if (frameLayout5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                    frameLayout5 = null;
                }
                if (frameLayout5.getAlpha() == 1.0f) {
                    if (initStepActivity.isBackShowing()) {
                        final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda10
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                SetPasscodeFragment.onKeyUp$lambda$14$lambda$11(SetPasscodeFragment.this, valueAnimator2);
                            }
                        });
                        Intrinsics.checkNotNull(duration);
                        duration.addListener(new Animator.AnimatorListener(duration, this, this, initStepActivity) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onKeyUp$lambda$14$$inlined$addListener$default$1
                            final /* synthetic */ InitStepActivity $activity$inlined;
                            final /* synthetic */ ValueAnimator $this_apply$inlined;
                            final /* synthetic */ SetPasscodeFragment this$0;

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            {
                                this.$activity$inlined = initStepActivity;
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                this.$this_apply$inlined.removeAllUpdateListeners();
                                this.$this_apply$inlined.removeAllListeners();
                                this.this$0.animator = null;
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                List list;
                                TextView textView7;
                                TextView textView8;
                                NumberPickerView numberPickerView15;
                                NumberPickerView numberPickerView16;
                                this.this$0.isEnter4Length = false;
                                list = this.this$0.confirmedPasscodeContainer;
                                list.clear();
                                this.$activity$inlined.hideBack();
                                this.this$0.setTextToTipsView(R.string.tips_passcode_create_a_passcode);
                                textView7 = this.this$0.tvContinue;
                                NumberPickerView numberPickerView17 = null;
                                if (textView7 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                                    textView7 = null;
                                }
                                textView7.setSelected(false);
                                textView8 = this.this$0.tvContinue;
                                if (textView8 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                                    textView8 = null;
                                }
                                textView8.setTextSize(2, 24.0f);
                                numberPickerView15 = this.this$0.numberPickerView;
                                if (numberPickerView15 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                    numberPickerView15 = null;
                                }
                                numberPickerView15.reset();
                                numberPickerView16 = this.this$0.numberPickerView;
                                if (numberPickerView16 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                } else {
                                    numberPickerView17 = numberPickerView16;
                                }
                                numberPickerView17.setSelected(true);
                            }
                        });
                        this.animator = duration;
                        duration.start();
                        return;
                    }
                    final ValueAnimator duration2 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                    duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda11
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            SetPasscodeFragment.onKeyUp$lambda$19$lambda$16(SetPasscodeFragment.this, valueAnimator2);
                        }
                    });
                    Intrinsics.checkNotNull(duration2);
                    duration2.addListener(new Animator.AnimatorListener(duration2, this, this) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onKeyUp$lambda$19$$inlined$addListener$default$1
                        final /* synthetic */ ValueAnimator $this_apply$inlined;
                        final /* synthetic */ SetPasscodeFragment this$0;

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            this.$this_apply$inlined.removeAllUpdateListeners();
                            this.$this_apply$inlined.removeAllListeners();
                            this.this$0.animator = null;
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            NumberPickerView numberPickerView15;
                            this.this$0.setTextToTipsView(R.string.tips_passcode_confirm_passcode);
                            numberPickerView15 = this.this$0.numberPickerView;
                            if (numberPickerView15 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                numberPickerView15 = null;
                            }
                            numberPickerView15.setSelected(true);
                        }
                    });
                    this.animator = duration2;
                    duration2.start();
                    return;
                }
                if (this.confirmedPasscodeContainer.isEmpty() && initStepActivity.isBackShowing()) {
                    initStepActivity.hideBack();
                    InitStepActivity.gotoConnectAccountSuccess$default(initStepActivity, null, 1, null);
                    return;
                } else {
                    if (this.confirmedPasscodeContainer.size() == 4 && this.isEnter4Length) {
                        final ValueAnimator duration3 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                        duration3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                SetPasscodeFragment.onKeyUp$lambda$24$lambda$21(SetPasscodeFragment.this, valueAnimator2);
                            }
                        });
                        Intrinsics.checkNotNull(duration3);
                        duration3.addListener(new Animator.AnimatorListener(duration3, this, this, initStepActivity) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onKeyUp$lambda$24$$inlined$addListener$default$1
                            final /* synthetic */ InitStepActivity $activity$inlined;
                            final /* synthetic */ ValueAnimator $this_apply$inlined;
                            final /* synthetic */ SetPasscodeFragment this$0;

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            {
                                this.$activity$inlined = initStepActivity;
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                this.$this_apply$inlined.removeAllUpdateListeners();
                                this.$this_apply$inlined.removeAllListeners();
                                this.this$0.animator = null;
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                List list;
                                TextView textView7;
                                TextView textView8;
                                NumberPickerView numberPickerView15;
                                NumberPickerView numberPickerView16;
                                TextView textView9;
                                this.this$0.isEnter4Length = false;
                                list = this.this$0.confirmedPasscodeContainer;
                                list.clear();
                                this.$activity$inlined.hideBack();
                                this.this$0.setTextToTipsView(R.string.tips_passcode_create_a_passcode);
                                textView7 = this.this$0.tvContinue;
                                TextView textView10 = null;
                                if (textView7 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                                    textView7 = null;
                                }
                                textView7.setSelected(false);
                                textView8 = this.this$0.tvContinue;
                                if (textView8 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                                    textView8 = null;
                                }
                                textView8.setTextSize(2, 24.0f);
                                numberPickerView15 = this.this$0.numberPickerView;
                                if (numberPickerView15 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                    numberPickerView15 = null;
                                }
                                numberPickerView15.setSelected(true);
                                numberPickerView16 = this.this$0.numberPickerView;
                                if (numberPickerView16 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                    numberPickerView16 = null;
                                }
                                numberPickerView16.reset();
                                textView9 = this.this$0.tvRetry;
                                if (textView9 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvRetry");
                                } else {
                                    textView10 = textView9;
                                }
                                textView10.setVisibility(8);
                            }
                        });
                        this.animator = duration3;
                        duration3.start();
                        return;
                    }
                    return;
                }
            }
            NumberPickerView numberPickerView15 = this.numberPickerView;
            if (numberPickerView15 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                numberPickerView15 = null;
            }
            if (!numberPickerView15.isDeleteItem()) {
                NumberPickerView numberPickerView16 = this.numberPickerView;
                if (numberPickerView16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    numberPickerView16 = null;
                }
                if (numberPickerView16.isNormalItemInSelectArea()) {
                    NumberPickerView numberPickerView17 = this.numberPickerView;
                    if (numberPickerView17 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    } else {
                        numberPickerView5 = numberPickerView17;
                    }
                    numberPickerView5.showSelectedConfirmAnimation();
                    return;
                }
                return;
            }
            if (this.confirmedPasscodeContainer.isEmpty() && !initStepActivity.isBackShowing()) {
                initStepActivity.showBack(R.string.text_init_step_2_name);
                NumberPickerView numberPickerView18 = this.numberPickerView;
                if (numberPickerView18 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                } else {
                    numberPickerView2 = numberPickerView18;
                }
                numberPickerView2.setSelected(false);
                return;
            }
            if (this.confirmedPasscodeContainer.size() == 4 && this.isEnter4Length && !initStepActivity.isBackShowing()) {
                initStepActivity.showBack(R.string.tip_init_step_set_passcode_reset_passcode);
                NumberPickerView numberPickerView19 = this.numberPickerView;
                if (numberPickerView19 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                } else {
                    numberPickerView3 = numberPickerView19;
                }
                numberPickerView3.setSelected(false);
                return;
            }
            NumberPickerView numberPickerView20 = this.numberPickerView;
            if (numberPickerView20 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                numberPickerView20 = null;
            }
            if (numberPickerView20.isAvailable()) {
                NumberPickerView numberPickerView21 = this.numberPickerView;
                if (numberPickerView21 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                } else {
                    numberPickerView4 = numberPickerView21;
                }
                numberPickerView4.onDelete();
                CollectionsKt.removeLast(this.confirmedPasscodeContainer);
                if (this.confirmedPasscodeContainer.isEmpty()) {
                    final ValueAnimator duration4 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda8
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            SetPasscodeFragment.onKeyUp$lambda$4$lambda$1(SetPasscodeFragment.this, valueAnimator2);
                        }
                    });
                    Intrinsics.checkNotNull(duration4);
                    duration4.addListener(new Animator.AnimatorListener(duration4, this, this) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onKeyUp$lambda$4$$inlined$addListener$default$1
                        final /* synthetic */ ValueAnimator $this_apply$inlined;
                        final /* synthetic */ SetPasscodeFragment this$0;

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            this.$this_apply$inlined.removeAllUpdateListeners();
                            this.$this_apply$inlined.removeAllListeners();
                            this.this$0.animator = null;
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            this.this$0.setTextToTipsView(R.string.tips_passcode_create_a_passcode);
                        }
                    });
                    this.animator = duration4;
                    duration4.start();
                } else if (this.confirmedPasscodeContainer.size() == 4) {
                    final ValueAnimator duration5 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda9
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            SetPasscodeFragment.onKeyUp$lambda$9$lambda$6(SetPasscodeFragment.this, valueAnimator2);
                        }
                    });
                    Intrinsics.checkNotNull(duration5);
                    duration5.addListener(new Animator.AnimatorListener(duration5, this, this) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onKeyUp$lambda$9$$inlined$addListener$default$1
                        final /* synthetic */ ValueAnimator $this_apply$inlined;
                        final /* synthetic */ SetPasscodeFragment this$0;

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            this.$this_apply$inlined.removeAllUpdateListeners();
                            this.$this_apply$inlined.removeAllListeners();
                            this.this$0.animator = null;
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            this.this$0.setTextToTipsView(R.string.tips_passcode_confirm_passcode);
                        }
                    });
                    this.animator = duration5;
                    duration5.start();
                }
                onConfirmItem("");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$4$lambda$1(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        LinearLayout linearLayout = this$0.llTipContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
            linearLayout = null;
        }
        linearLayout.setAlpha(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$9$lambda$6(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        LinearLayout linearLayout = this$0.llTipContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
            linearLayout = null;
        }
        linearLayout.setAlpha(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$14$lambda$11(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        NumberPickerView numberPickerView = this$0.numberPickerView;
        LinearLayout linearLayout = null;
        if (numberPickerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
            numberPickerView = null;
        }
        numberPickerView.setAlpha(floatValue);
        FrameLayout frameLayout = this$0.flContinueContainer;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
            frameLayout = null;
        }
        frameLayout.setAlpha(1 - floatValue);
        LinearLayout linearLayout2 = this$0.llTipContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setAlpha(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$19$lambda$16(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        FrameLayout frameLayout = this$0.flContinueContainer;
        LinearLayout linearLayout = null;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
            frameLayout = null;
        }
        frameLayout.setAlpha(1 - floatValue);
        NumberPickerView numberPickerView = this$0.numberPickerView;
        if (numberPickerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
            numberPickerView = null;
        }
        numberPickerView.setAlpha(floatValue);
        LinearLayout linearLayout2 = this$0.llTipContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setAlpha(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$24$lambda$21(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        NumberPickerView numberPickerView = this$0.numberPickerView;
        LinearLayout linearLayout = null;
        if (numberPickerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
            numberPickerView = null;
        }
        numberPickerView.setAlpha(floatValue);
        LinearLayout linearLayout2 = this$0.llTipContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setAlpha(floatValue);
    }

    @Override // tech.rabbit.r1launcher.initstep.widget.NumberPickerView.OnNumberPickerListener
    public void onScroll() {
        if (isEqualTips(R.string.tips_passcode_create_a_passcode) || isEqualTips(R.string.tips_passcode_confirm_passcode) || isEqualTips(R.string.tips_passcode_set_codes_did_not_match)) {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.animator = null;
            updateCurrentTipsId(R.string.tips_passcode_scroll_up_to_select_next_digit);
            final ValueAnimator duration = ValueAnimator.ofFloat(1.0f, 0.0f, 1.0f).setDuration(300L);
            duration.setStartDelay(500L);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SetPasscodeFragment.onScroll$lambda$28$lambda$26(SetPasscodeFragment.this, valueAnimator2);
                }
            });
            Intrinsics.checkNotNull(duration);
            duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1
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
                    SetPasscodeFragment.this.animator = null;
                    duration.removeAllUpdateListeners();
                    duration.removeAllListeners();
                }
            });
            this.animator = duration;
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onScroll$lambda$28$lambda$26(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        LinearLayout linearLayout = this$0.llTipContainer;
        TextView textView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
            linearLayout = null;
        }
        linearLayout.setAlpha(floatValue);
        if (floatValue < 0.2d) {
            this$0.setTextToTipsView(R.string.tips_passcode_scroll_up_to_select_next_digit);
            TextView textView2 = this$0.tvRetry;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvRetry");
            } else {
                textView = textView2;
            }
            textView.setVisibility(8);
        }
    }

    @Override // tech.rabbit.r1launcher.initstep.widget.NumberPickerView.OnNumberPickerListener
    public void onConfirmItem(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            if (!Intrinsics.areEqual("", text)) {
                this.confirmedPasscodeContainer.add(text);
            }
            if (this.confirmedPasscodeContainer.size() == 1 || this.confirmedPasscodeContainer.size() == 5) {
                onScroll();
            }
            TextView textView = null;
            LinearLayout linearLayout = null;
            if (isEqualTips(R.string.tips_passcode_scroll_up_to_select_next_digit)) {
                ValueAnimator valueAnimator2 = this.animator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.animator = null;
                updateCurrentTipsId(0);
                float[] fArr = new float[2];
                LinearLayout linearLayout2 = this.llTipContainer;
                if (linearLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
                } else {
                    linearLayout = linearLayout2;
                }
                fArr[0] = linearLayout.getAlpha();
                fArr[1] = 0.0f;
                final ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(300L);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        SetPasscodeFragment.onConfirmItem$lambda$32$lambda$30(SetPasscodeFragment.this, valueAnimator3);
                    }
                });
                Intrinsics.checkNotNull(duration);
                duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1
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
                        duration.removeAllUpdateListeners();
                        duration.removeAllListeners();
                        this.animator = null;
                    }
                });
                this.animator = duration;
                duration.start();
                return;
            }
            if (this.confirmedPasscodeContainer.size() == 4 && !this.isEnter4Length) {
                this.isEnter4Length = true;
                final ValueAnimator duration2 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        SetPasscodeFragment.onConfirmItem$lambda$37$lambda$34(SetPasscodeFragment.this, valueAnimator3);
                    }
                });
                Intrinsics.checkNotNull(duration2);
                duration2.addListener(new Animator.AnimatorListener(duration2, this) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1
                    final /* synthetic */ ValueAnimator $this_apply$inlined;

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        NumberPickerView numberPickerView;
                        NumberPickerView numberPickerView2;
                        numberPickerView = SetPasscodeFragment.this.numberPickerView;
                        if (numberPickerView == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                            numberPickerView = null;
                        }
                        numberPickerView.setSelected(false);
                        numberPickerView2 = SetPasscodeFragment.this.numberPickerView;
                        if (numberPickerView2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                            numberPickerView2 = null;
                        }
                        numberPickerView2.reset();
                        this.$this_apply$inlined.removeAllUpdateListeners();
                        this.$this_apply$inlined.removeAllListeners();
                        SetPasscodeFragment.this.animator = null;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        TextView textView2;
                        List list;
                        TextView textView3;
                        TextView textView4;
                        textView2 = SetPasscodeFragment.this.tvConfirmPasscode;
                        TextView textView5 = null;
                        if (textView2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("tvConfirmPasscode");
                            textView2 = null;
                        }
                        list = SetPasscodeFragment.this.confirmedPasscodeContainer;
                        textView2.setText(CollectionsKt.joinToString$default(CollectionsKt.toList(list.subList(0, 4)), "", null, null, 0, null, null, 62, null));
                        textView3 = SetPasscodeFragment.this.tvContinue;
                        if (textView3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                            textView3 = null;
                        }
                        textView3.setSelected(true);
                        textView4 = SetPasscodeFragment.this.tvContinue;
                        if (textView4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                        } else {
                            textView5 = textView4;
                        }
                        textView5.setTextSize(2, 30.0f);
                    }
                });
                this.animator = duration2;
                duration2.start();
                return;
            }
            if (this.confirmedPasscodeContainer.size() == 8) {
                List list = CollectionsKt.toList(this.confirmedPasscodeContainer.subList(0, 4));
                if (Intrinsics.areEqual(list, CollectionsKt.toList(this.confirmedPasscodeContainer.subList(4, 8)))) {
                    Constant.savePasscode(CollectionsKt.joinToString$default(list, "", null, null, 0, null, null, 62, null));
                    final ValueAnimator duration3 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                    duration3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda4
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            SetPasscodeFragment.onConfirmItem$lambda$42$lambda$39(SetPasscodeFragment.this, valueAnimator3);
                        }
                    });
                    Intrinsics.checkNotNull(duration3);
                    duration3.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$42$$inlined$addListener$default$1
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
                            NumberPickerView numberPickerView;
                            NumberPickerView numberPickerView2;
                            numberPickerView = SetPasscodeFragment.this.numberPickerView;
                            if (numberPickerView == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                numberPickerView = null;
                            }
                            numberPickerView.reset();
                            numberPickerView2 = SetPasscodeFragment.this.numberPickerView;
                            if (numberPickerView2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                numberPickerView2 = null;
                            }
                            final SetPasscodeFragment setPasscodeFragment = SetPasscodeFragment.this;
                            numberPickerView2.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$42$lambda$41$$inlined$postDelayed$1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    FragmentActivity requireActivity = SetPasscodeFragment.this.requireActivity();
                                    InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
                                    if (initStepActivity != null) {
                                        initStepActivity.gotoFinalGuideAnimation();
                                    }
                                }
                            }, 1000L);
                            duration3.removeAllUpdateListeners();
                            duration3.removeAllListeners();
                            SetPasscodeFragment.this.animator = null;
                        }
                    });
                    this.animator = duration3;
                    duration3.start();
                    return;
                }
                this.confirmedPasscodeContainer.clear();
                this.confirmedPasscodeContainer.addAll(list);
                final ValueAnimator duration4 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                duration4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        SetPasscodeFragment.onConfirmItem$lambda$51$lambda$44(SetPasscodeFragment.this, valueAnimator3);
                    }
                });
                Intrinsics.checkNotNull(duration4);
                duration4.addListener(new Animator.AnimatorListener(duration4, this, this) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1
                    final /* synthetic */ ValueAnimator $this_apply$inlined;
                    final /* synthetic */ SetPasscodeFragment this$0;

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        this.$this_apply$inlined.removeAllUpdateListeners();
                        this.$this_apply$inlined.removeAllListeners();
                        this.this$0.animator = null;
                        final ValueAnimator duration5 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                        final SetPasscodeFragment setPasscodeFragment = this.this$0;
                        duration5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$7$2$1$1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator it) {
                                TextView textView2;
                                NumberPickerView numberPickerView;
                                LinearLayout linearLayout3;
                                Intrinsics.checkNotNullParameter(it, "it");
                                Object animatedValue = it.getAnimatedValue();
                                Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                                float floatValue = ((Float) animatedValue).floatValue();
                                textView2 = SetPasscodeFragment.this.tvSuccessOrWaiting;
                                LinearLayout linearLayout4 = null;
                                if (textView2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvSuccessOrWaiting");
                                    textView2 = null;
                                }
                                textView2.setAlpha(1 - floatValue);
                                numberPickerView = SetPasscodeFragment.this.numberPickerView;
                                if (numberPickerView == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                    numberPickerView = null;
                                }
                                numberPickerView.setAlpha(floatValue);
                                linearLayout3 = SetPasscodeFragment.this.llTipContainer;
                                if (linearLayout3 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
                                } else {
                                    linearLayout4 = linearLayout3;
                                }
                                linearLayout4.setAlpha(floatValue);
                            }
                        });
                        Intrinsics.checkNotNull(duration5);
                        final SetPasscodeFragment setPasscodeFragment2 = this.this$0;
                        duration5.addListener(new Animator.AnimatorListener(duration5, setPasscodeFragment2) { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$51$lambda$49$lambda$47$$inlined$addListener$default$1
                            final /* synthetic */ ValueAnimator $this_apply$inlined;

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator2) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator2) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                TextView textView2;
                                textView2 = SetPasscodeFragment.this.tvSuccessOrWaiting;
                                if (textView2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvSuccessOrWaiting");
                                    textView2 = null;
                                }
                                textView2.setText(R.string.tips_passcode_passcode_has_been_set_successfully);
                                this.$this_apply$inlined.removeAllUpdateListeners();
                                this.$this_apply$inlined.removeAllListeners();
                                SetPasscodeFragment.this.animator = null;
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator2) {
                                NumberPickerView numberPickerView;
                                TextView textView2;
                                numberPickerView = SetPasscodeFragment.this.numberPickerView;
                                TextView textView3 = null;
                                if (numberPickerView == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                    numberPickerView = null;
                                }
                                numberPickerView.reset();
                                SetPasscodeFragment.this.setTextToTipsView(R.string.tips_passcode_set_codes_did_not_match);
                                textView2 = SetPasscodeFragment.this.tvRetry;
                                if (textView2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvRetry");
                                } else {
                                    textView3 = textView2;
                                }
                                textView3.setVisibility(0);
                            }
                        });
                        this.this$0.animator = duration5;
                        duration5.start();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        TextView textView2;
                        textView2 = this.this$0.tvSuccessOrWaiting;
                        if (textView2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("tvSuccessOrWaiting");
                            textView2 = null;
                        }
                        textView2.setText("");
                    }
                });
                this.animator = duration4;
                duration4.start();
                return;
            }
            if (this.confirmedPasscodeContainer.size() == 3 || this.confirmedPasscodeContainer.size() == 7) {
                TextView textView2 = this.tvToFinish;
                if (textView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
                    textView2 = null;
                }
                if (textView2.getAlpha() == 0.0f) {
                    final ValueAnimator duration5 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda6
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            SetPasscodeFragment.onConfirmItem$lambda$55$lambda$53(SetPasscodeFragment.this, valueAnimator3);
                        }
                    });
                    Intrinsics.checkNotNull(duration5);
                    duration5.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$55$$inlined$addListener$default$1
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
                            duration5.removeAllUpdateListeners();
                            duration5.removeAllListeners();
                            this.animator = null;
                        }
                    });
                    this.animator = duration5;
                    duration5.start();
                    return;
                }
            }
            if (this.confirmedPasscodeContainer.size() == 3 || this.confirmedPasscodeContainer.size() == 7) {
                return;
            }
            TextView textView3 = this.tvToFinish;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
            } else {
                textView = textView3;
            }
            if (textView.getAlpha() == 1.0f) {
                final ValueAnimator duration6 = ValueAnimator.ofFloat(1.0f, 0.0f).setDuration(300L);
                duration6.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$$ExternalSyntheticLambda7
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        SetPasscodeFragment.onConfirmItem$lambda$59$lambda$57(SetPasscodeFragment.this, valueAnimator3);
                    }
                });
                Intrinsics.checkNotNull(duration6);
                duration6.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.SetPasscodeFragment$onConfirmItem$lambda$59$$inlined$addListener$default$1
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
                        duration6.removeAllUpdateListeners();
                        duration6.removeAllListeners();
                        this.animator = null;
                    }
                });
                this.animator = duration6;
                duration6.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$32$lambda$30(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        LinearLayout linearLayout = this$0.llTipContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
            linearLayout = null;
        }
        linearLayout.setAlpha(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$37$lambda$34(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        NumberPickerView numberPickerView = this$0.numberPickerView;
        FrameLayout frameLayout = null;
        if (numberPickerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
            numberPickerView = null;
        }
        float f = 1 - floatValue;
        numberPickerView.setAlpha(f);
        TextView textView = this$0.tvToFinish;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
            textView = null;
        }
        textView.setAlpha(f);
        FrameLayout frameLayout2 = this$0.flContinueContainer;
        if (frameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
        } else {
            frameLayout = frameLayout2;
        }
        frameLayout.setAlpha(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$42$lambda$39(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        TextView textView = this$0.tvSuccessOrWaiting;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvSuccessOrWaiting");
            textView = null;
        }
        textView.setAlpha(floatValue);
        TextView textView2 = this$0.tvToFinish;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
            textView2 = null;
        }
        float f = 1 - floatValue;
        textView2.setAlpha(f);
        NumberPickerView numberPickerView = this$0.numberPickerView;
        if (numberPickerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
            numberPickerView = null;
        }
        numberPickerView.setAlpha(f);
        FragmentActivity requireActivity = this$0.requireActivity();
        InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
        if (initStepActivity != null) {
            initStepActivity.setStepProgressIndicatorAlpha(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$51$lambda$44(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        TextView textView = this$0.tvSuccessOrWaiting;
        NumberPickerView numberPickerView = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvSuccessOrWaiting");
            textView = null;
        }
        textView.setAlpha(floatValue);
        TextView textView2 = this$0.tvToFinish;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
            textView2 = null;
        }
        float f = 1 - floatValue;
        textView2.setAlpha(f);
        NumberPickerView numberPickerView2 = this$0.numberPickerView;
        if (numberPickerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
        } else {
            numberPickerView = numberPickerView2;
        }
        numberPickerView.setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$55$lambda$53(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        TextView textView = this$0.tvToFinish;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
            textView = null;
        }
        textView.setAlpha(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$59$lambda$57(SetPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        TextView textView = this$0.tvToFinish;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
            textView = null;
        }
        textView.setAlpha(floatValue);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.isEnter4Length = false;
        this.confirmedPasscodeContainer.clear();
        NumberPickerView numberPickerView = this.numberPickerView;
        if (numberPickerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
            numberPickerView = null;
        }
        numberPickerView.resetCacheData();
        super.onDestroyView();
    }
}
