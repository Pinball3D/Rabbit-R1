package com.rubensousa.dpadrecyclerview;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: DpadLoopDirection.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;", "", "(Ljava/lang/String;I)V", "NONE", "MAX", "MIN_MAX", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DpadLoopDirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DpadLoopDirection[] $VALUES;
    public static final DpadLoopDirection NONE = new DpadLoopDirection("NONE", 0);
    public static final DpadLoopDirection MAX = new DpadLoopDirection("MAX", 1);
    public static final DpadLoopDirection MIN_MAX = new DpadLoopDirection("MIN_MAX", 2);

    private static final /* synthetic */ DpadLoopDirection[] $values() {
        return new DpadLoopDirection[]{NONE, MAX, MIN_MAX};
    }

    public static EnumEntries<DpadLoopDirection> getEntries() {
        return $ENTRIES;
    }

    public static DpadLoopDirection valueOf(String str) {
        return (DpadLoopDirection) Enum.valueOf(DpadLoopDirection.class, str);
    }

    public static DpadLoopDirection[] values() {
        return (DpadLoopDirection[]) $VALUES.clone();
    }

    private DpadLoopDirection(String str, int i) {
    }

    static {
        DpadLoopDirection[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
