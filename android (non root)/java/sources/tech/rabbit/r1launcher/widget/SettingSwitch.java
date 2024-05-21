package tech.rabbit.r1launcher.widget;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import io.sentry.Session;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.LayoutSettingSwitchBinding;

/* compiled from: SettingSwitch.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0002J\b\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000fJ\u0018\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u000fR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Ltech/rabbit/r1launcher/widget/SettingSwitch;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "binding", "Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;", "closeColor", "isChecked", "", "openColor", "underFocus", "doColorAnim", "", "fromColor", "toColor", "doTranslation", "pxToDp", "", "px", "setUnderFocus", "toggle", "open", "useAnim", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingSwitch extends FrameLayout {
    public static final int $stable = 8;
    private final LayoutSettingSwitchBinding binding;
    private int closeColor;
    private boolean isChecked;
    private int openColor;
    private boolean underFocus;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingSwitch(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSettingSwitchBinding bind = LayoutSettingSwitchBinding.bind(FrameLayout.inflate(getContext(), R.layout.layout_setting_switch, null));
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        this.binding = bind;
        addView(bind.getRoot());
        if (this.isChecked) {
            bind.vTrack.setBackgroundTintList(ColorStateList.valueOf(getContext().getColor(R.color.orange_ff4d00)));
        }
        this.openColor = getContext().getColor(R.color.orange_ff4d00);
        this.closeColor = getContext().getColor(R.color.orange_691F00);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSettingSwitchBinding bind = LayoutSettingSwitchBinding.bind(FrameLayout.inflate(getContext(), R.layout.layout_setting_switch, null));
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        this.binding = bind;
        addView(bind.getRoot());
        if (this.isChecked) {
            bind.vTrack.setBackgroundTintList(ColorStateList.valueOf(getContext().getColor(R.color.orange_ff4d00)));
        }
        this.openColor = getContext().getColor(R.color.orange_ff4d00);
        this.closeColor = getContext().getColor(R.color.orange_691F00);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSettingSwitchBinding bind = LayoutSettingSwitchBinding.bind(FrameLayout.inflate(getContext(), R.layout.layout_setting_switch, null));
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        this.binding = bind;
        addView(bind.getRoot());
        if (this.isChecked) {
            bind.vTrack.setBackgroundTintList(ColorStateList.valueOf(getContext().getColor(R.color.orange_ff4d00)));
        }
        this.openColor = getContext().getColor(R.color.orange_ff4d00);
        this.closeColor = getContext().getColor(R.color.orange_691F00);
    }

    public final void setUnderFocus(boolean underFocus) {
        int color;
        int color2;
        if (underFocus) {
            color = getContext().getColor(R.color.orange_FFA179);
        } else {
            color = getContext().getColor(R.color.orange_ff4d00);
        }
        this.openColor = color;
        if (underFocus) {
            color2 = getContext().getColor(R.color.orange_691F00);
        } else {
            color2 = getContext().getColor(R.color.dark_414141);
        }
        this.closeColor = color2;
        if (this.isChecked) {
            Log.i("TAG", "setUnderFocus:origin checked， underfocus = " + underFocus);
            this.binding.vTrack.setBackgroundTintList(ColorStateList.valueOf(this.openColor));
            this.binding.vTrack.invalidate();
        } else {
            this.binding.vTrack.setBackgroundTintList(ColorStateList.valueOf(this.closeColor));
            this.binding.vTrack.invalidate();
        }
    }

    public static /* synthetic */ void toggle$default(SettingSwitch settingSwitch, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        settingSwitch.toggle(z, z2);
    }

    public final void toggle(boolean open, boolean useAnim) {
        if (this.isChecked == open) {
            return;
        }
        this.isChecked = open;
        if (!useAnim) {
            this.binding.vTrack.setBackgroundTintList(ColorStateList.valueOf(open ? this.openColor : this.closeColor));
        } else if (open) {
            doColorAnim(this.closeColor, this.openColor);
        } else {
            doColorAnim(this.openColor, this.closeColor);
        }
        doTranslation();
    }

    private final void doColorAnim(int fromColor, int toColor) {
        if (fromColor == toColor) {
            return;
        }
        ValueAnimator ofArgb = ValueAnimator.ofArgb(fromColor, toColor);
        ofArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.widget.SettingSwitch$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SettingSwitch.doColorAnim$lambda$1$lambda$0(SettingSwitch.this, valueAnimator);
            }
        });
        ofArgb.setDuration(200L);
        ofArgb.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doColorAnim$lambda$1$lambda$0(SettingSwitch this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        this$0.binding.vTrack.setBackgroundTintList(ColorStateList.valueOf(((Integer) animatedValue).intValue()));
    }

    private final void doTranslation() {
        ObjectAnimator ofFloat;
        if (this.isChecked) {
            ofFloat = ObjectAnimator.ofFloat(this.binding.vThumb, ViewHierarchyNode.JsonKeys.X, 0.0f, pxToDp(15.5f));
        } else {
            ofFloat = ObjectAnimator.ofFloat(this.binding.vThumb, ViewHierarchyNode.JsonKeys.X, pxToDp(15.5f), 0.0f);
        }
        ofFloat.setDuration(200L);
        ofFloat.start();
    }

    private final float pxToDp(float px) {
        return px * getContext().getResources().getDisplayMetrics().density;
    }
}
