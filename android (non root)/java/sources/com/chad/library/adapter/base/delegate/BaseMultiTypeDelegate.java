package com.chad.library.adapter.base.delegate;

import android.util.SparseIntArray;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseMultiTypeDelegate.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\u000bJ\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\b\u0001\u0010\u000e\u001a\u00020\u000f\"\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u001e\u0010\u0013\u001a\u00020\u000b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u000bH&J\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bJ\u001a\u0010\u0019\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;", ExifInterface.GPS_DIRECTION_TRUE, "", "layouts", "Landroid/util/SparseIntArray;", "(Landroid/util/SparseIntArray;)V", "autoMode", "", "selfMode", "addItemType", "type", "", "layoutResId", "addItemTypeAutoIncrease", "layoutResIds", "", "checkMode", "", "mode", "getItemType", "data", "", "position", "getLayoutId", "viewType", "registerItemType", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class BaseMultiTypeDelegate<T> {
    private boolean autoMode;
    private SparseIntArray layouts;
    private boolean selfMode;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseMultiTypeDelegate() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public abstract int getItemType(List<? extends T> data, int position);

    public BaseMultiTypeDelegate(SparseIntArray layouts) {
        Intrinsics.checkNotNullParameter(layouts, "layouts");
        this.layouts = layouts;
    }

    public /* synthetic */ BaseMultiTypeDelegate(SparseIntArray sparseIntArray, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new SparseIntArray() : sparseIntArray);
    }

    public final int getLayoutId(int viewType) {
        int i = this.layouts.get(viewType);
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException(("ViewType: " + viewType + " found layoutResId，please use registerItemType() first!").toString());
    }

    private final void registerItemType(int type, int layoutResId) {
        this.layouts.put(type, layoutResId);
    }

    public final BaseMultiTypeDelegate<T> addItemTypeAutoIncrease(int... layoutResIds) {
        Intrinsics.checkNotNullParameter(layoutResIds, "layoutResIds");
        this.autoMode = true;
        checkMode(this.selfMode);
        int length = layoutResIds.length;
        for (int i = 0; i < length; i++) {
            registerItemType(i, layoutResIds[i]);
        }
        return this;
    }

    public final BaseMultiTypeDelegate<T> addItemType(int type, int layoutResId) {
        this.selfMode = true;
        checkMode(this.autoMode);
        registerItemType(type, layoutResId);
        return this;
    }

    private final void checkMode(boolean mode) {
        if (!(!mode)) {
            throw new IllegalArgumentException("Don't mess two register mode".toString());
        }
    }
}
