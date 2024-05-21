package tech.rabbit.r1launcher.settings.holder;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewGroupKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.ItemSettingBrightnessBinding;
import tech.rabbit.r1launcher.initstep.utils.Constants;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.settings.SettingItems;
import tech.rabbit.r1launcher.settings.brightness.BrightnessAdjustCard;

/* compiled from: BrightnessSettingHolder.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Ltech/rabbit/r1launcher/settings/holder/BrightnessSettingHolder;", "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;", "getBinding", "()Ltech/rabbit/r1launcher/databinding/ItemSettingBrightnessBinding;", "getBrightnessAdjustCard", "Ltech/rabbit/r1launcher/settings/brightness/BrightnessAdjustCard;", "decorView", "Landroid/widget/FrameLayout;", "hideBrightnessAdjustCard", "", "isShowingBrightnessAdjustCard", "", "onBind", "item", "Ltech/rabbit/r1launcher/settings/SettingItems;", "showBrightnessAdjustCard", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BrightnessSettingHolder extends BaseHolder {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrightnessSettingHolder(View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        LinearLayoutCompat root = getBinding().getRoot();
        root.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.holder.BrightnessSettingHolder$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                BrightnessSettingHolder.lambda$3$lambda$1(BrightnessSettingHolder.this, view, z);
            }
        });
        root.setOnKeyListener(new View.OnKeyListener() { // from class: tech.rabbit.r1launcher.settings.holder.BrightnessSettingHolder$$ExternalSyntheticLambda1
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return BrightnessSettingHolder.lambda$3$lambda$2(BrightnessSettingHolder.this, view, i, keyEvent);
            }
        });
    }

    private final ItemSettingBrightnessBinding getBinding() {
        ItemSettingBrightnessBinding bind = ItemSettingBrightnessBinding.bind(this.itemView);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        return bind;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void lambda$3$lambda$1(BrightnessSettingHolder this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().tvLabel.setTextColor(this$0.requireContext().getColor(z ? R.color.black : R.color.white));
        this$0.getBinding().tvLabel.setPadding(z ? UiExtensionsKt.getDp(6) : 0, 0, z ? UiExtensionsKt.getDp(6) : 0, 0);
        AppCompatTextView tvLabel = this$0.getBinding().tvLabel;
        Intrinsics.checkNotNullExpressionValue(tvLabel, "tvLabel");
        AppCompatTextView appCompatTextView = tvLabel;
        ViewGroup.LayoutParams layoutParams = appCompatTextView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = UiExtensionsKt.getDp(z ? 36 : 29);
            appCompatTextView.setLayoutParams(layoutParams);
            this$0.getBinding().tvLabel.setTextSize(z ? 30.0f : 24.0f);
            AppCompatTextView tvHold = this$0.getBinding().tvHold;
            Intrinsics.checkNotNullExpressionValue(tvHold, "tvHold");
            tvHold.setVisibility(z ? 0 : 8);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final boolean lambda$3$lambda$2(BrightnessSettingHolder this$0, View view, int i, KeyEvent keyEvent) {
        BrightnessAdjustCard brightnessAdjustCard;
        BrightnessAdjustCard brightnessAdjustCard2;
        Window window;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = view.getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        KeyEvent.Callback decorView = (activity == null || (window = activity.getWindow()) == null) ? null : window.getDecorView();
        FrameLayout frameLayout = decorView instanceof FrameLayout ? (FrameLayout) decorView : null;
        if (frameLayout == null) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (!Constants.INSTANCE.isSideButtonKeyCode(i) || this$0.isShowingBrightnessAdjustCard(frameLayout)) {
                return this$0.isShowingBrightnessAdjustCard(frameLayout) && (brightnessAdjustCard2 = this$0.getBrightnessAdjustCard(frameLayout)) != null && brightnessAdjustCard2.onKeyCodeEvent(i);
            }
            this$0.showBrightnessAdjustCard(frameLayout);
            return true;
        }
        if (keyEvent.getAction() != 1) {
            return false;
        }
        if (!Constants.INSTANCE.isSideButtonKeyCode(i) || !this$0.isShowingBrightnessAdjustCard(frameLayout)) {
            return this$0.isShowingBrightnessAdjustCard(frameLayout) && (brightnessAdjustCard = this$0.getBrightnessAdjustCard(frameLayout)) != null && brightnessAdjustCard.onKeyCodeEvent(i);
        }
        this$0.hideBrightnessAdjustCard(frameLayout);
        return true;
    }

    private final boolean isShowingBrightnessAdjustCard(FrameLayout decorView) {
        int i = 0;
        for (View view : ViewGroupKt.getChildren(decorView)) {
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            if (Intrinsics.areEqual(view.getClass(), BrightnessAdjustCard.class)) {
                return i > 0;
            }
            i++;
        }
        return false;
    }

    private final void showBrightnessAdjustCard(FrameLayout decorView) {
        BrightnessAdjustCard brightnessAdjustCard = new BrightnessAdjustCard(requireContext());
        brightnessAdjustCard.setId(R.id.id_settings_brightness_adjust_card);
        brightnessAdjustCard.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        decorView.addView(brightnessAdjustCard);
    }

    private final void hideBrightnessAdjustCard(FrameLayout decorView) {
        BrightnessAdjustCard brightnessAdjustCard = getBrightnessAdjustCard(decorView);
        if (brightnessAdjustCard != null) {
            decorView.removeView(brightnessAdjustCard);
        }
    }

    private final BrightnessAdjustCard getBrightnessAdjustCard(FrameLayout decorView) {
        return (BrightnessAdjustCard) decorView.findViewById(R.id.id_settings_brightness_adjust_card);
    }

    @Override // tech.rabbit.r1launcher.settings.holder.BaseHolder
    public void onBind(SettingItems item) {
        Intrinsics.checkNotNullParameter(item, "item");
        getBinding().tvLabel.setText(item.getLabelResId());
    }
}
