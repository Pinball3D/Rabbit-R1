package androidx.compose.runtime;

import kotlin.Metadata;

/* compiled from: SnapshotIntState.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\n\bg\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002R\u0018\u0010\u0004\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00038W@WX\u0096\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/MutableIntState;", "Landroidx/compose/runtime/IntState;", "Landroidx/compose/runtime/MutableState;", "", "intValue", "getIntValue", "()I", "setIntValue", "(I)V", "value", "getValue", "()Ljava/lang/Integer;", "setValue", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface MutableIntState extends IntState, MutableState<Integer> {
    @Override // androidx.compose.runtime.IntState
    int getIntValue();

    void setIntValue(int i);

    static /* synthetic */ int access$getValue$jd(MutableIntState mutableIntState) {
        return super.getValue().intValue();
    }

    @Override // androidx.compose.runtime.MutableState
    /* bridge */ /* synthetic */ default void setValue(Integer num) {
        setValue(num.intValue());
    }

    /* compiled from: SnapshotIntState.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static Integer getValue(MutableIntState mutableIntState) {
            return Integer.valueOf(MutableIntState.access$getValue$jd(mutableIntState));
        }

        @Deprecated
        public static void setValue(MutableIntState mutableIntState, int i) {
            MutableIntState.super.setValue(i);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.IntState, androidx.compose.runtime.State
    default Integer getValue() {
        return Integer.valueOf(getIntValue());
    }

    default void setValue(int i) {
        setIntValue(i);
    }
}
