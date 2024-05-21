package tech.rabbit.r1launcher.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import io.sentry.Session;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;

/* compiled from: BaseValueAdjustCard.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u00103\u001a\u000204H\u0016J\b\u00105\u001a\u00020\tH\u0016J\b\u00106\u001a\u00020\tH\u0016J\b\u00107\u001a\u00020\tH\u0016J\"\u00108\u001a\u0002042\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u00109\u001a\u000204H\u0016J\b\u0010:\u001a\u000204H\u0014J\u000e\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\tJ\b\u0010>\u001a\u000204H\u0002J\b\u0010?\u001a\u000204H\u0002J\u0010\u0010@\u001a\u0002042\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010A\u001a\u0002042\u0006\u0010B\u001a\u00020\tH\u0016R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0018\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u000fR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\r\"\u0004\b#\u0010\u000fR\u001a\u0010$\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\r\"\u0004\b&\u0010\u000fR\u001c\u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0012\"\u0004\b/\u0010\u0014R\u001a\u00100\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\r\"\u0004\b2\u0010\u000f¨\u0006C"}, d2 = {"Ltech/rabbit/r1launcher/settings/BaseValueAdjustCard;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "currentBasicValue", "getCurrentBasicValue", "()I", "setCurrentBasicValue", "(I)V", "fullBottomView", "getFullBottomView", "()Landroid/widget/FrameLayout;", "setFullBottomView", "(Landroid/widget/FrameLayout;)V", "gapBasicValue", "getGapBasicValue", "setGapBasicValue", "gapTopBasicValue", "getGapTopBasicValue", "setGapTopBasicValue", "iconView", "Landroid/widget/ImageView;", "getIconView", "()Landroid/widget/ImageView;", "setIconView", "(Landroid/widget/ImageView;)V", "maxBasicValue", "getMaxBasicValue", "setMaxBasicValue", "minBasicValue", "getMinBasicValue", "setMinBasicValue", "settingTitle", "Landroid/widget/TextView;", "getSettingTitle", "()Landroid/widget/TextView;", "setSettingTitle", "(Landroid/widget/TextView;)V", "valueView", "getValueView", "setValueView", "viewHeight", "getViewHeight", "setViewHeight", "addValue", "", "getCurrentValue", "getMaxValue", "getMinValue", "initView", "minusValue", "onAttachedToWindow", "onKeyCodeEvent", "", "keyCode", "onValueDownUpdate", "onValueUpUpdate", "setValuePercent", "setVisibility", ViewHierarchyNode.JsonKeys.VISIBILITY, "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public class BaseValueAdjustCard extends FrameLayout {
    public static final int $stable = 8;
    private int currentBasicValue;
    private FrameLayout fullBottomView;
    private int gapBasicValue;
    private int gapTopBasicValue;
    private ImageView iconView;
    private int maxBasicValue;
    private int minBasicValue;
    private TextView settingTitle;
    private FrameLayout valueView;
    private int viewHeight;

    public void addValue() {
    }

    public final int getCurrentBasicValue() {
        return this.currentBasicValue;
    }

    public int getCurrentValue() {
        return 0;
    }

    public final FrameLayout getFullBottomView() {
        return this.fullBottomView;
    }

    public final int getGapBasicValue() {
        return this.gapBasicValue;
    }

    public final int getGapTopBasicValue() {
        return this.gapTopBasicValue;
    }

    public final ImageView getIconView() {
        return this.iconView;
    }

    public final int getMaxBasicValue() {
        return this.maxBasicValue;
    }

    public int getMaxValue() {
        return 1;
    }

    public final int getMinBasicValue() {
        return this.minBasicValue;
    }

    public int getMinValue() {
        return 0;
    }

    public final TextView getSettingTitle() {
        return this.settingTitle;
    }

    public final FrameLayout getValueView() {
        return this.valueView;
    }

    public final int getViewHeight() {
        return this.viewHeight;
    }

    public void minusValue() {
    }

    public final void setCurrentBasicValue(int i) {
        this.currentBasicValue = i;
    }

    public final void setFullBottomView(FrameLayout frameLayout) {
        this.fullBottomView = frameLayout;
    }

    public final void setGapBasicValue(int i) {
        this.gapBasicValue = i;
    }

    public final void setGapTopBasicValue(int i) {
        this.gapTopBasicValue = i;
    }

    public final void setIconView(ImageView imageView) {
        this.iconView = imageView;
    }

    public final void setMaxBasicValue(int i) {
        this.maxBasicValue = i;
    }

    public final void setMinBasicValue(int i) {
        this.minBasicValue = i;
    }

    public final void setSettingTitle(TextView textView) {
        this.settingTitle = textView;
    }

    public final void setValueView(FrameLayout frameLayout) {
        this.valueView = frameLayout;
    }

    public final void setViewHeight(int i) {
        this.viewHeight = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseValueAdjustCard(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.viewHeight = 568;
        this.gapBasicValue = 1;
        this.gapTopBasicValue = 1;
        initView(context, null, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseValueAdjustCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.viewHeight = 568;
        this.gapBasicValue = 1;
        this.gapTopBasicValue = 1;
        initView(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseValueAdjustCard(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.viewHeight = 568;
        this.gapBasicValue = 1;
        this.gapTopBasicValue = 1;
        initView(context, attributeSet, i);
    }

    public void initView(Context context, AttributeSet attrs, int defStyleAttr) {
        Intrinsics.checkNotNullParameter(context, "context");
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_base_value_adjust, (ViewGroup) this, true);
        this.settingTitle = (TextView) inflate.findViewById(R.id.tv_settings_title);
        this.fullBottomView = (FrameLayout) inflate.findViewById(R.id.fl_full_height_view);
        this.valueView = (FrameLayout) inflate.findViewById(R.id.fl_value_counter);
        this.iconView = (ImageView) inflate.findViewById(R.id.iv_icon);
        post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.BaseValueAdjustCard$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BaseValueAdjustCard.initView$lambda$0(BaseValueAdjustCard.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$0(BaseValueAdjustCard this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FrameLayout frameLayout = this$0.fullBottomView;
        this$0.viewHeight = frameLayout != null ? frameLayout.getHeight() : this$0.viewHeight;
        this$0.setValuePercent(this$0.currentBasicValue);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.BaseValueAdjustCard$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BaseValueAdjustCard.setVisibility$lambda$1(BaseValueAdjustCard.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setVisibility$lambda$1(BaseValueAdjustCard this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FrameLayout frameLayout = this$0.fullBottomView;
        this$0.viewHeight = frameLayout != null ? frameLayout.getHeight() : this$0.viewHeight;
        this$0.setValuePercent(this$0.currentBasicValue);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.minBasicValue = getMinValue();
        this.maxBasicValue = getMaxValue();
        this.currentBasicValue = getCurrentValue();
        this.gapBasicValue = (int) (this.maxBasicValue * 0.1f);
    }

    public void setValuePercent(int currentBasicValue) {
        ViewGroup.LayoutParams layoutParams;
        this.currentBasicValue = currentBasicValue;
        if (currentBasicValue > this.minBasicValue) {
            double d = currentBasicValue;
            int i = this.maxBasicValue;
            if (d > i * 0.01d) {
                float f = this.viewHeight * ((currentBasicValue * 1.0f) / i);
                FrameLayout frameLayout = this.valueView;
                layoutParams = frameLayout != null ? frameLayout.getLayoutParams() : null;
                if (layoutParams == null) {
                    return;
                }
                layoutParams.height = (int) f;
                FrameLayout frameLayout2 = this.valueView;
                if (frameLayout2 == null) {
                    return;
                }
                frameLayout2.setLayoutParams(layoutParams);
                return;
            }
        }
        float f2 = this.viewHeight * 0.01f;
        FrameLayout frameLayout3 = this.valueView;
        layoutParams = frameLayout3 != null ? frameLayout3.getLayoutParams() : null;
        if (layoutParams == null) {
            return;
        }
        layoutParams.height = (int) f2;
        FrameLayout frameLayout4 = this.valueView;
        if (frameLayout4 == null) {
            return;
        }
        frameLayout4.setLayoutParams(layoutParams);
    }

    public final boolean onKeyCodeEvent(int keyCode) {
        if (KeyCodeExtensionKt.isKeyCodeUp(keyCode)) {
            addValue();
            onValueUpUpdate();
            return true;
        }
        if (!KeyCodeExtensionKt.isKeyCodeDown(keyCode)) {
            return false;
        }
        minusValue();
        onValueDownUpdate();
        return true;
    }

    private final void onValueUpUpdate() {
        setValuePercent(getCurrentValue());
    }

    private final void onValueDownUpdate() {
        setValuePercent(getCurrentValue());
    }
}
