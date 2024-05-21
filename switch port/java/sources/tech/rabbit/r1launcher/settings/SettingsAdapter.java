package tech.rabbit.r1launcher.settings;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.settings.holder.BaseHolder;

/* compiled from: SettingsAdapter.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0014¨\u0006\u0010"}, d2 = {"Ltech/rabbit/r1launcher/settings/SettingsAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Ltech/rabbit/r1launcher/settings/SettingItems;", "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;", "()V", "convert", "", "holder", "item", "getDefItemViewType", "", "position", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingsAdapter extends BaseQuickAdapter<SettingItems, BaseHolder> {
    public static final int $stable = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsAdapter() {
        super(0, null, 2, 0 == true ? 1 : 0);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int position) {
        return getData().get(position).getHolderClass().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public BaseHolder onCreateDefViewHolder(ViewGroup parent, int viewType) {
        Object obj;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Iterator<E> it = SettingItems.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((SettingItems) obj).getHolderClass().hashCode() == viewType) {
                break;
            }
        }
        SettingItems settingItems = (SettingItems) obj;
        if (settingItems == null) {
            throw new IllegalArgumentException("View Type is wrong, viewType = " + viewType);
        }
        BaseHolder newInstance = settingItems.getHolderClass().getDeclaredConstructor(View.class).newInstance(settingItems.getItemView(parent));
        Intrinsics.checkNotNullExpressionValue(newInstance, "newInstance(...)");
        return newInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseHolder holder, SettingItems item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        if (holder != null) {
            holder.setModelToHolder(item);
            holder.onBind(item);
        }
    }
}
