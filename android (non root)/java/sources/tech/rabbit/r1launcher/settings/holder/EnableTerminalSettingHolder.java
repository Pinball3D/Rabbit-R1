package tech.rabbit.r1launcher.settings.holder;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import defpackage.AppConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.databinding.ItemSettingEnableTerminalBinding;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.settings.SettingItems;
import tech.rabbit.r1launcher.settings.network2.UtilsKt;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;

/* compiled from: EnableTerminalSettingHolder.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/settings/holder/EnableTerminalSettingHolder;", "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;", "getBinding", "()Ltech/rabbit/r1launcher/databinding/ItemSettingEnableTerminalBinding;", "onBind", "", "item", "Ltech/rabbit/r1launcher/settings/SettingItems;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EnableTerminalSettingHolder extends BaseHolder {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnableTerminalSettingHolder(View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        final AppCompatTextView root = getBinding().getRoot();
        root.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.holder.EnableTerminalSettingHolder$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                EnableTerminalSettingHolder.lambda$2$lambda$1(AppCompatTextView.this, view, z);
            }
        });
        Intrinsics.checkNotNull(root);
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(root, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.holder.EnableTerminalSettingHolder$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                AppConfig.INSTANCE.setEnabledTerminal(!AppConfig.INSTANCE.isEnabledTerminal());
                AppCompatTextView.this.setActivated(AppConfig.INSTANCE.isEnabledTerminal());
            }
        });
    }

    private final ItemSettingEnableTerminalBinding getBinding() {
        ItemSettingEnableTerminalBinding bind = ItemSettingEnableTerminalBinding.bind(this.itemView);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        return bind;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void lambda$2$lambda$1(AppCompatTextView this_with, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.setPadding(z ? UiExtensionsKt.getDp(6) : 0, 0, z ? UiExtensionsKt.getDp(6) : 0, 0);
        AppCompatTextView appCompatTextView = this_with;
        ViewGroup.LayoutParams layoutParams = appCompatTextView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = UiExtensionsKt.getDp(z ? 36 : 29);
            appCompatTextView.setLayoutParams(layoutParams);
            this_with.setTextSize(z ? 30.0f : 24.0f);
            if (z) {
                UtilsKt.toFocusedToggleButtonStyle(this_with);
                return;
            } else {
                UtilsKt.toUnfocusedToggleButtonStyle(this_with);
                return;
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    @Override // tech.rabbit.r1launcher.settings.holder.BaseHolder
    public void onBind(SettingItems item) {
        Intrinsics.checkNotNullParameter(item, "item");
        getBinding().getRoot().setText(item.getLabelResId());
        getBinding().getRoot().setActivated(AppConfig.INSTANCE.isEnabledTerminal());
    }
}
