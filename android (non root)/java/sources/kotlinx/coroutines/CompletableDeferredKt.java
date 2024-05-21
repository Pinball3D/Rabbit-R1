package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Result;

/* compiled from: CompletableDeferred.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0004\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u001a,\u0010\u0007\u001a\u00020\b\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\nø\u0001\u0000¢\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"CompletableDeferred", "Lkotlinx/coroutines/CompletableDeferred;", ExifInterface.GPS_DIRECTION_TRUE, "value", "(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;", "parent", "Lkotlinx/coroutines/Job;", "completeWith", "", "result", "Lkotlin/Result;", "(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)Z", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CompletableDeferredKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean completeWith(CompletableDeferred<T> completableDeferred, Object obj) {
        Throwable m5701exceptionOrNullimpl = Result.m5701exceptionOrNullimpl(obj);
        return m5701exceptionOrNullimpl == null ? completableDeferred.complete(obj) : completableDeferred.completeExceptionally(m5701exceptionOrNullimpl);
    }

    public static final <T> CompletableDeferred<T> CompletableDeferred(Job job) {
        return new CompletableDeferredImpl(job);
    }

    public static /* synthetic */ CompletableDeferred CompletableDeferred$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return CompletableDeferred(job);
    }

    public static final <T> CompletableDeferred<T> CompletableDeferred(T t) {
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl(null);
        completableDeferredImpl.complete(t);
        return completableDeferredImpl;
    }
}
