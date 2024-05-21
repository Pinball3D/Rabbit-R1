package androidx.compose.runtime;

import kotlin.Metadata;

/* compiled from: SnapshotLongState.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\n\bg\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002R\u0018\u0010\u0004\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00038W@WX\u0096\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/MutableLongState;", "Landroidx/compose/runtime/LongState;", "Landroidx/compose/runtime/MutableState;", "", "longValue", "getLongValue", "()J", "setLongValue", "(J)V", "value", "getValue", "()Ljava/lang/Long;", "setValue", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface MutableLongState extends LongState, MutableState<Long> {
    @Override // androidx.compose.runtime.LongState
    long getLongValue();

    void setLongValue(long j);

    static /* synthetic */ long access$getValue$jd(MutableLongState mutableLongState) {
        return super.getValue().longValue();
    }

    @Override // androidx.compose.runtime.MutableState
    /* bridge */ /* synthetic */ default void setValue(Long l) {
        setValue(l.longValue());
    }

    /* compiled from: SnapshotLongState.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static Long getValue(MutableLongState mutableLongState) {
            return Long.valueOf(MutableLongState.access$getValue$jd(mutableLongState));
        }

        @Deprecated
        public static void setValue(MutableLongState mutableLongState, long j) {
            MutableLongState.super.setValue(j);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.LongState, androidx.compose.runtime.State
    default Long getValue() {
        return Long.valueOf(getLongValue());
    }

    default void setValue(long j) {
        setLongValue(j);
    }
}
