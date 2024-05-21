package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ItemDirection.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "opposite", "HEAD", "TAIL", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ItemDirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ItemDirection[] $VALUES;
    public static final ItemDirection HEAD = new ItemDirection("HEAD", 0, -1);
    public static final ItemDirection TAIL = new ItemDirection("TAIL", 1, 1);
    private final int value;

    private static final /* synthetic */ ItemDirection[] $values() {
        return new ItemDirection[]{HEAD, TAIL};
    }

    public static EnumEntries<ItemDirection> getEntries() {
        return $ENTRIES;
    }

    public static ItemDirection valueOf(String str) {
        return (ItemDirection) Enum.valueOf(ItemDirection.class, str);
    }

    public static ItemDirection[] values() {
        return (ItemDirection[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }

    public final ItemDirection opposite() {
        ItemDirection itemDirection = HEAD;
        return this == itemDirection ? TAIL : itemDirection;
    }

    private ItemDirection(String str, int i, int i2) {
        this.value = i2;
    }

    static {
        ItemDirection[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
