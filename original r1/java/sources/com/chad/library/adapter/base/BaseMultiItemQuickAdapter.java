package com.chad.library.adapter.base;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseMultiItemQuickAdapter.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005B\u0017\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0001\u0010\u0013\u001a\u00020\u0012H\u0004J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0014J\u001d\u0010\u0016\u001a\u00028\u00012\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0012H\u0014¢\u0006\u0002\u0010\u001aR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/chad/library/adapter/base/entity/MultiItemEntity;", "VH", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "data", "", "(Ljava/util/List;)V", "layouts", "Landroid/util/SparseIntArray;", "getLayouts", "()Landroid/util/SparseIntArray;", "layouts$delegate", "Lkotlin/Lazy;", "addItemType", "", "type", "", "layoutResId", "getDefItemViewType", "position", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class BaseMultiItemQuickAdapter<T extends MultiItemEntity, VH extends BaseViewHolder> extends BaseQuickAdapter<T, VH> {

    /* renamed from: layouts$delegate, reason: from kotlin metadata */
    private final Lazy layouts;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseMultiItemQuickAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ BaseMultiItemQuickAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list);
    }

    public BaseMultiItemQuickAdapter(List<T> list) {
        super(0, list);
        this.layouts = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SparseIntArray>() { // from class: com.chad.library.adapter.base.BaseMultiItemQuickAdapter$layouts$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SparseIntArray invoke() {
                return new SparseIntArray();
            }
        });
    }

    private final SparseIntArray getLayouts() {
        return (SparseIntArray) this.layouts.getValue();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int position) {
        return ((MultiItemEntity) getData().get(position)).getItemType();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected VH onCreateDefViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        int i = getLayouts().get(viewType);
        if (i == 0) {
            throw new IllegalArgumentException(("ViewType: " + viewType + " found layoutResId，please use addItemType() first!").toString());
        }
        return createBaseViewHolder(parent, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addItemType(int type, int layoutResId) {
        getLayouts().put(type, layoutResId);
    }
}
