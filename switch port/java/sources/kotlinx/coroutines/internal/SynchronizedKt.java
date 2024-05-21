package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryStackFrame;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;

/* compiled from: Synchronized.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0087\b¢\u0006\u0002\u0010\u0007*\u0010\b\u0007\u0010\b\"\u00020\u00032\u00020\u0003B\u0002\b\t¨\u0006\n"}, d2 = {"synchronizedImpl", ExifInterface.GPS_DIRECTION_TRUE, SentryStackFrame.JsonKeys.LOCK, "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "block", "Lkotlin/Function0;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "SynchronizedObject", "Lkotlinx/coroutines/InternalCoroutinesApi;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SynchronizedKt {
    public static /* synthetic */ void SynchronizedObject$annotations() {
    }

    public static final <T> T synchronizedImpl(Object obj, Function0<? extends T> function0) {
        T invoke;
        synchronized (obj) {
            try {
                invoke = function0.invoke();
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return invoke;
    }
}
