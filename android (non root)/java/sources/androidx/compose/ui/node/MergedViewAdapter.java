package androidx.compose.ui.node;

import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewInterop.android.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J1\u0010\u0012\u001a\u0002H\u0013\"\b\b\u0000\u0010\u0013*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0015H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/node/MergedViewAdapter;", "Landroidx/compose/ui/node/ViewAdapter;", "()V", "adapters", "", "getAdapters", "()Ljava/util/List;", "id", "", "getId", "()I", "didInsert", "", "view", "Landroid/view/View;", "parent", "Landroid/view/ViewGroup;", "didUpdate", "get", ExifInterface.GPS_DIRECTION_TRUE, "factory", "Lkotlin/Function0;", "(ILkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/ViewAdapter;", "willInsert", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MergedViewAdapter implements ViewAdapter {
    private final List<ViewAdapter> adapters = new ArrayList();
    private final int id;

    public final List<ViewAdapter> getAdapters() {
        return this.adapters;
    }

    @Override // androidx.compose.ui.node.ViewAdapter
    public int getId() {
        return this.id;
    }

    public final <T extends ViewAdapter> T get(int id, Function0<? extends T> factory) {
        ViewAdapter viewAdapter;
        Intrinsics.checkNotNullParameter(factory, "factory");
        List<ViewAdapter> adapters = getAdapters();
        int size = adapters.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                viewAdapter = null;
                break;
            }
            viewAdapter = adapters.get(i);
            if (viewAdapter.getId() == id) {
                break;
            }
            i++;
        }
        T t = viewAdapter instanceof ViewAdapter ? (T) viewAdapter : null;
        if (t != null) {
            return t;
        }
        T invoke = factory.invoke();
        getAdapters().add(invoke);
        return invoke;
    }

    @Override // androidx.compose.ui.node.ViewAdapter
    public void willInsert(View view, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        List<ViewAdapter> list = this.adapters;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).willInsert(view, parent);
        }
    }

    @Override // androidx.compose.ui.node.ViewAdapter
    public void didInsert(View view, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        List<ViewAdapter> list = this.adapters;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).didInsert(view, parent);
        }
    }

    @Override // androidx.compose.ui.node.ViewAdapter
    public void didUpdate(View view, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        List<ViewAdapter> list = this.adapters;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).didUpdate(view, parent);
        }
    }
}
