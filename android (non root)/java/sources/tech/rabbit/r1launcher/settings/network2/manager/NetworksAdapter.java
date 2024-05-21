package tech.rabbit.r1launcher.settings.network2.manager;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.databinding.ItemMyNetworksLabelBinding;
import tech.rabbit.r1launcher.databinding.ItemNetworksLabelBinding;
import tech.rabbit.r1launcher.databinding.ItemWifiItemBinding;
import tech.rabbit.r1launcher.settings.network2.WifiWrap;
import tech.rabbit.r1launcher.settings.network2.manager.holder.BaseHolder;
import tech.rabbit.r1launcher.settings.network2.manager.holder.MyNetworksLabelHolder;
import tech.rabbit.r1launcher.settings.network2.manager.holder.NetworksLabelHolder;
import tech.rabbit.r1launcher.settings.network2.manager.holder.WifiItemHolder;

/* compiled from: NetworksAdapter.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0014J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016¨\u0006\u0013"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "Ltech/rabbit/r1launcher/settings/network2/manager/holder/BaseHolder;", "()V", "convert", "", "holder", "item", "getDefItemViewType", "", "position", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onViewAttachedToWindow", "onViewDetachedFromWindow", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NetworksAdapter extends BaseQuickAdapter<WifiWrap, BaseHolder> {
    public static final int $stable = 0;
    public static final int VIEW_TYPE_MY_NETWORKS_LABEL = 999;
    public static final int VIEW_TYPE_NETWORKS_LABEL = 888;
    public static final int VIEW_TYPE_WIFI_ITEM = 777;

    public NetworksAdapter() {
        super(0, null, 2, null);
        setDiffCallback(new DiffCallback());
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onViewAttachedToWindow(BaseHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow((NetworksAdapter) holder);
        if (holder != null) {
            holder.onAttachedToWindow();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int position) {
        return getData().get(position).getViewType();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public BaseHolder onCreateDefViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 777) {
            Object invoke = ItemWifiItemBinding.class.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, LayoutInflater.from(parent.getContext()), parent, false);
            if (invoke != null) {
                return new WifiItemHolder((ItemWifiItemBinding) invoke);
            }
            throw new NullPointerException("null cannot be cast to non-null type tech.rabbit.r1launcher.databinding.ItemWifiItemBinding");
        }
        if (viewType == 888) {
            Object invoke2 = ItemNetworksLabelBinding.class.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, LayoutInflater.from(parent.getContext()), parent, false);
            if (invoke2 != null) {
                return new NetworksLabelHolder((ItemNetworksLabelBinding) invoke2);
            }
            throw new NullPointerException("null cannot be cast to non-null type tech.rabbit.r1launcher.databinding.ItemNetworksLabelBinding");
        }
        if (viewType != 999) {
            throw new IllegalArgumentException("View Type is wrong, viewType = " + viewType);
        }
        Object invoke3 = ItemMyNetworksLabelBinding.class.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, LayoutInflater.from(parent.getContext()), parent, false);
        if (invoke3 != null) {
            return new MyNetworksLabelHolder((ItemMyNetworksLabelBinding) invoke3);
        }
        throw new NullPointerException("null cannot be cast to non-null type tech.rabbit.r1launcher.databinding.ItemMyNetworksLabelBinding");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseHolder holder, WifiWrap item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        if (holder != null) {
            holder.setModelToHolder(item);
            holder.onBind(item);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(BaseHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder != null) {
            holder.onDetachedFromWindow();
        }
        super.onViewDetachedFromWindow((NetworksAdapter) holder);
    }
}
