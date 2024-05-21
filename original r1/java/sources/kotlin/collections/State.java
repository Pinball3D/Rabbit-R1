package kotlin.collections;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: AbstractIterator.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/collections/State;", "", "(Ljava/lang/String;I)V", "Ready", "NotReady", "Done", "Failed", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
final class State {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ State[] $VALUES;
    public static final State Ready = new State("Ready", 0);
    public static final State NotReady = new State("NotReady", 1);
    public static final State Done = new State("Done", 2);
    public static final State Failed = new State("Failed", 3);

    private static final /* synthetic */ State[] $values() {
        return new State[]{Ready, NotReady, Done, Failed};
    }

    public static EnumEntries<State> getEntries() {
        return $ENTRIES;
    }

    public static State valueOf(String str) {
        return (State) Enum.valueOf(State.class, str);
    }

    public static State[] values() {
        return (State[]) $VALUES.clone();
    }

    private State(String str, int i) {
    }

    static {
        State[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
