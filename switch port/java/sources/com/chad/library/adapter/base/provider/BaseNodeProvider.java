package com.chad.library.adapter.base.provider;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import kotlin.Metadata;

/* compiled from: BaseNodeProvider.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lcom/chad/library/adapter/base/provider/BaseNodeProvider;", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "Lcom/chad/library/adapter/base/entity/node/BaseNode;", "()V", "getAdapter", "Lcom/chad/library/adapter/base/BaseNodeAdapter;", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class BaseNodeProvider extends BaseItemProvider<BaseNode> {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: getAdapter, reason: merged with bridge method [inline-methods] */
    public BaseProviderMultiAdapter<BaseNode> getAdapter2() {
        BaseProviderMultiAdapter adapter2 = super.getAdapter2();
        if (adapter2 instanceof BaseNodeAdapter) {
            return (BaseNodeAdapter) adapter2;
        }
        return null;
    }
}
