package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryStackFrame;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: ActualJvm.jvm.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0000\u001a(\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u000b¢\u0006\u0002\b\fH\u0000¢\u0006\u0002\u0010\r\u001a.\u0010\u000e\u001a\u0002H\u000f\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\b\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u0002H\u000f0\u000b¢\u0006\u0002\b\fH\u0000¢\u0006\u0002\u0010\u0010\u001a-\u0010\u0011\u001a\u0002H\u0012\"\u0004\b\u0000\u0010\u00122\u0006\u0010\u0013\u001a\u00020\u00032\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00120\u000bH\u0081\bø\u0001\u0000¢\u0006\u0002\u0010\u0015*\u001e\b\u0000\u0010\u0016\u001a\u0004\b\u0000\u0010\u0017\"\b\u0012\u0004\u0012\u0002H\u00170\u00182\b\u0012\u0004\u0012\u0002H\u00170\u0018*\f\b\u0000\u0010\u0019\"\u00020\u001a2\u00020\u001a\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"ensureMutable", "", "it", "", "identityHashCode", "", "instance", "invokeComposable", "composer", "Landroidx/compose/runtime/Composer;", "composable", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V", "invokeComposableForResult", ExifInterface.GPS_DIRECTION_TRUE, "(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "synchronized", "R", SentryStackFrame.JsonKeys.LOCK, "block", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "AtomicReference", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Ljava/util/concurrent/atomic/AtomicReference;", "TestOnly", "Lorg/jetbrains/annotations/TestOnly;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActualJvm_jvmKt {
    public static final void ensureMutable(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
    }

    public static final int identityHashCode(Object obj) {
        return System.identityHashCode(obj);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static final <R> R m2247synchronized(Object lock, Function0<? extends R> block) {
        R invoke;
        Intrinsics.checkNotNullParameter(lock, "lock");
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (lock) {
            try {
                invoke = block.invoke();
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

    public static final void invokeComposable(Composer composer, Function2<? super Composer, ? super Integer, Unit> composable) {
        Intrinsics.checkNotNullParameter(composer, "composer");
        Intrinsics.checkNotNullParameter(composable, "composable");
        ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(composable, 2)).invoke(composer, 1);
    }

    public static final <T> T invokeComposableForResult(Composer composer, Function2<? super Composer, ? super Integer, ? extends T> composable) {
        Intrinsics.checkNotNullParameter(composer, "composer");
        Intrinsics.checkNotNullParameter(composable, "composable");
        return (T) ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(composable, 2)).invoke(composer, 1);
    }
}
