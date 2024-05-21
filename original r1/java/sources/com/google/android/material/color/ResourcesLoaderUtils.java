package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import java.util.Map;

/* loaded from: classes2.dex */
final class ResourcesLoaderUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isColorResource(int i) {
        return 28 <= i && i <= 31;
    }

    private ResourcesLoaderUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean addResourcesLoaderToContext(Context context, Map<Integer, Integer> map) {
        ResourcesLoader create = ColorResourcesLoaderCreator.create(context, map);
        if (create == null) {
            return false;
        }
        context.getResources().addLoaders(create);
        return true;
    }
}
