package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ValueHolders.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005R\u001b\u0010\u0006\u001a\u00028\u00008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\b¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/LazyValueHolder;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/State;", "valueProducer", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", SentryThread.JsonKeys.CURRENT, "getCurrent", "()Ljava/lang/Object;", "current$delegate", "Lkotlin/Lazy;", "value", "getValue", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyValueHolder<T> implements State<T> {

    /* renamed from: current$delegate, reason: from kotlin metadata */
    private final Lazy current;

    public LazyValueHolder(Function0<? extends T> valueProducer) {
        Intrinsics.checkNotNullParameter(valueProducer, "valueProducer");
        this.current = LazyKt.lazy(valueProducer);
    }

    private final T getCurrent() {
        return (T) this.current.getValue();
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        return getCurrent();
    }
}
