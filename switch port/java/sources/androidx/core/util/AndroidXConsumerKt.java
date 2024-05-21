package androidx.core.util;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* compiled from: AndroidXConsumer.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003¨\u0006\u0004"}, d2 = {"asAndroidXConsumer", "Landroidx/core/util/Consumer;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidXConsumerKt {
    public static final <T> Consumer<T> asAndroidXConsumer(Continuation<? super T> continuation) {
        return new AndroidXContinuationConsumer(continuation);
    }
}
