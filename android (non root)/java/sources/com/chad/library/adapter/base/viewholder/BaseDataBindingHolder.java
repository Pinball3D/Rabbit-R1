package com.chad.library.adapter.base.viewholder;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseDataBindingHolder.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0015\u0010\u0007\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/chad/library/adapter/base/viewholder/BaseDataBindingHolder;", "BD", "Landroidx/databinding/ViewDataBinding;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "view", "Landroid/view/View;", "(Landroid/view/View;)V", "dataBinding", "getDataBinding", "()Landroidx/databinding/ViewDataBinding;", "Landroidx/databinding/ViewDataBinding;", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class BaseDataBindingHolder<BD extends ViewDataBinding> extends BaseViewHolder {
    private final BD dataBinding;

    public final BD getDataBinding() {
        return this.dataBinding;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDataBindingHolder(View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.dataBinding = (BD) DataBindingUtil.bind(view);
    }
}
