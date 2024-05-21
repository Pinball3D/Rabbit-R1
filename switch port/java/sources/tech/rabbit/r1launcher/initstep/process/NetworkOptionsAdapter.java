package tech.rabbit.r1launcher.initstep.process;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;

/* compiled from: ConnectNetworkFragment.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00182\u0018\u0010\u0019\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ2\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0018\u0010#\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u001a2\b\b\u0002\u0010$\u001a\u00020\u0007R \u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006%"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;", "Landroid/widget/BaseAdapter;", "()V", "items", "", "Lkotlin/Pair;", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "", "<set-?>", "selectedIndex", "getSelectedIndex", "()I", "getCount", "getItem", "", "position", "getItemId", "", "getView", "Landroid/view/View;", "convertView", "parent", "Landroid/view/ViewGroup;", "isContainsItem", "", "list", "", "removeSelectedState", "", "listView", "Landroid/widget/ListView;", "resetSelectedStateToFirstItem", "selectNext", "selectPrev", "setNewData", "data", "forceSelectedIndex", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NetworkOptionsAdapter extends BaseAdapter {
    public static final int $stable = 8;
    private final List<Pair<Wifi, Integer>> items = new ArrayList();
    private int selectedIndex = -1;

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.items.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.items.get(position);
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (convertView == null) {
            convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_init_step_network_options, parent, false);
        }
        Object item = getItem(position);
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type kotlin.Pair<tech.rabbit.r1launcher.initstep.model.Wifi, kotlin.Int>");
        Pair pair = (Pair) item;
        Wifi wifi = (Wifi) pair.component1();
        int intValue = ((Number) pair.component2()).intValue();
        ImageView imageView = (ImageView) convertView.findViewById(R.id.iv_item_icon);
        imageView.setImageResource(intValue);
        TextView textView = (TextView) convertView.findViewById(R.id.tv_item_name);
        textView.setText(wifi.getSsid());
        int i = this.selectedIndex;
        if (i == -1) {
            textView.setSelected(false);
        } else {
            textView.setSelected(i == position);
        }
        if (this.selectedIndex == position) {
            Intrinsics.checkNotNull(convertView);
            ViewGroup.LayoutParams layoutParams = convertView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = UiExtensionsKt.getDp(40);
                convertView.setLayoutParams(layoutParams);
                convertView.setBackgroundResource(R.drawable.shape_ff4d00_r10);
                Intrinsics.checkNotNull(imageView);
                ImageView imageView2 = imageView;
                ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
                if (layoutParams2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                }
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
                LinearLayout.LayoutParams layoutParams4 = layoutParams3;
                layoutParams4.width = UiExtensionsKt.getDp(24);
                layoutParams4.height = UiExtensionsKt.getDp(24);
                LinearLayout.LayoutParams layoutParams5 = layoutParams4;
                layoutParams5.setMargins(UiExtensionsKt.getDp(6), ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin, UiExtensionsKt.getDp(6), ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin);
                imageView2.setLayoutParams(layoutParams3);
                UiExtensionsKt.srcTint(imageView, ViewCompat.MEASURED_STATE_MASK);
                textView.setTextSize(30.0f);
                textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
        } else {
            Intrinsics.checkNotNull(convertView);
            ViewGroup.LayoutParams layoutParams6 = convertView.getLayoutParams();
            if (layoutParams6 != null) {
                layoutParams6.height = UiExtensionsKt.getDp(33);
                convertView.setLayoutParams(layoutParams6);
                convertView.setBackgroundColor(0);
                Intrinsics.checkNotNull(imageView);
                ImageView imageView3 = imageView;
                ViewGroup.LayoutParams layoutParams7 = imageView3.getLayoutParams();
                if (layoutParams7 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                }
                LinearLayout.LayoutParams layoutParams8 = (LinearLayout.LayoutParams) layoutParams7;
                LinearLayout.LayoutParams layoutParams9 = layoutParams8;
                layoutParams9.width = UiExtensionsKt.getDp(18);
                layoutParams9.height = UiExtensionsKt.getDp(18);
                LinearLayout.LayoutParams layoutParams10 = layoutParams9;
                layoutParams10.setMargins(0, ((ViewGroup.MarginLayoutParams) layoutParams10).topMargin, UiExtensionsKt.getDp(6), ((ViewGroup.MarginLayoutParams) layoutParams10).bottomMargin);
                imageView3.setLayoutParams(layoutParams8);
                UiExtensionsKt.srcTint(imageView, -1);
                textView.setTextSize(24.0f);
                textView.setTextColor(-1);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
        }
        return convertView;
    }

    public static /* synthetic */ void setNewData$default(NetworkOptionsAdapter networkOptionsAdapter, ListView listView, List list, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = -1;
        }
        networkOptionsAdapter.setNewData(listView, list, i);
    }

    public final void setNewData(final ListView listView, List<Pair<Wifi, Integer>> data, int forceSelectedIndex) {
        Intrinsics.checkNotNullParameter(listView, "listView");
        Intrinsics.checkNotNullParameter(data, "data");
        Pair pair = (Pair) CollectionsKt.getOrNull(this.items, this.selectedIndex);
        this.items.clear();
        this.items.addAll(data);
        List<Pair<Wifi, Integer>> list = this.items;
        if (list.size() > 1) {
            CollectionsKt.sortWith(list, new Comparator() { // from class: tech.rabbit.r1launcher.initstep.process.NetworkOptionsAdapter$setNewData$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(((Wifi) ((Pair) t2).getFirst()).getSignalLevel()), Integer.valueOf(((Wifi) ((Pair) t).getFirst()).getSignalLevel()));
                }
            });
        }
        if (this.selectedIndex >= 0) {
            List<Pair<Wifi, Integer>> list2 = this.items;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add((Wifi) ((Pair) it.next()).getFirst());
            }
            int indexOf = CollectionsKt.indexOf((List<? extends Wifi>) arrayList, pair != null ? (Wifi) pair.getFirst() : null);
            this.selectedIndex = indexOf;
            if (indexOf == -1) {
                this.selectedIndex = 0;
            }
        }
        if (forceSelectedIndex >= 0) {
            this.selectedIndex = forceSelectedIndex;
        }
        listView.post(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.NetworkOptionsAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                NetworkOptionsAdapter.setNewData$lambda$6(listView, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setNewData$lambda$6(ListView listView, NetworkOptionsAdapter this$0) {
        Intrinsics.checkNotNullParameter(listView, "$listView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        listView.setSelection(this$0.selectedIndex);
        this$0.notifyDataSetChanged();
    }

    public final void removeSelectedState(ListView listView) {
        Intrinsics.checkNotNullParameter(listView, "listView");
        this.selectedIndex = -1;
        listView.post(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.NetworkOptionsAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NetworkOptionsAdapter.removeSelectedState$lambda$7(NetworkOptionsAdapter.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeSelectedState$lambda$7(NetworkOptionsAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyDataSetChanged();
    }

    public final void resetSelectedStateToFirstItem(final ListView listView) {
        Intrinsics.checkNotNullParameter(listView, "listView");
        this.selectedIndex = 0;
        listView.post(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.NetworkOptionsAdapter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                NetworkOptionsAdapter.resetSelectedStateToFirstItem$lambda$8(listView, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resetSelectedStateToFirstItem$lambda$8(ListView listView, NetworkOptionsAdapter this$0) {
        Intrinsics.checkNotNullParameter(listView, "$listView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        listView.setSelection(this$0.selectedIndex);
        this$0.notifyDataSetChanged();
    }

    public final void selectPrev(final ListView listView) {
        Intrinsics.checkNotNullParameter(listView, "listView");
        int i = this.selectedIndex;
        if (i <= 0) {
            return;
        }
        this.selectedIndex = i - 1;
        listView.post(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.NetworkOptionsAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                NetworkOptionsAdapter.selectPrev$lambda$9(listView, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void selectPrev$lambda$9(ListView listView, NetworkOptionsAdapter this$0) {
        Intrinsics.checkNotNullParameter(listView, "$listView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        listView.setSelection(this$0.selectedIndex);
        this$0.notifyDataSetChanged();
    }

    public final void selectNext(final ListView listView) {
        Intrinsics.checkNotNullParameter(listView, "listView");
        if (this.selectedIndex >= this.items.size() - 1) {
            return;
        }
        this.selectedIndex++;
        listView.post(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.NetworkOptionsAdapter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                NetworkOptionsAdapter.selectNext$lambda$10(listView, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void selectNext$lambda$10(ListView listView, NetworkOptionsAdapter this$0) {
        Intrinsics.checkNotNullParameter(listView, "$listView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        listView.setSelection(this$0.selectedIndex);
        this$0.notifyDataSetChanged();
    }

    public final boolean isContainsItem(List<Pair<Wifi, Integer>> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<Pair<Wifi, Integer>> it = list.iterator();
        while (it.hasNext()) {
            if (this.items.contains(it.next())) {
                return true;
            }
        }
        return false;
    }
}
