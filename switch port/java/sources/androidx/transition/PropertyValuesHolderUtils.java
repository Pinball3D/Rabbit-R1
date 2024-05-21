package androidx.transition;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

/* loaded from: classes2.dex */
class PropertyValuesHolderUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static PropertyValuesHolder ofPointF(Property<?, PointF> property, Path path) {
        return PropertyValuesHolder.ofObject(property, (TypeConverter) null, path);
    }

    private PropertyValuesHolderUtils() {
    }
}
