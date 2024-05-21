package tech.rabbit.r1launcher.settings.network2.manager.holder;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.databinding.ItemMyNetworksLabelBinding;
import tech.rabbit.r1launcher.settings.network2.WifiWrap;

/* compiled from: MyNetworksLabelHolder.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/manager/holder/MyNetworksLabelHolder;", "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;", "binding", "Ltech/rabbit/r1launcher/databinding/ItemMyNetworksLabelBinding;", "(Ltech/rabbit/r1launcher/databinding/ItemMyNetworksLabelBinding;)V", "onBind", "", "item", "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MyNetworksLabelHolder extends BaseHolder {
    public static final int $stable = 8;
    private final ItemMyNetworksLabelBinding binding;

    @Override // tech.rabbit.r1launcher.settings.network2.manager.holder.BaseHolder
    public void onBind(WifiWrap item) {
        Intrinsics.checkNotNullParameter(item, "item");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyNetworksLabelHolder(ItemMyNetworksLabelBinding binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }
}
