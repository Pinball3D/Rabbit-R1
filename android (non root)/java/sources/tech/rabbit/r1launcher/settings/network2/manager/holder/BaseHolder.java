package tech.rabbit.r1launcher.settings.network2.manager.holder;

import android.content.Context;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.settings.network2.WifiWrap;

/* compiled from: BaseHolder.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006H&J\b\u0010\u000b\u001a\u00020\bH\u0016J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "binding", "Landroidx/viewbinding/ViewBinding;", "(Landroidx/viewbinding/ViewBinding;)V", Device.JsonKeys.MODEL, "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "onAttachedToWindow", "", "onBind", "item", "onDetachedFromWindow", "requireContext", "Landroid/content/Context;", "requireModel", "setModelToHolder", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseHolder extends BaseViewHolder {
    public static final int $stable = 8;
    private WifiWrap model;

    public void onAttachedToWindow() {
    }

    public abstract void onBind(WifiWrap item);

    public void onDetachedFromWindow() {
    }

    public final void setModelToHolder(WifiWrap model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseHolder(androidx.viewbinding.ViewBinding r2) {
        /*
            r1 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            android.view.View r2 = r2.getRoot()
            java.lang.String r0 = "getRoot(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.network2.manager.holder.BaseHolder.<init>(androidx.viewbinding.ViewBinding):void");
    }

    public final WifiWrap requireModel() {
        WifiWrap wifiWrap = this.model;
        Intrinsics.checkNotNull(wifiWrap);
        return wifiWrap;
    }

    public final Context requireContext() {
        Context context = this.itemView.getContext();
        Intrinsics.checkNotNull(context);
        return context;
    }
}
