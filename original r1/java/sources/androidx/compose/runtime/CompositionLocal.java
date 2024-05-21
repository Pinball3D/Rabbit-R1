package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: CompositionLocal.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0015\b\u0004\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010\u0012\u001a\u00028\u0000H!¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0006\u001a\u00028\u00008Ç\u0002¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\fX\u0080\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\b\u001a\u0004\b\u000e\u0010\u000f\u0082\u0001\u0001\u0015¨\u0006\u0016"}, d2 = {"Landroidx/compose/runtime/CompositionLocal;", ExifInterface.GPS_DIRECTION_TRUE, "", "defaultFactory", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", SentryThread.JsonKeys.CURRENT, "getCurrent$annotations", "()V", "getCurrent", "(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", "defaultValueHolder", "Landroidx/compose/runtime/LazyValueHolder;", "getDefaultValueHolder$runtime_release$annotations", "getDefaultValueHolder$runtime_release", "()Landroidx/compose/runtime/LazyValueHolder;", "provided", "Landroidx/compose/runtime/State;", "value", "provided$runtime_release", "(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class CompositionLocal<T> {
    public static final int $stable = 0;
    private final LazyValueHolder<T> defaultValueHolder;

    public /* synthetic */ CompositionLocal(Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0);
    }

    public static /* synthetic */ void getCurrent$annotations() {
    }

    public static /* synthetic */ void getDefaultValueHolder$runtime_release$annotations() {
    }

    public final LazyValueHolder<T> getDefaultValueHolder$runtime_release() {
        return this.defaultValueHolder;
    }

    public abstract State<T> provided$runtime_release(T t, Composer composer, int i);

    private CompositionLocal(Function0<? extends T> function0) {
        this.defaultValueHolder = new LazyValueHolder<>(function0);
    }

    public final T getCurrent(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        T t = (T) composer.consume(this);
        ComposerKt.sourceInformationMarkerEnd(composer);
        return t;
    }
}
