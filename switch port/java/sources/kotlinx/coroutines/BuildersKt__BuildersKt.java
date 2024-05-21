package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: Builders.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aT\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032'\u0010\u0004\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"runBlocking", ExifInterface.GPS_DIRECTION_TRUE, "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "kotlinx/coroutines/BuildersKt")
/* loaded from: classes3.dex */
public final /* synthetic */ class BuildersKt__BuildersKt {
    public static /* synthetic */ Object runBlocking$default(CoroutineContext coroutineContext, Function2 function2, int i, Object obj) throws InterruptedException {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return BuildersKt.runBlocking(coroutineContext, function2);
    }

    public static final <T> T runBlocking(CoroutineContext coroutineContext, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) throws InterruptedException {
        EventLoop currentOrNull$kotlinx_coroutines_core;
        CoroutineContext newCoroutineContext;
        Thread currentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.INSTANCE);
        if (continuationInterceptor == null) {
            currentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
            newCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext.plus(currentOrNull$kotlinx_coroutines_core));
        } else {
            EventLoop eventLoop = continuationInterceptor instanceof EventLoop ? (EventLoop) continuationInterceptor : null;
            if (eventLoop != null) {
                EventLoop eventLoop2 = eventLoop.shouldBeProcessedFromContext() ? eventLoop : null;
                if (eventLoop2 != null) {
                    currentOrNull$kotlinx_coroutines_core = eventLoop2;
                    newCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext);
                }
            }
            currentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.currentOrNull$kotlinx_coroutines_core();
            newCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext);
        }
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(newCoroutineContext, currentThread, currentOrNull$kotlinx_coroutines_core);
        blockingCoroutine.start(CoroutineStart.DEFAULT, blockingCoroutine, function2);
        return (T) blockingCoroutine.joinBlocking();
    }
}
