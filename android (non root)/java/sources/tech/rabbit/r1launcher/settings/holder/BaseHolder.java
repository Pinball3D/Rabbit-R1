package tech.rabbit.r1launcher.settings.holder;

import android.content.Context;
import android.view.View;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.settings.SettingItems;

/* compiled from: BaseHolder.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006H&J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Ltech/rabbit/r1launcher/settings/holder/BaseHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", Device.JsonKeys.MODEL, "Ltech/rabbit/r1launcher/settings/SettingItems;", "onBind", "", "item", "requireContext", "Landroid/content/Context;", "requireModel", "setModelToHolder", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseHolder extends BaseViewHolder {
    public static final int $stable = 8;
    private SettingItems model;

    public abstract void onBind(SettingItems item);

    public final void setModelToHolder(SettingItems model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseHolder(View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
    }

    public final SettingItems requireModel() {
        SettingItems settingItems = this.model;
        Intrinsics.checkNotNull(settingItems);
        return settingItems;
    }

    public final Context requireContext() {
        Context context = this.itemView.getContext();
        Intrinsics.checkNotNull(context);
        return context;
    }
}
