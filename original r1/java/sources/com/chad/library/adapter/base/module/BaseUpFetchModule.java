package com.chad.library.adapter.base.module;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnUpFetchListener;
import com.chad.library.adapter.base.listener.UpFetchListenerImp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpFetchModule.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0017J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\rH\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\tR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001a"}, d2 = {"Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "Lcom/chad/library/adapter/base/listener/UpFetchListenerImp;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "isUpFetchEnable", "", "()Z", "setUpFetchEnable", "(Z)V", "isUpFetching", "setUpFetching", "mUpFetchListener", "Lcom/chad/library/adapter/base/listener/OnUpFetchListener;", "startUpFetchPosition", "", "getStartUpFetchPosition", "()I", "setStartUpFetchPosition", "(I)V", "autoUpFetch", "", "position", "autoUpFetch$com_github_CymChad_brvah", "setOnUpFetchListener", "listener", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class BaseUpFetchModule implements UpFetchListenerImp {
    private final BaseQuickAdapter<?, ?> baseQuickAdapter;
    private boolean isUpFetchEnable;
    private boolean isUpFetching;
    private OnUpFetchListener mUpFetchListener;
    private int startUpFetchPosition;

    public final int getStartUpFetchPosition() {
        return this.startUpFetchPosition;
    }

    /* renamed from: isUpFetchEnable, reason: from getter */
    public final boolean getIsUpFetchEnable() {
        return this.isUpFetchEnable;
    }

    /* renamed from: isUpFetching, reason: from getter */
    public final boolean getIsUpFetching() {
        return this.isUpFetching;
    }

    @Override // com.chad.library.adapter.base.listener.UpFetchListenerImp
    public void setOnUpFetchListener(OnUpFetchListener listener) {
        this.mUpFetchListener = listener;
    }

    public final void setStartUpFetchPosition(int i) {
        this.startUpFetchPosition = i;
    }

    public final void setUpFetchEnable(boolean z) {
        this.isUpFetchEnable = z;
    }

    public final void setUpFetching(boolean z) {
        this.isUpFetching = z;
    }

    public BaseUpFetchModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        this.baseQuickAdapter = baseQuickAdapter;
        this.startUpFetchPosition = 1;
    }

    public final void autoUpFetch$com_github_CymChad_brvah(int position) {
        OnUpFetchListener onUpFetchListener;
        if (!this.isUpFetchEnable || this.isUpFetching || position > this.startUpFetchPosition || (onUpFetchListener = this.mUpFetchListener) == null) {
            return;
        }
        onUpFetchListener.onUpFetch();
    }
}
