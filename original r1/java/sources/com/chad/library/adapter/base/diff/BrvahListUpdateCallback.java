package com.chad.library.adapter.base.diff;

import androidx.recyclerview.widget.ListUpdateCallback;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BrvahListUpdateCallback.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;", "Landroidx/recyclerview/widget/ListUpdateCallback;", "mAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "onChanged", "", "position", "", MetricSummary.JsonKeys.COUNT, "payload", "", "onInserted", "onMoved", "fromPosition", "toPosition", "onRemoved", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BrvahListUpdateCallback implements ListUpdateCallback {
    private final BaseQuickAdapter<?, ?> mAdapter;

    public BrvahListUpdateCallback(BaseQuickAdapter<?, ?> mAdapter) {
        Intrinsics.checkNotNullParameter(mAdapter, "mAdapter");
        this.mAdapter = mAdapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int position, int count) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeInserted(position + baseQuickAdapter.getHeaderLayoutCount(), count);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int position, int count) {
        BaseLoadMoreModule mLoadMoreModule = this.mAdapter.getMLoadMoreModule();
        if (mLoadMoreModule != null && mLoadMoreModule.hasLoadMoreView() && this.mAdapter.getItemCount() == 0) {
            BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
            baseQuickAdapter.notifyItemRangeRemoved(position + baseQuickAdapter.getHeaderLayoutCount(), count + 1);
        } else {
            BaseQuickAdapter<?, ?> baseQuickAdapter2 = this.mAdapter;
            baseQuickAdapter2.notifyItemRangeRemoved(position + baseQuickAdapter2.getHeaderLayoutCount(), count);
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int fromPosition, int toPosition) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemMoved(fromPosition + baseQuickAdapter.getHeaderLayoutCount(), toPosition + this.mAdapter.getHeaderLayoutCount());
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int position, int count, Object payload) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeChanged(position + baseQuickAdapter.getHeaderLayoutCount(), count, payload);
    }
}
