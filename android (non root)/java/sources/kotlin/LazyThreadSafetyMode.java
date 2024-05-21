package kotlin;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Lazy.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/LazyThreadSafetyMode;", "", "(Ljava/lang/String;I)V", "SYNCHRONIZED", "PUBLICATION", "NONE", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LazyThreadSafetyMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LazyThreadSafetyMode[] $VALUES;
    public static final LazyThreadSafetyMode SYNCHRONIZED = new LazyThreadSafetyMode("SYNCHRONIZED", 0);
    public static final LazyThreadSafetyMode PUBLICATION = new LazyThreadSafetyMode("PUBLICATION", 1);
    public static final LazyThreadSafetyMode NONE = new LazyThreadSafetyMode("NONE", 2);

    private static final /* synthetic */ LazyThreadSafetyMode[] $values() {
        return new LazyThreadSafetyMode[]{SYNCHRONIZED, PUBLICATION, NONE};
    }

    public static EnumEntries<LazyThreadSafetyMode> getEntries() {
        return $ENTRIES;
    }

    public static LazyThreadSafetyMode valueOf(String str) {
        return (LazyThreadSafetyMode) Enum.valueOf(LazyThreadSafetyMode.class, str);
    }

    public static LazyThreadSafetyMode[] values() {
        return (LazyThreadSafetyMode[]) $VALUES.clone();
    }

    private LazyThreadSafetyMode(String str, int i) {
    }

    static {
        LazyThreadSafetyMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
