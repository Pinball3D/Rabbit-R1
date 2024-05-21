package androidx.compose.ui.semantics;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: SemanticsProperties.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00062\u0006\u0010\u0007\u001a\u0002H\u0004H¦\u0002¢\u0006\u0002\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "", "set", "", ExifInterface.GPS_DIRECTION_TRUE, "key", "Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "value", "(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SemanticsPropertyReceiver {
    <T> void set(SemanticsPropertyKey<T> key, T value);
}
