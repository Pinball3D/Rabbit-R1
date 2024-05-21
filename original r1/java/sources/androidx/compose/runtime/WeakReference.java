package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ActualJvm.jvm.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/WeakReference;", ExifInterface.GPS_DIRECTION_TRUE, "", "Ljava/lang/ref/WeakReference;", "reference", "(Ljava/lang/Object;)V", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WeakReference<T> extends java.lang.ref.WeakReference<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WeakReference(T reference) {
        super(reference);
        Intrinsics.checkNotNullParameter(reference, "reference");
    }
}
