package androidx.window.layout;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WindowLayoutInfo.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\b\u0017\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Landroidx/window/layout/WindowLayoutInfo;", "", "displayFeatures", "", "Landroidx/window/layout/DisplayFeature;", "(Ljava/util/List;)V", "getDisplayFeatures", "()Ljava/util/List;", "equals", "", "other", "hashCode", "", "toString", "", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WindowLayoutInfo {
    private final List<DisplayFeature> displayFeatures;

    public final List<DisplayFeature> getDisplayFeatures() {
        return this.displayFeatures;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WindowLayoutInfo(List<? extends DisplayFeature> displayFeatures) {
        Intrinsics.checkNotNullParameter(displayFeatures, "displayFeatures");
        this.displayFeatures = displayFeatures;
    }

    public String toString() {
        return CollectionsKt.joinToString$default(this.displayFeatures, ", ", "WindowLayoutInfo{ DisplayFeatures[", "] }", 0, null, null, 56, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        return Intrinsics.areEqual(this.displayFeatures, ((WindowLayoutInfo) other).displayFeatures);
    }

    public int hashCode() {
        return this.displayFeatures.hashCode();
    }
}
