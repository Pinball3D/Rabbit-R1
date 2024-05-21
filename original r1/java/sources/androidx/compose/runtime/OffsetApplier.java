package androidx.compose.runtime;

import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.SentryThread;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Applier.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000f\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0013J \u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H\u0016J\u0018\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u001a\u001a\u00020\fH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/compose/runtime/OffsetApplier;", "N", "Landroidx/compose/runtime/Applier;", "applier", "offset", "", "(Landroidx/compose/runtime/Applier;I)V", SentryThread.JsonKeys.CURRENT, "getCurrent", "()Ljava/lang/Object;", "nesting", "clear", "", "down", "node", "(Ljava/lang/Object;)V", "insertBottomUp", "index", "instance", "(ILjava/lang/Object;)V", "insertTopDown", "move", "from", "to", MetricSummary.JsonKeys.COUNT, "remove", "up", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OffsetApplier<N> implements Applier<N> {
    private final Applier<N> applier;
    private int nesting;
    private final int offset;

    public OffsetApplier(Applier<N> applier, int i) {
        Intrinsics.checkNotNullParameter(applier, "applier");
        this.applier = applier;
        this.offset = i;
    }

    @Override // androidx.compose.runtime.Applier
    public N getCurrent() {
        return this.applier.getCurrent();
    }

    @Override // androidx.compose.runtime.Applier
    public void down(N node) {
        this.nesting++;
        this.applier.down(node);
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        int i = this.nesting;
        if (i > 0) {
            this.nesting = i - 1;
            this.applier.up();
        } else {
            ComposerKt.composeRuntimeError("OffsetApplier up called with no corresponding down".toString());
            throw new KotlinNothingValueException();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int index, N instance) {
        this.applier.insertTopDown(index + (this.nesting == 0 ? this.offset : 0), instance);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int index, N instance) {
        this.applier.insertBottomUp(index + (this.nesting == 0 ? this.offset : 0), instance);
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int index, int count) {
        this.applier.remove(index + (this.nesting == 0 ? this.offset : 0), count);
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int from, int to, int count) {
        int i = this.nesting == 0 ? this.offset : 0;
        this.applier.move(from + i, to + i, count);
    }

    @Override // androidx.compose.runtime.Applier
    public void clear() {
        ComposerKt.composeRuntimeError("Clear is not valid on OffsetApplier".toString());
        throw new KotlinNothingValueException();
    }
}
