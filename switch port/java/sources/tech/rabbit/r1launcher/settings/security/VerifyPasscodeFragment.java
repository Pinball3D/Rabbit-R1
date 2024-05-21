package tech.rabbit.r1launcher.settings.security;

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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.utils.Constants;
import tech.rabbit.r1launcher.initstep.widget.NumberPickerView;
import tech.rabbit.r1launcher.wss.Constant;
import tech.rabbit.r1launcher.wss.RabbitEngine;

/* compiled from: VerifyPasscodeFragment.kt */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u0004H\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\b\u0010,\u001a\u00020\u001cH\u0016J\u0018\u0010-\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020!2\b\u0010/\u001a\u0004\u0018\u000100J\b\u00101\u001a\u00020\u001cH\u0016J\u001a\u00102\u001a\u00020\u001c2\u0006\u00103\u001a\u00020%2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0010\u00104\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!H\u0002J\u0012\u00105\u001a\u00020\u001c2\b\b\u0001\u00106\u001a\u00020!H\u0002J\u0010\u00107\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;", "moduleName", "", "(Ljava/lang/String;)V", "animator", "Landroid/animation/ValueAnimator;", "confirmedPasscodeContainer", "", "flContinueContainer", "Landroid/widget/FrameLayout;", "lastTimeClicked", "", "llBackContainer", "Landroid/widget/LinearLayout;", "llTipContainer", "numberPickerView", "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;", "tvBackTitle", "Landroid/widget/TextView;", "tvConfirmPasscode", "tvContinue", "tvRetry", "tvTips", "tvTitle", "tvToFinish", "hideBack", "", "isBackShowing", "", "isEqualTips", "stringResId", "", "onConfirmItem", "text", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onKeyCodeEvent", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onScroll", "onViewCreated", "view", "setTextToTipsView", "showBack", "backTitleResId", "updateCurrentTipsId", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VerifyPasscodeFragment extends Fragment implements NumberPickerView.OnNumberPickerListener {
    public static final int $stable = 8;
    private ValueAnimator animator;
    private final List<String> confirmedPasscodeContainer;
    private FrameLayout flContinueContainer;
    private long lastTimeClicked;
    private LinearLayout llBackContainer;
    private LinearLayout llTipContainer;
    private final String moduleName;
    private NumberPickerView numberPickerView;
    private TextView tvBackTitle;
    private TextView tvConfirmPasscode;
    private TextView tvContinue;
    private TextView tvRetry;
    private TextView tvTips;
    private TextView tvTitle;
    private TextView tvToFinish;

    /* JADX WARN: Multi-variable type inference failed */
    public VerifyPasscodeFragment() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ VerifyPasscodeFragment(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerifyPasscodeFragment(String moduleName) {
        super(R.layout.fragment_verify_passcode);
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        this.moduleName = moduleName;
        this.confirmedPasscodeContainer = new ArrayList();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        NumberPickerView numberPickerView = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.tv_title);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.tvTitle = (TextView) findViewById;
        View findViewById2 = onCreateView.findViewById(R.id.npv_picker);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        NumberPickerView numberPickerView2 = (NumberPickerView) findViewById2;
        this.numberPickerView = numberPickerView2;
        if (numberPickerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
        } else {
            numberPickerView = numberPickerView2;
        }
        numberPickerView.setOnNumberPickerListener(this);
        View findViewById3 = onCreateView.findViewById(R.id.tv_tip);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        this.tvTips = (TextView) findViewById3;
        View findViewById4 = onCreateView.findViewById(R.id.tv_retry);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
        this.tvRetry = (TextView) findViewById4;
        View findViewById5 = onCreateView.findViewById(R.id.ll_tip_container);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(...)");
        this.llTipContainer = (LinearLayout) findViewById5;
        View findViewById6 = onCreateView.findViewById(R.id.tv_to_finish);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(...)");
        this.tvToFinish = (TextView) findViewById6;
        View findViewById7 = onCreateView.findViewById(R.id.tv_confirm_passcode);
        Intrinsics.checkNotNullExpressionValue(findViewById7, "findViewById(...)");
        this.tvConfirmPasscode = (TextView) findViewById7;
        View findViewById8 = onCreateView.findViewById(R.id.tv_continue);
        Intrinsics.checkNotNullExpressionValue(findViewById8, "findViewById(...)");
        this.tvContinue = (TextView) findViewById8;
        View findViewById9 = onCreateView.findViewById(R.id.fl_continue_container);
        Intrinsics.checkNotNullExpressionValue(findViewById9, "findViewById(...)");
        this.flContinueContainer = (FrameLayout) findViewById9;
        View findViewById10 = onCreateView.findViewById(R.id.tv_back_title);
        Intrinsics.checkNotNullExpressionValue(findViewById10, "findViewById(...)");
        this.tvBackTitle = (TextView) findViewById10;
        View findViewById11 = onCreateView.findViewById(R.id.ll_back_container);
        Intrinsics.checkNotNullExpressionValue(findViewById11, "findViewById(...)");
        this.llBackContainer = (LinearLayout) findViewById11;
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setTextToTipsView(R.string.tip_settings_change_passcode_enter_your_current_passcode);
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

    public final void onKeyCodeEvent(int keyCode, KeyEvent event) {
        if (SystemClock.elapsedRealtime() - this.lastTimeClicked < 300) {
            return;
        }
        this.lastTimeClicked = SystemClock.elapsedRealtime();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            NumberPickerView numberPickerView = null;
            NumberPickerView numberPickerView2 = null;
            NumberPickerView numberPickerView3 = null;
            NumberPickerView numberPickerView4 = null;
            NumberPickerView numberPickerView5 = null;
            NumberPickerView numberPickerView6 = null;
            NumberPickerView numberPickerView7 = null;
            if (!Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
                if (keyCode == 20) {
                    if (isBackShowing()) {
                        FrameLayout frameLayout = this.flContinueContainer;
                        if (frameLayout == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                            frameLayout = null;
                        }
                        if (frameLayout.getAlpha() == 0.0f) {
                            hideBack();
                            NumberPickerView numberPickerView8 = this.numberPickerView;
                            if (numberPickerView8 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                            } else {
                                numberPickerView5 = numberPickerView8;
                            }
                            numberPickerView5.setSelected(true);
                            return;
                        }
                    }
                    FrameLayout frameLayout2 = this.flContinueContainer;
                    if (frameLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                        frameLayout2 = null;
                    }
                    if (frameLayout2.getAlpha() == 1.0f) {
                        return;
                    }
                    NumberPickerView numberPickerView9 = this.numberPickerView;
                    if (numberPickerView9 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    } else {
                        numberPickerView6 = numberPickerView9;
                    }
                    numberPickerView6.onScrollUp();
                    return;
                }
                if (keyCode == 19) {
                    if (isBackShowing()) {
                        FrameLayout frameLayout3 = this.flContinueContainer;
                        if (frameLayout3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                            frameLayout3 = null;
                        }
                        if (frameLayout3.getAlpha() == 0.0f) {
                            hideBack();
                            NumberPickerView numberPickerView10 = this.numberPickerView;
                            if (numberPickerView10 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                            } else {
                                numberPickerView7 = numberPickerView10;
                            }
                            numberPickerView7.setSelected(true);
                            return;
                        }
                    }
                    FrameLayout frameLayout4 = this.flContinueContainer;
                    if (frameLayout4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                        frameLayout4 = null;
                    }
                    if (frameLayout4.getAlpha() == 1.0f) {
                        return;
                    }
                    NumberPickerView numberPickerView11 = this.numberPickerView;
                    if (numberPickerView11 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    } else {
                        numberPickerView = numberPickerView11;
                    }
                    numberPickerView.onScrollDown();
                    return;
                }
                return;
            }
            NumberPickerView numberPickerView12 = this.numberPickerView;
            if (numberPickerView12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                numberPickerView12 = null;
            }
            if (!numberPickerView12.isSelected()) {
                FrameLayout frameLayout5 = this.flContinueContainer;
                if (frameLayout5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
                    frameLayout5 = null;
                }
                if (frameLayout5.getAlpha() == 1.0f && !isBackShowing()) {
                    FragmentActivity requireActivity = requireActivity();
                    SecurityActivity securityActivity = requireActivity instanceof SecurityActivity ? (SecurityActivity) requireActivity : null;
                    if (securityActivity != null) {
                        securityActivity.gotoChangePasscode();
                        return;
                    }
                    return;
                }
                if (this.confirmedPasscodeContainer.isEmpty() && isBackShowing()) {
                    hideBack();
                    if (this.moduleName.length() == 0) {
                        FragmentActivity requireActivity2 = requireActivity();
                        SecurityActivity securityActivity2 = requireActivity2 instanceof SecurityActivity ? (SecurityActivity) requireActivity2 : null;
                        if (securityActivity2 != null) {
                            securityActivity2.gotoSecurityFragment();
                            return;
                        }
                        return;
                    }
                    RabbitEngine.INSTANCE.syncPasscodeVerifyState(this.moduleName, RabbitEngine.PasscodeVerifyState.Cancel);
                    requireActivity().finish();
                    return;
                }
                return;
            }
            NumberPickerView numberPickerView13 = this.numberPickerView;
            if (numberPickerView13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                numberPickerView13 = null;
            }
            if (!numberPickerView13.isDeleteItem()) {
                NumberPickerView numberPickerView14 = this.numberPickerView;
                if (numberPickerView14 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    numberPickerView14 = null;
                }
                if (numberPickerView14.isNormalItemInSelectArea()) {
                    NumberPickerView numberPickerView15 = this.numberPickerView;
                    if (numberPickerView15 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                    } else {
                        numberPickerView4 = numberPickerView15;
                    }
                    numberPickerView4.showSelectedConfirmAnimation();
                    return;
                }
                return;
            }
            if (this.confirmedPasscodeContainer.isEmpty() && !isBackShowing()) {
                if (this.moduleName.length() == 0) {
                    showBack(R.string.tip_settings_change_passcode_passcode);
                } else {
                    showBack(R.string.text_back);
                }
                NumberPickerView numberPickerView16 = this.numberPickerView;
                if (numberPickerView16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                } else {
                    numberPickerView2 = numberPickerView16;
                }
                numberPickerView2.setSelected(false);
                return;
            }
            NumberPickerView numberPickerView17 = this.numberPickerView;
            if (numberPickerView17 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                numberPickerView17 = null;
            }
            if (numberPickerView17.isAvailable()) {
                NumberPickerView numberPickerView18 = this.numberPickerView;
                if (numberPickerView18 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                } else {
                    numberPickerView3 = numberPickerView18;
                }
                numberPickerView3.onDelete();
                CollectionsKt.removeLast(this.confirmedPasscodeContainer);
                if (this.confirmedPasscodeContainer.isEmpty()) {
                    final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$$ExternalSyntheticLambda5
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            VerifyPasscodeFragment.onKeyCodeEvent$lambda$4$lambda$1(VerifyPasscodeFragment.this, valueAnimator2);
                        }
                    });
                    Intrinsics.checkNotNull(duration);
                    duration.addListener(new Animator.AnimatorListener(duration, this) { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onKeyCodeEvent$lambda$4$$inlined$addListener$default$1
                        final /* synthetic */ ValueAnimator $this_apply$inlined;

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            VerifyPasscodeFragment.this.animator = null;
                            this.$this_apply$inlined.removeAllUpdateListeners();
                            this.$this_apply$inlined.removeAllListeners();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            VerifyPasscodeFragment.this.setTextToTipsView(R.string.tip_settings_change_passcode_enter_your_current_passcode);
                        }
                    });
                    this.animator = duration;
                    duration.start();
                }
                onConfirmItem("");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyCodeEvent$lambda$4$lambda$1(VerifyPasscodeFragment this$0, ValueAnimator it) {
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

    @Override // tech.rabbit.r1launcher.initstep.widget.NumberPickerView.OnNumberPickerListener
    public void onScroll() {
        if (isEqualTips(R.string.tip_settings_change_passcode_enter_your_current_passcode) || isEqualTips(R.string.tips_passcode_set_codes_did_not_match)) {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.animator = null;
            updateCurrentTipsId(R.string.tips_passcode_scroll_up_to_select_next_digit);
            final ValueAnimator duration = ValueAnimator.ofFloat(1.0f, 0.0f, 1.0f).setDuration(300L);
            duration.setStartDelay(500L);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$$ExternalSyntheticLambda6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    VerifyPasscodeFragment.onScroll$lambda$8$lambda$6(VerifyPasscodeFragment.this, valueAnimator2);
                }
            });
            Intrinsics.checkNotNull(duration);
            duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onScroll$lambda$8$$inlined$addListener$default$1
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
                    VerifyPasscodeFragment.this.animator = null;
                    duration.removeAllUpdateListeners();
                    duration.removeAllListeners();
                }
            });
            this.animator = duration;
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onScroll$lambda$8$lambda$6(VerifyPasscodeFragment this$0, ValueAnimator it) {
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
            if (this.confirmedPasscodeContainer.size() == 1) {
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
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        VerifyPasscodeFragment.onConfirmItem$lambda$12$lambda$10(VerifyPasscodeFragment.this, valueAnimator3);
                    }
                });
                Intrinsics.checkNotNull(duration);
                duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onConfirmItem$lambda$12$$inlined$addListener$default$1
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
            if (this.confirmedPasscodeContainer.size() == 4) {
                if (Intrinsics.areEqual(CollectionsKt.joinToString$default(CollectionsKt.toList(this.confirmedPasscodeContainer.subList(0, 4)), "", null, null, 0, null, null, 62, null), Constant.getPasscode())) {
                    final ValueAnimator duration2 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                    duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            VerifyPasscodeFragment.onConfirmItem$lambda$17$lambda$14(VerifyPasscodeFragment.this, valueAnimator3);
                        }
                    });
                    Intrinsics.checkNotNull(duration2);
                    duration2.addListener(new Animator.AnimatorListener(duration2, this) { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onConfirmItem$lambda$17$$inlined$addListener$default$1
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
                            String str;
                            String str2;
                            numberPickerView = VerifyPasscodeFragment.this.numberPickerView;
                            if (numberPickerView == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                numberPickerView = null;
                            }
                            numberPickerView.setSelected(false);
                            numberPickerView2 = VerifyPasscodeFragment.this.numberPickerView;
                            if (numberPickerView2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                numberPickerView2 = null;
                            }
                            numberPickerView2.reset();
                            str = VerifyPasscodeFragment.this.moduleName;
                            if (str.length() > 0) {
                                RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
                                str2 = VerifyPasscodeFragment.this.moduleName;
                                rabbitEngine.syncPasscodeVerifyState(str2, RabbitEngine.PasscodeVerifyState.Succeed);
                                VerifyPasscodeFragment.this.requireActivity().finish();
                            }
                            VerifyPasscodeFragment.this.animator = null;
                            this.$this_apply$inlined.removeAllUpdateListeners();
                            this.$this_apply$inlined.removeAllListeners();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            TextView textView2;
                            List list;
                            TextView textView3;
                            TextView textView4;
                            textView2 = VerifyPasscodeFragment.this.tvConfirmPasscode;
                            TextView textView5 = null;
                            if (textView2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("tvConfirmPasscode");
                                textView2 = null;
                            }
                            list = VerifyPasscodeFragment.this.confirmedPasscodeContainer;
                            textView2.setText(CollectionsKt.joinToString$default(CollectionsKt.toList(list.subList(0, 4)), "", null, null, 0, null, null, 62, null));
                            textView3 = VerifyPasscodeFragment.this.tvContinue;
                            if (textView3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("tvContinue");
                                textView3 = null;
                            }
                            textView3.setSelected(true);
                            textView4 = VerifyPasscodeFragment.this.tvContinue;
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
                this.confirmedPasscodeContainer.clear();
                final ValueAnimator duration3 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                duration3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$$ExternalSyntheticLambda2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        VerifyPasscodeFragment.onConfirmItem$lambda$24$lambda$19(VerifyPasscodeFragment.this, valueAnimator3);
                    }
                });
                Intrinsics.checkNotNull(duration3);
                duration3.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onConfirmItem$lambda$24$$inlined$addListener$default$1
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
                        final ValueAnimator duration4 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
                        final VerifyPasscodeFragment verifyPasscodeFragment = this;
                        duration4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onConfirmItem$5$2$1$1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator it) {
                                NumberPickerView numberPickerView;
                                LinearLayout linearLayout3;
                                Intrinsics.checkNotNullParameter(it, "it");
                                Object animatedValue = it.getAnimatedValue();
                                Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                                float floatValue = ((Float) animatedValue).floatValue();
                                numberPickerView = VerifyPasscodeFragment.this.numberPickerView;
                                LinearLayout linearLayout4 = null;
                                if (numberPickerView == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                    numberPickerView = null;
                                }
                                numberPickerView.setAlpha(floatValue);
                                linearLayout3 = VerifyPasscodeFragment.this.llTipContainer;
                                if (linearLayout3 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("llTipContainer");
                                } else {
                                    linearLayout4 = linearLayout3;
                                }
                                linearLayout4.setAlpha(floatValue);
                            }
                        });
                        Intrinsics.checkNotNull(duration4);
                        final VerifyPasscodeFragment verifyPasscodeFragment2 = this;
                        duration4.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onConfirmItem$lambda$24$lambda$23$lambda$22$$inlined$addListener$default$1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator2) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator2) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                duration4.removeAllUpdateListeners();
                                duration4.removeAllListeners();
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator2) {
                                NumberPickerView numberPickerView;
                                TextView textView2;
                                numberPickerView = verifyPasscodeFragment2.numberPickerView;
                                TextView textView3 = null;
                                if (numberPickerView == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
                                    numberPickerView = null;
                                }
                                numberPickerView.reset();
                                verifyPasscodeFragment2.setTextToTipsView(R.string.tips_passcode_set_codes_did_not_match);
                                textView2 = verifyPasscodeFragment2.tvRetry;
                                if (textView2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("tvRetry");
                                } else {
                                    textView3 = textView2;
                                }
                                textView3.setVisibility(0);
                            }
                        });
                        duration4.start();
                        duration3.removeAllUpdateListeners();
                        duration3.removeAllListeners();
                        this.animator = null;
                    }
                });
                this.animator = duration3;
                duration3.start();
                return;
            }
            if (this.confirmedPasscodeContainer.size() == 3) {
                TextView textView2 = this.tvToFinish;
                if (textView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
                    textView2 = null;
                }
                if (textView2.getAlpha() == 0.0f) {
                    final ValueAnimator duration4 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$$ExternalSyntheticLambda3
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            VerifyPasscodeFragment.onConfirmItem$lambda$28$lambda$26(VerifyPasscodeFragment.this, valueAnimator3);
                        }
                    });
                    Intrinsics.checkNotNull(duration4);
                    duration4.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onConfirmItem$lambda$28$$inlined$addListener$default$1
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
                            duration4.removeAllUpdateListeners();
                            duration4.removeAllListeners();
                            this.animator = null;
                        }
                    });
                    this.animator = duration4;
                    duration4.start();
                    return;
                }
            }
            if (this.confirmedPasscodeContainer.size() != 3) {
                TextView textView3 = this.tvToFinish;
                if (textView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
                } else {
                    textView = textView3;
                }
                if (textView.getAlpha() == 1.0f) {
                    final ValueAnimator duration5 = ValueAnimator.ofFloat(1.0f, 0.0f).setDuration(300L);
                    duration5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$$ExternalSyntheticLambda4
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            VerifyPasscodeFragment.onConfirmItem$lambda$32$lambda$30(VerifyPasscodeFragment.this, valueAnimator3);
                        }
                    });
                    Intrinsics.checkNotNull(duration5);
                    duration5.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.settings.security.VerifyPasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1
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
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$12$lambda$10(VerifyPasscodeFragment this$0, ValueAnimator it) {
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
    public static final void onConfirmItem$lambda$17$lambda$14(VerifyPasscodeFragment this$0, ValueAnimator it) {
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
        if (this$0.moduleName.length() == 0) {
            FrameLayout frameLayout2 = this$0.flContinueContainer;
            if (frameLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("flContinueContainer");
            } else {
                frameLayout = frameLayout2;
            }
            frameLayout.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$24$lambda$19(VerifyPasscodeFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        TextView textView = this$0.tvToFinish;
        NumberPickerView numberPickerView = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvToFinish");
            textView = null;
        }
        float f = 1 - floatValue;
        textView.setAlpha(f);
        NumberPickerView numberPickerView2 = this$0.numberPickerView;
        if (numberPickerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
        } else {
            numberPickerView = numberPickerView2;
        }
        numberPickerView.setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfirmItem$lambda$28$lambda$26(VerifyPasscodeFragment this$0, ValueAnimator it) {
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
    public static final void onConfirmItem$lambda$32$lambda$30(VerifyPasscodeFragment this$0, ValueAnimator it) {
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
        this.confirmedPasscodeContainer.clear();
        NumberPickerView numberPickerView = this.numberPickerView;
        if (numberPickerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberPickerView");
            numberPickerView = null;
        }
        numberPickerView.resetCacheData();
        super.onDestroyView();
    }

    private final void showBack(int backTitleResId) {
        TextView textView = this.tvBackTitle;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvBackTitle");
            textView = null;
        }
        textView.setText(backTitleResId);
        LinearLayout linearLayout = this.llBackContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
            linearLayout = null;
        }
        linearLayout.setVisibility(0);
        TextView textView3 = this.tvTitle;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTitle");
        } else {
            textView2 = textView3;
        }
        textView2.setVisibility(8);
    }

    private final void hideBack() {
        LinearLayout linearLayout = this.llBackContainer;
        TextView textView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
            linearLayout = null;
        }
        linearLayout.setVisibility(8);
        TextView textView2 = this.tvTitle;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTitle");
        } else {
            textView = textView2;
        }
        textView.setVisibility(0);
    }

    private final boolean isBackShowing() {
        LinearLayout linearLayout = this.llBackContainer;
        TextView textView = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("llBackContainer");
            linearLayout = null;
        }
        if (linearLayout.getVisibility() == 0) {
            TextView textView2 = this.tvTitle;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTitle");
            } else {
                textView = textView2;
            }
            if (textView.getVisibility() != 0) {
                return true;
            }
        }
        return false;
    }
}
