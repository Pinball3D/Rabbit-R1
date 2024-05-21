package androidx.compose.material3;

import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import kotlin.Metadata;

/* compiled from: SwipeableV2.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0007\n\u0002\b\u0003\bá\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u00072\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0007H&¢\u0006\u0002\u0010\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/material3/AnchorChangeHandler;", ExifInterface.GPS_DIRECTION_TRUE, "", "onAnchorsChanged", "", "previousTargetValue", "previousAnchors", "", "", "newAnchors", "(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface AnchorChangeHandler<T> {
    void onAnchorsChanged(T previousTargetValue, Map<T, Float> previousAnchors, Map<T, Float> newAnchors);
}
