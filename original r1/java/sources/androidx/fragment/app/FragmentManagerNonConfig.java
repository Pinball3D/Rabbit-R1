package androidx.fragment.app;

import androidx.lifecycle.ViewModelStore;
import java.util.Collection;
import java.util.Map;

@Deprecated
/* loaded from: classes2.dex */
public class FragmentManagerNonConfig {
    private final Map<String, FragmentManagerNonConfig> mChildNonConfigs;
    private final Collection<Fragment> mFragments;
    private final Map<String, ViewModelStore> mViewModelStores;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, FragmentManagerNonConfig> getChildNonConfigs() {
        return this.mChildNonConfigs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection<Fragment> getFragments() {
        return this.mFragments;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, ViewModelStore> getViewModelStores() {
        return this.mViewModelStores;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentManagerNonConfig(Collection<Fragment> collection, Map<String, FragmentManagerNonConfig> map, Map<String, ViewModelStore> map2) {
        this.mFragments = collection;
        this.mChildNonConfigs = map;
        this.mViewModelStores = map2;
    }

    boolean isRetaining(Fragment fragment) {
        Collection<Fragment> collection = this.mFragments;
        if (collection == null) {
            return false;
        }
        return collection.contains(fragment);
    }
}
