package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Applier.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u000fH$J\b\u0010\u0013\u001a\u00020\u000fH\u0016J*\u0010\u0014\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0004J\"\u0010\u0019\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0004R&\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000@TX\u0096\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0004R\u0013\u0010\u0003\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u000b\u0010\bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/compose/runtime/AbstractApplier;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/Applier;", "root", "(Ljava/lang/Object;)V", "<set-?>", SentryThread.JsonKeys.CURRENT, "getCurrent", "()Ljava/lang/Object;", "setCurrent", "Ljava/lang/Object;", "getRoot", "stack", "", "clear", "", "down", "node", "onClear", "up", "move", "from", "", "to", MetricSummary.JsonKeys.COUNT, "remove", "index", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AbstractApplier<T> implements Applier<T> {
    public static final int $stable = 8;
    private T current;
    private final T root;
    private final List<T> stack = new ArrayList();

    @Override // androidx.compose.runtime.Applier
    public T getCurrent() {
        return this.current;
    }

    public final T getRoot() {
        return this.root;
    }

    protected abstract void onClear();

    protected void setCurrent(T t) {
        this.current = t;
    }

    public AbstractApplier(T t) {
        this.root = t;
        this.current = t;
    }

    @Override // androidx.compose.runtime.Applier
    public void down(T node) {
        this.stack.add(getCurrent());
        setCurrent(node);
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        if (!(!this.stack.isEmpty())) {
            throw new IllegalStateException("Check failed.".toString());
        }
        setCurrent(this.stack.remove(r0.size() - 1));
    }

    @Override // androidx.compose.runtime.Applier
    public final void clear() {
        this.stack.clear();
        setCurrent(this.root);
        onClear();
    }

    protected final void remove(List<T> list, int i, int i2) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i2 == 1) {
            list.remove(i);
        } else {
            list.subList(i, i2 + i).clear();
        }
    }

    protected final void move(List<T> list, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int i4 = i > i2 ? i2 : i2 - i3;
        if (i3 != 1) {
            List<T> subList = list.subList(i, i3 + i);
            List mutableList = CollectionsKt.toMutableList((Collection) subList);
            subList.clear();
            list.addAll(i4, mutableList);
            return;
        }
        if (i == i2 + 1 || i == i2 - 1) {
            list.set(i, list.set(i2, list.get(i)));
        } else {
            list.add(i4, list.remove(i));
        }
    }
}
