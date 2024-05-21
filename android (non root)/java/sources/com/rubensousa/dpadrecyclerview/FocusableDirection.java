package com.rubensousa.dpadrecyclerview;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: FocusableDirection.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/FocusableDirection;", "", "(Ljava/lang/String;I)V", "STANDARD", "CIRCULAR", "CONTINUOUS", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FocusableDirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FocusableDirection[] $VALUES;
    public static final FocusableDirection STANDARD = new FocusableDirection("STANDARD", 0);
    public static final FocusableDirection CIRCULAR = new FocusableDirection("CIRCULAR", 1);
    public static final FocusableDirection CONTINUOUS = new FocusableDirection("CONTINUOUS", 2);

    private static final /* synthetic */ FocusableDirection[] $values() {
        return new FocusableDirection[]{STANDARD, CIRCULAR, CONTINUOUS};
    }

    public static EnumEntries<FocusableDirection> getEntries() {
        return $ENTRIES;
    }

    public static FocusableDirection valueOf(String str) {
        return (FocusableDirection) Enum.valueOf(FocusableDirection.class, str);
    }

    public static FocusableDirection[] values() {
        return (FocusableDirection[]) $VALUES.clone();
    }

    private FocusableDirection(String str, int i) {
    }

    static {
        FocusableDirection[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
