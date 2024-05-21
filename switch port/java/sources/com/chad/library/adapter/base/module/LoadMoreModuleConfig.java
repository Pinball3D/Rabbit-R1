package com.chad.library.adapter.base.module;

import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.loadmore.SimpleLoadMoreView;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LoadMoreModule.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;", "", "()V", "defLoadMoreView", "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "getDefLoadMoreView$annotations", "getDefLoadMoreView", "()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "setDefLoadMoreView", "(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class LoadMoreModuleConfig {
    public static final LoadMoreModuleConfig INSTANCE = new LoadMoreModuleConfig();
    private static BaseLoadMoreView defLoadMoreView = new SimpleLoadMoreView();

    public static final BaseLoadMoreView getDefLoadMoreView() {
        return defLoadMoreView;
    }

    @JvmStatic
    public static /* synthetic */ void getDefLoadMoreView$annotations() {
    }

    public static final void setDefLoadMoreView(BaseLoadMoreView baseLoadMoreView) {
        Intrinsics.checkNotNullParameter(baseLoadMoreView, "<set-?>");
        defLoadMoreView = baseLoadMoreView;
    }

    private LoadMoreModuleConfig() {
    }
}
