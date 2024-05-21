package kotlinx.coroutines;

import io.sentry.SentryEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.CoroutineExceptionHandlerImpl_commonKt;

/* compiled from: CoroutineExceptionHandler.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\u001a%\u0010\u0000\u001a\u00020\u00012\u001a\b\u0004\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003H\u0086\b\u001a\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005H\u0000¨\u0006\r"}, d2 = {"CoroutineExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handler", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext;", "", "", "handleCoroutineException", "context", SentryEvent.JsonKeys.EXCEPTION, "handlerException", "originalException", "thrownException", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CoroutineExceptionHandlerKt {
    public static final void handleCoroutineException(CoroutineContext coroutineContext, Throwable th) {
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext.get(CoroutineExceptionHandler.INSTANCE);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(coroutineContext, th);
            } else {
                CoroutineExceptionHandlerImpl_commonKt.handleUncaughtCoroutineException(coroutineContext, th);
            }
        } catch (Throwable th2) {
            CoroutineExceptionHandlerImpl_commonKt.handleUncaughtCoroutineException(coroutineContext, handlerException(th, th2));
        }
    }

    public static final Throwable handlerException(Throwable th, Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        kotlin.ExceptionsKt.addSuppressed(runtimeException, th);
        return runtimeException;
    }

    public static final CoroutineExceptionHandler CoroutineExceptionHandler(Function2<? super CoroutineContext, ? super Throwable, Unit> function2) {
        return new CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1(function2, CoroutineExceptionHandler.INSTANCE);
    }
}
