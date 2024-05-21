package com.chad.library.adapter.base;

import androidx.compose.material3.MenuKt;
import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.entity.node.BaseExpandNode;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.entity.node.NodeFooterImp;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: BaseNodeAdapter.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u0016\u0010\n\u001a\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0014\u001a\u00020\u000b2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J2\u0010\u0017\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u0017\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u001d\u001a\u00020\u00192\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010\u001e\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010\u001f\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u001f\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010 \u001a\u00020\u00192\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010!\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007JR\u0010\"\u001a\u00020\u000b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010#\u001a\u00020\u00192\b\b\u0002\u0010$\u001a\u00020\u00192\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010'\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u000e\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\u0002J\u0010\u0010(\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\bJ-\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0002\u0010-J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\bH\u0014J\u0016\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002J\u001e\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002J$\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fJ\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u0002J\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\bJ\u001c\u00105\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fJ\u001e\u00106\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002J\u0010\u00107\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\bH\u0016J\u0010\u00108\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0002J\u0010\u00109\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0002J\u0018\u0010:\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u001e\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020>2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\"\u0010<\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00042\b\u0010?\u001a\u0004\u0018\u00010@H\u0016J\u0018\u0010A\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fH\u0016J\u0018\u0010B\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004H\u0016R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lcom/chad/library/adapter/base/BaseNodeAdapter;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/chad/library/adapter/base/entity/node/BaseNode;", "nodeList", "", "(Ljava/util/List;)V", "fullSpanNodeTypeSet", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "addData", "", "data", "position", "newData", "", "addFooterNodeProvider", "provider", "Lcom/chad/library/adapter/base/provider/BaseNodeProvider;", "addFullSpanNodeProvider", "addItemProvider", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "addNodeProvider", "collapse", "animate", "", "notify", "parentPayload", "", "isChangeChildCollapse", "collapseAndChild", "expand", "isChangeChildExpand", "expandAndChild", "expandAndCollapseOther", "isExpandedChild", "isCollapseChild", "expandPayload", "collapsePayload", "expandOrCollapse", "findParentNode", "node", "flatData", "list", "isExpanded", "(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;", "isFixedViewType", "type", "nodeAddData", "parentNode", "childIndex", "nodeRemoveData", "childNode", "nodeReplaceChildData", "nodeSetData", "removeAt", "removeChildAt", "removeNodesAt", "setData", "index", "setDiffNewData", "diffResult", "Landroidx/recyclerview/widget/DiffUtil$DiffResult;", "commitCallback", "Ljava/lang/Runnable;", "setList", "setNewInstance", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class BaseNodeAdapter extends BaseProviderMultiAdapter<BaseNode> {
    private final HashSet<Integer> fullSpanNodeTypeSet;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseNodeAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final int collapse(int i) {
        return collapse$default(this, i, false, false, null, 14, null);
    }

    public final int collapse(int i, boolean z) {
        return collapse$default(this, i, z, false, null, 12, null);
    }

    public final int collapse(int i, boolean z, boolean z2) {
        return collapse$default(this, i, z, z2, null, 8, null);
    }

    public final int collapseAndChild(int i) {
        return collapseAndChild$default(this, i, false, false, null, 14, null);
    }

    public final int collapseAndChild(int i, boolean z) {
        return collapseAndChild$default(this, i, z, false, null, 12, null);
    }

    public final int collapseAndChild(int i, boolean z, boolean z2) {
        return collapseAndChild$default(this, i, z, z2, null, 8, null);
    }

    public final int expand(int i) {
        return expand$default(this, i, false, false, null, 14, null);
    }

    public final int expand(int i, boolean z) {
        return expand$default(this, i, z, false, null, 12, null);
    }

    public final int expand(int i, boolean z, boolean z2) {
        return expand$default(this, i, z, z2, null, 8, null);
    }

    public final int expandAndChild(int i) {
        return expandAndChild$default(this, i, false, false, null, 14, null);
    }

    public final int expandAndChild(int i, boolean z) {
        return expandAndChild$default(this, i, z, false, null, 12, null);
    }

    public final int expandAndChild(int i, boolean z, boolean z2) {
        return expandAndChild$default(this, i, z, z2, null, 8, null);
    }

    public final void expandAndCollapseOther(int i) {
        expandAndCollapseOther$default(this, i, false, false, false, false, null, null, WebSocketProtocol.PAYLOAD_SHORT, null);
    }

    public final void expandAndCollapseOther(int i, boolean z) {
        expandAndCollapseOther$default(this, i, z, false, false, false, null, null, 124, null);
    }

    public final void expandAndCollapseOther(int i, boolean z, boolean z2) {
        expandAndCollapseOther$default(this, i, z, z2, false, false, null, null, MenuKt.InTransitionDuration, null);
    }

    public final void expandAndCollapseOther(int i, boolean z, boolean z2, boolean z3) {
        expandAndCollapseOther$default(this, i, z, z2, z3, false, null, null, 112, null);
    }

    public final void expandAndCollapseOther(int i, boolean z, boolean z2, boolean z3, boolean z4) {
        expandAndCollapseOther$default(this, i, z, z2, z3, z4, null, null, 96, null);
    }

    public final void expandAndCollapseOther(int i, boolean z, boolean z2, boolean z3, boolean z4, Object obj) {
        expandAndCollapseOther$default(this, i, z, z2, z3, z4, obj, null, 64, null);
    }

    public final int expandOrCollapse(int i) {
        return expandOrCollapse$default(this, i, false, false, null, 14, null);
    }

    public final int expandOrCollapse(int i, boolean z) {
        return expandOrCollapse$default(this, i, z, false, null, 12, null);
    }

    public final int expandOrCollapse(int i, boolean z, boolean z2) {
        return expandOrCollapse$default(this, i, z, z2, null, 8, null);
    }

    public /* synthetic */ BaseNodeAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list);
    }

    public BaseNodeAdapter(List<BaseNode> list) {
        super(null);
        this.fullSpanNodeTypeSet = new HashSet<>();
        List<BaseNode> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        getData().addAll(flatData$default(this, list2, null, 2, null));
    }

    public final void addNodeProvider(BaseNodeProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        addItemProvider(provider);
    }

    public final void addFullSpanNodeProvider(BaseNodeProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.fullSpanNodeTypeSet.add(Integer.valueOf(provider.getItemViewType()));
        addItemProvider(provider);
    }

    public final void addFooterNodeProvider(BaseNodeProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        addFullSpanNodeProvider(provider);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    public void addItemProvider(BaseItemProvider<BaseNode> provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        if (provider instanceof BaseNodeProvider) {
            super.addItemProvider(provider);
            return;
        }
        throw new IllegalStateException("Please add BaseNodeProvider, no BaseItemProvider!");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public boolean isFixedViewType(int type) {
        return super.isFixedViewType(type) || this.fullSpanNodeTypeSet.contains(Integer.valueOf(type));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setNewInstance(List<BaseNode> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        super.setNewInstance(flatData$default(this, list, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setList(Collection<? extends BaseNode> list) {
        if (list == null) {
            list = new ArrayList();
        }
        super.setList(flatData$default(this, list, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(int position, BaseNode data) {
        Intrinsics.checkNotNullParameter(data, "data");
        addData(position, (Collection<? extends BaseNode>) CollectionsKt.arrayListOf(data));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(BaseNode data) {
        Intrinsics.checkNotNullParameter(data, "data");
        addData((Collection<? extends BaseNode>) CollectionsKt.arrayListOf(data));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(int position, Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        super.addData(position, (Collection) flatData$default(this, newData, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addData(Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        super.addData((Collection) flatData$default(this, newData, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void removeAt(int position) {
        notifyItemRangeRemoved(position + getHeaderLayoutCount(), removeNodesAt(position));
        compatibilityDataSizeChanged(0);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setData(int index, BaseNode data) {
        Intrinsics.checkNotNullParameter(data, "data");
        int removeNodesAt = removeNodesAt(index);
        List flatData$default = flatData$default(this, CollectionsKt.arrayListOf(data), null, 2, null);
        getData().addAll(index, flatData$default);
        if (removeNodesAt == flatData$default.size()) {
            notifyItemRangeChanged(index + getHeaderLayoutCount(), removeNodesAt);
        } else {
            notifyItemRangeRemoved(getHeaderLayoutCount() + index, removeNodesAt);
            notifyItemRangeInserted(index + getHeaderLayoutCount(), flatData$default.size());
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setDiffNewData(List<BaseNode> list, Runnable commitCallback) {
        if (hasEmptyView()) {
            setNewInstance(list);
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        super.setDiffNewData(flatData$default(this, list, null, 2, null), commitCallback);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setDiffNewData(DiffUtil.DiffResult diffResult, List<BaseNode> list) {
        Intrinsics.checkNotNullParameter(diffResult, "diffResult");
        Intrinsics.checkNotNullParameter(list, "list");
        if (hasEmptyView()) {
            setNewInstance(list);
        } else {
            super.setDiffNewData(diffResult, flatData$default(this, list, null, 2, null));
        }
    }

    private final int removeNodesAt(int position) {
        boolean z = false;
        if (position >= getData().size()) {
            return 0;
        }
        int removeChildAt = removeChildAt(position);
        Object obj = (BaseNode) getData().get(position);
        if ((obj instanceof NodeFooterImp) && ((NodeFooterImp) obj).getFooterNode() != null) {
            z = true;
        }
        getData().remove(position);
        int i = removeChildAt + 1;
        if (!z) {
            return i;
        }
        getData().remove(position);
        return removeChildAt + 2;
    }

    private final int removeChildAt(int position) {
        BaseNode baseNode;
        List<BaseNode> childNode;
        if (position >= getData().size() || (childNode = (baseNode = getData().get(position)).getChildNode()) == null || childNode.isEmpty()) {
            return 0;
        }
        if (baseNode instanceof BaseExpandNode) {
            if (!((BaseExpandNode) baseNode).getIsExpanded()) {
                return 0;
            }
            List<BaseNode> childNode2 = baseNode.getChildNode();
            Intrinsics.checkNotNull(childNode2);
            List flatData$default = flatData$default(this, childNode2, null, 2, null);
            getData().removeAll(flatData$default);
            return flatData$default.size();
        }
        List<BaseNode> childNode3 = baseNode.getChildNode();
        Intrinsics.checkNotNull(childNode3);
        List flatData$default2 = flatData$default(this, childNode3, null, 2, null);
        getData().removeAll(flatData$default2);
        return flatData$default2.size();
    }

    public final void nodeAddData(BaseNode parentNode, BaseNode data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode != null) {
            childNode.add(data);
            if (!(parentNode instanceof BaseExpandNode) || ((BaseExpandNode) parentNode).getIsExpanded()) {
                addData(getData().indexOf(parentNode) + childNode.size(), data);
            }
        }
    }

    public final void nodeAddData(BaseNode parentNode, int childIndex, BaseNode data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode != null) {
            childNode.add(childIndex, data);
            if (!(parentNode instanceof BaseExpandNode) || ((BaseExpandNode) parentNode).getIsExpanded()) {
                addData(getData().indexOf(parentNode) + 1 + childIndex, data);
            }
        }
    }

    public final void nodeAddData(BaseNode parentNode, int childIndex, Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(newData, "newData");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode != null) {
            childNode.addAll(childIndex, newData);
            if (!(parentNode instanceof BaseExpandNode) || ((BaseExpandNode) parentNode).getIsExpanded()) {
                addData(getData().indexOf(parentNode) + 1 + childIndex, newData);
            }
        }
    }

    public final void nodeRemoveData(BaseNode parentNode, int childIndex) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode == null || childIndex >= childNode.size()) {
            return;
        }
        if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).getIsExpanded()) {
            childNode.remove(childIndex);
        } else {
            remove(getData().indexOf(parentNode) + 1 + childIndex);
            childNode.remove(childIndex);
        }
    }

    public final void nodeRemoveData(BaseNode parentNode, BaseNode childNode) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(childNode, "childNode");
        List<BaseNode> childNode2 = parentNode.getChildNode();
        if (childNode2 != null) {
            if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).getIsExpanded()) {
                childNode2.remove(childNode);
            } else {
                remove((BaseNodeAdapter) childNode);
                childNode2.remove(childNode);
            }
        }
    }

    public final void nodeSetData(BaseNode parentNode, int childIndex, BaseNode data) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(data, "data");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode == null || childIndex >= childNode.size()) {
            return;
        }
        if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).getIsExpanded()) {
            childNode.set(childIndex, data);
        } else {
            setData(getData().indexOf(parentNode) + 1 + childIndex, data);
            childNode.set(childIndex, data);
        }
    }

    public final void nodeReplaceChildData(BaseNode parentNode, Collection<? extends BaseNode> newData) {
        Intrinsics.checkNotNullParameter(parentNode, "parentNode");
        Intrinsics.checkNotNullParameter(newData, "newData");
        List<BaseNode> childNode = parentNode.getChildNode();
        if (childNode != null) {
            if ((parentNode instanceof BaseExpandNode) && !((BaseExpandNode) parentNode).getIsExpanded()) {
                childNode.clear();
                childNode.addAll(newData);
                return;
            }
            int indexOf = getData().indexOf(parentNode);
            int removeChildAt = removeChildAt(indexOf);
            childNode.clear();
            childNode.addAll(newData);
            List flatData$default = flatData$default(this, newData, null, 2, null);
            int i = indexOf + 1;
            getData().addAll(i, flatData$default);
            int headerLayoutCount = i + getHeaderLayoutCount();
            if (removeChildAt == flatData$default.size()) {
                notifyItemRangeChanged(headerLayoutCount, removeChildAt);
            } else {
                notifyItemRangeRemoved(headerLayoutCount, removeChildAt);
                notifyItemRangeInserted(headerLayoutCount, flatData$default.size());
            }
        }
    }

    static /* synthetic */ List flatData$default(BaseNodeAdapter baseNodeAdapter, Collection collection, Boolean bool, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flatData");
        }
        if ((i & 2) != 0) {
            bool = null;
        }
        return baseNodeAdapter.flatData(collection, bool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<BaseNode> flatData(Collection<? extends BaseNode> list, Boolean isExpanded) {
        BaseNode footerNode;
        List<BaseNode> childNode;
        ArrayList arrayList = new ArrayList();
        for (BaseNode baseNode : list) {
            arrayList.add(baseNode);
            if (baseNode instanceof BaseExpandNode) {
                if ((Intrinsics.areEqual((Object) isExpanded, (Object) true) || ((BaseExpandNode) baseNode).getIsExpanded()) && (childNode = baseNode.getChildNode()) != null && !childNode.isEmpty()) {
                    arrayList.addAll(flatData(childNode, isExpanded));
                }
                if (isExpanded != null) {
                    ((BaseExpandNode) baseNode).setExpanded(isExpanded.booleanValue());
                }
            } else {
                List<BaseNode> childNode2 = baseNode.getChildNode();
                if (childNode2 != null && !childNode2.isEmpty()) {
                    arrayList.addAll(flatData(childNode2, isExpanded));
                }
            }
            if ((baseNode instanceof NodeFooterImp) && (footerNode = ((NodeFooterImp) baseNode).getFooterNode()) != null) {
                arrayList.add(footerNode);
            }
        }
        return arrayList;
    }

    static /* synthetic */ int collapse$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, boolean z3, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapse");
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        boolean z4 = z;
        boolean z5 = (i2 & 4) != 0 ? true : z2;
        boolean z6 = (i2 & 8) != 0 ? true : z3;
        if ((i2 & 16) != 0) {
            obj = null;
        }
        return baseNodeAdapter.collapse(i, z4, z5, z6, obj);
    }

    private final int collapse(int position, boolean isChangeChildCollapse, boolean animate, boolean notify, Object parentPayload) {
        BaseNode baseNode = getData().get(position);
        if (baseNode instanceof BaseExpandNode) {
            BaseExpandNode baseExpandNode = (BaseExpandNode) baseNode;
            if (baseExpandNode.getIsExpanded()) {
                int headerLayoutCount = position + getHeaderLayoutCount();
                baseExpandNode.setExpanded(false);
                List<BaseNode> childNode = baseNode.getChildNode();
                if (childNode == null || childNode.isEmpty()) {
                    notifyItemChanged(headerLayoutCount, parentPayload);
                } else {
                    List<BaseNode> childNode2 = baseNode.getChildNode();
                    Intrinsics.checkNotNull(childNode2);
                    List<BaseNode> flatData = flatData(childNode2, isChangeChildCollapse ? false : null);
                    int size = flatData.size();
                    getData().removeAll(flatData);
                    if (notify) {
                        if (animate) {
                            notifyItemChanged(headerLayoutCount, parentPayload);
                            notifyItemRangeRemoved(headerLayoutCount + 1, size);
                        } else {
                            notifyDataSetChanged();
                        }
                    }
                    return size;
                }
            }
        }
        return 0;
    }

    static /* synthetic */ int expand$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, boolean z3, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expand");
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        boolean z4 = z;
        boolean z5 = (i2 & 4) != 0 ? true : z2;
        boolean z6 = (i2 & 8) != 0 ? true : z3;
        if ((i2 & 16) != 0) {
            obj = null;
        }
        return baseNodeAdapter.expand(i, z4, z5, z6, obj);
    }

    private final int expand(int position, boolean isChangeChildExpand, boolean animate, boolean notify, Object parentPayload) {
        BaseNode baseNode = getData().get(position);
        if (baseNode instanceof BaseExpandNode) {
            BaseExpandNode baseExpandNode = (BaseExpandNode) baseNode;
            if (!baseExpandNode.getIsExpanded()) {
                int headerLayoutCount = getHeaderLayoutCount() + position;
                baseExpandNode.setExpanded(true);
                List<BaseNode> childNode = baseNode.getChildNode();
                if (childNode == null || childNode.isEmpty()) {
                    notifyItemChanged(headerLayoutCount, parentPayload);
                } else {
                    List<BaseNode> childNode2 = baseNode.getChildNode();
                    Intrinsics.checkNotNull(childNode2);
                    List<BaseNode> flatData = flatData(childNode2, isChangeChildExpand ? true : null);
                    int size = flatData.size();
                    getData().addAll(position + 1, flatData);
                    if (notify) {
                        if (animate) {
                            notifyItemChanged(headerLayoutCount, parentPayload);
                            notifyItemRangeInserted(headerLayoutCount + 1, size);
                        } else {
                            notifyDataSetChanged();
                        }
                    }
                    return size;
                }
            }
        }
        return 0;
    }

    public static /* synthetic */ int collapse$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapse");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.collapse(i, z, z2, obj);
    }

    public final int collapse(int position, boolean animate, boolean notify, Object parentPayload) {
        return collapse(position, false, animate, notify, parentPayload);
    }

    public static /* synthetic */ int expand$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expand");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.expand(i, z, z2, obj);
    }

    public final int expand(int position, boolean animate, boolean notify, Object parentPayload) {
        return expand(position, false, animate, notify, parentPayload);
    }

    public static /* synthetic */ int expandOrCollapse$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandOrCollapse");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.expandOrCollapse(i, z, z2, obj);
    }

    public final int expandOrCollapse(int position, boolean animate, boolean notify, Object parentPayload) {
        BaseNode baseNode = getData().get(position);
        if (!(baseNode instanceof BaseExpandNode)) {
            return 0;
        }
        if (((BaseExpandNode) baseNode).getIsExpanded()) {
            return collapse(position, false, animate, notify, parentPayload);
        }
        return expand(position, false, animate, notify, parentPayload);
    }

    public static /* synthetic */ int expandAndChild$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndChild");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.expandAndChild(i, z, z2, obj);
    }

    public final int expandAndChild(int position, boolean animate, boolean notify, Object parentPayload) {
        return expand(position, true, animate, notify, parentPayload);
    }

    public static /* synthetic */ int collapseAndChild$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapseAndChild");
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            z2 = true;
        }
        if ((i2 & 8) != 0) {
            obj = null;
        }
        return baseNodeAdapter.collapseAndChild(i, z, z2, obj);
    }

    public final int collapseAndChild(int position, boolean animate, boolean notify, Object parentPayload) {
        return collapse(position, true, animate, notify, parentPayload);
    }

    public static /* synthetic */ void expandAndCollapseOther$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, boolean z3, boolean z4, Object obj, Object obj2, int i2, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndCollapseOther");
        }
        baseNodeAdapter.expandAndCollapseOther(i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? true : z2, (i2 & 8) != 0 ? true : z3, (i2 & 16) == 0 ? z4 : true, (i2 & 32) != 0 ? null : obj, (i2 & 64) == 0 ? obj2 : null);
    }

    public final void expandAndCollapseOther(int position, boolean isExpandedChild, boolean isCollapseChild, boolean animate, boolean notify, Object expandPayload, Object collapsePayload) {
        int i;
        int size;
        int expand = expand(position, isExpandedChild, animate, notify, expandPayload);
        if (expand == 0) {
            return;
        }
        int findParentNode = findParentNode(position);
        int i2 = findParentNode == -1 ? 0 : findParentNode + 1;
        if (position - i2 > 0) {
            int i3 = i2;
            i = position;
            do {
                int collapse = collapse(i3, isCollapseChild, animate, notify, collapsePayload);
                i3++;
                i -= collapse;
            } while (i3 < i);
        } else {
            i = position;
        }
        if (findParentNode == -1) {
            size = getData().size() - 1;
        } else {
            List<BaseNode> childNode = getData().get(findParentNode).getChildNode();
            size = findParentNode + (childNode != null ? childNode.size() : 0) + expand;
        }
        int i4 = i + expand;
        if (i4 < size) {
            int i5 = i4 + 1;
            while (i5 <= size) {
                int collapse2 = collapse(i5, isCollapseChild, animate, notify, collapsePayload);
                i5++;
                size -= collapse2;
            }
        }
    }

    public final int findParentNode(BaseNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int indexOf = getData().indexOf(node);
        if (indexOf != -1 && indexOf != 0) {
            for (int i = indexOf - 1; -1 < i; i--) {
                List<BaseNode> childNode = getData().get(i).getChildNode();
                if (childNode != null && childNode.contains(node)) {
                    return i;
                }
            }
        }
        return -1;
    }

    public final int findParentNode(int position) {
        if (position == 0) {
            return -1;
        }
        BaseNode baseNode = getData().get(position);
        for (int i = position - 1; -1 < i; i--) {
            List<BaseNode> childNode = getData().get(i).getChildNode();
            if (childNode != null && childNode.contains(baseNode)) {
                return i;
            }
        }
        return -1;
    }
}
