package com.chad.library.adapter.base.module;

import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpFetchModule.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0005H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/chad/library/adapter/base/module/UpFetchModule;", "", "addUpFetchModule", "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface UpFetchModule {
    default BaseUpFetchModule addUpFetchModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        return new BaseUpFetchModule(baseQuickAdapter);
    }
}
