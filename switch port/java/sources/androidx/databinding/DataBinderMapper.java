package androidx.databinding;

import android.view.View;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class DataBinderMapper {
    public abstract String convertBrIdToString(int i);

    public abstract ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i);

    public abstract ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i);

    public abstract int getLayoutId(String str);

    public List<DataBinderMapper> collectDependencies() {
        return Collections.emptyList();
    }
}
