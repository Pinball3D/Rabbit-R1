package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: LayoutDirection.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "START", "END", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutDirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LayoutDirection[] $VALUES;
    private final int value;
    public static final LayoutDirection START = new LayoutDirection("START", 0, -1);
    public static final LayoutDirection END = new LayoutDirection("END", 1, 1);

    private static final /* synthetic */ LayoutDirection[] $values() {
        return new LayoutDirection[]{START, END};
    }

    public static EnumEntries<LayoutDirection> getEntries() {
        return $ENTRIES;
    }

    public static LayoutDirection valueOf(String str) {
        return (LayoutDirection) Enum.valueOf(LayoutDirection.class, str);
    }

    public static LayoutDirection[] values() {
        return (LayoutDirection[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }

    private LayoutDirection(String str, int i, int i2) {
        this.value = i2;
    }

    static {
        LayoutDirection[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
