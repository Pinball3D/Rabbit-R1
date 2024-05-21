package tech.rabbit.r1launcher.settings.network2.manager.holder;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.ItemWifiItemBinding;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity;
import tech.rabbit.r1launcher.settings.network2.WifiWrap;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;

/* compiled from: WifiItemHolder.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/manager/holder/WifiItemHolder;", "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;", "binding", "Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;", "(Ltech/rabbit/r1launcher/databinding/ItemWifiItemBinding;)V", "onBind", "", "item", "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WifiItemHolder extends BaseHolder {
    public static final int $stable = 8;
    private final ItemWifiItemBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiItemHolder(ItemWifiItemBinding binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
        binding.getRoot().setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.network2.manager.holder.WifiItemHolder$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                WifiItemHolder._init_$lambda$1(WifiItemHolder.this, view, z);
            }
        });
        AppCompatTextView root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(root, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.holder.WifiItemHolder.2
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                Wifi wifi;
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                Context requireContext = WifiItemHolder.this.requireContext();
                SettingsNetwork2Activity settingsNetwork2Activity = requireContext instanceof SettingsNetwork2Activity ? (SettingsNetwork2Activity) requireContext : null;
                if (settingsNetwork2Activity == null || (wifi = WifiItemHolder.this.requireModel().getWifi()) == null) {
                    return;
                }
                SettingsNetwork2Activity.gotoWifiDetail$default(settingsNetwork2Activity, wifi, null, 2, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(WifiItemHolder this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.binding.getRoot().setPadding(z ? UiExtensionsKt.getDp(6) : 0, 0, z ? UiExtensionsKt.getDp(6) : 0, 0);
        AppCompatTextView root = this$0.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        AppCompatTextView appCompatTextView = root;
        ViewGroup.LayoutParams layoutParams = appCompatTextView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = UiExtensionsKt.getDp(z ? 40 : 33);
            appCompatTextView.setLayoutParams(layoutParams);
            this$0.binding.getRoot().setCompoundDrawablesWithIntrinsicBounds(0, 0, z ? R.drawable.selector_focused_radio_button : R.drawable.selector_unfocused_radio_button, 0);
            this$0.binding.getRoot().setTextSize(z ? 30.0f : 24.0f);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    @Override // tech.rabbit.r1launcher.settings.network2.manager.holder.BaseHolder
    public void onBind(WifiWrap item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.binding.getRoot().setActivated(item.isCurrentConnected());
        AppCompatTextView root = this.binding.getRoot();
        Wifi wifi = item.getWifi();
        String ssid = wifi != null ? wifi.getSsid() : null;
        if (ssid == null) {
            ssid = "";
        }
        root.setText(ssid);
    }
}
