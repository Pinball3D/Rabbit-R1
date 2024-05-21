package tech.rabbit.r1launcher.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.LayoutSettingRingBinding;

/* compiled from: SettingRing.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0012J\u0006\u0010\u0017\u001a\u00020\u0012R\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Ltech/rabbit/r1launcher/widget/SettingRing;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "binding", "Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;", "getBinding", "()Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;", "setBinding", "(Ltech/rabbit/r1launcher/databinding/LayoutSettingRingBinding;)V", "setLoadingTint", "", "color", "showLoading", "showOnConfirm", "showOnFocus", "showOnNormal", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingRing extends FrameLayout {
    public static final int $stable = 8;
    public LayoutSettingRingBinding binding;

    public final void setBinding(LayoutSettingRingBinding layoutSettingRingBinding) {
        Intrinsics.checkNotNullParameter(layoutSettingRingBinding, "<set-?>");
        this.binding = layoutSettingRingBinding;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingRing(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        View inflate = FrameLayout.inflate(getContext(), R.layout.layout_setting_ring, null);
        LayoutSettingRingBinding bind = LayoutSettingRingBinding.bind(inflate);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        setBinding(bind);
        addView(inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingRing(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        View inflate = FrameLayout.inflate(getContext(), R.layout.layout_setting_ring, null);
        LayoutSettingRingBinding bind = LayoutSettingRingBinding.bind(inflate);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        setBinding(bind);
        addView(inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingRing(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        View inflate = FrameLayout.inflate(getContext(), R.layout.layout_setting_ring, null);
        LayoutSettingRingBinding bind = LayoutSettingRingBinding.bind(inflate);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        setBinding(bind);
        addView(inflate);
    }

    public final LayoutSettingRingBinding getBinding() {
        LayoutSettingRingBinding layoutSettingRingBinding = this.binding;
        if (layoutSettingRingBinding != null) {
            return layoutSettingRingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void showOnFocus() {
        getBinding().vRing.setVisibility(0);
        getBinding().sl.setVisibility(8);
        getBinding().vRing.setBackground(getContext().getDrawable(R.drawable.shape_setting_ring_selected));
    }

    public final void showOnNormal() {
        getBinding().vRing.setVisibility(0);
        getBinding().sl.setVisibility(8);
        getBinding().vRing.setBackground(getContext().getDrawable(R.drawable.shape_setting_ring));
    }

    public final void showOnConfirm() {
        getBinding().vRing.setVisibility(0);
        getBinding().sl.setVisibility(8);
        getBinding().vRing.setBackground(getContext().getDrawable(R.drawable.shape_setting_ring_confrim));
    }

    public final void showLoading() {
        getBinding().vRing.setVisibility(8);
        getBinding().sl.setVisibility(0);
    }

    public final void setLoadingTint(final int color) {
        Log.i("TAG", "setLoadingTint: " + color);
        getBinding().sl.post(new Runnable() { // from class: tech.rabbit.r1launcher.widget.SettingRing$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SettingRing.setLoadingTint$lambda$0(SettingRing.this, color);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setLoadingTint$lambda$0(SettingRing this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().sl.setImageTintList(ColorStateList.valueOf(i));
    }
}
