package com.rubensousa.dpadrecyclerview.layoutmanager.focus;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: FocusDirection.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "", "(Ljava/lang/String;I)V", "getScrollSign", "", "reverseLayout", "", "PREVIOUS_ITEM", "NEXT_ITEM", "PREVIOUS_COLUMN", "NEXT_COLUMN", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FocusDirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FocusDirection[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final FocusDirection PREVIOUS_ITEM = new FocusDirection("PREVIOUS_ITEM", 0);
    public static final FocusDirection NEXT_ITEM = new FocusDirection("NEXT_ITEM", 1);
    public static final FocusDirection PREVIOUS_COLUMN = new FocusDirection("PREVIOUS_COLUMN", 2);
    public static final FocusDirection NEXT_COLUMN = new FocusDirection("NEXT_COLUMN", 3);

    private static final /* synthetic */ FocusDirection[] $values() {
        return new FocusDirection[]{PREVIOUS_ITEM, NEXT_ITEM, PREVIOUS_COLUMN, NEXT_COLUMN};
    }

    @JvmStatic
    public static final FocusDirection from(int i, boolean z, boolean z2) {
        return INSTANCE.from(i, z, z2);
    }

    @JvmStatic
    public static final int getAbsoluteDirection(int i, boolean z, boolean z2) {
        return INSTANCE.getAbsoluteDirection(i, z, z2);
    }

    public static EnumEntries<FocusDirection> getEntries() {
        return $ENTRIES;
    }

    public static FocusDirection valueOf(String str) {
        return (FocusDirection) Enum.valueOf(FocusDirection.class, str);
    }

    public static FocusDirection[] values() {
        return (FocusDirection[]) $VALUES.clone();
    }

    public final int getScrollSign(boolean reverseLayout) {
        if (this == NEXT_COLUMN || this == PREVIOUS_COLUMN) {
            return 0;
        }
        return (this == NEXT_ITEM) != reverseLayout ? 1 : -1;
    }

    private FocusDirection(String str, int i) {
    }

    static {
        FocusDirection[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    /* compiled from: FocusDirection.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007¨\u0006\u000b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;", "", "()V", "from", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "direction", "", "isVertical", "", "reverseLayout", "getAbsoluteDirection", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final int getAbsoluteDirection(int direction, boolean isVertical, boolean reverseLayout) {
            if (direction != 2 && direction != 1) {
                return direction;
            }
            if (isVertical) {
                return direction == 2 ? 130 : 33;
            }
            return (direction == 2) ^ reverseLayout ? 66 : 17;
        }

        private Companion() {
        }

        @JvmStatic
        public final FocusDirection from(int direction, boolean isVertical, boolean reverseLayout) {
            int absoluteDirection = getAbsoluteDirection(direction, isVertical, isVertical);
            if (isVertical) {
                if (absoluteDirection == 17) {
                    return reverseLayout ? FocusDirection.NEXT_COLUMN : FocusDirection.PREVIOUS_COLUMN;
                }
                if (absoluteDirection == 33) {
                    return reverseLayout ? FocusDirection.NEXT_ITEM : FocusDirection.PREVIOUS_ITEM;
                }
                if (absoluteDirection == 66) {
                    return reverseLayout ? FocusDirection.PREVIOUS_COLUMN : FocusDirection.NEXT_COLUMN;
                }
                if (absoluteDirection != 130) {
                    return null;
                }
                return reverseLayout ? FocusDirection.PREVIOUS_ITEM : FocusDirection.NEXT_ITEM;
            }
            if (absoluteDirection == 17) {
                return reverseLayout ? FocusDirection.NEXT_ITEM : FocusDirection.PREVIOUS_ITEM;
            }
            if (absoluteDirection == 33) {
                return reverseLayout ? FocusDirection.NEXT_COLUMN : FocusDirection.PREVIOUS_COLUMN;
            }
            if (absoluteDirection == 66) {
                return reverseLayout ? FocusDirection.PREVIOUS_ITEM : FocusDirection.NEXT_ITEM;
            }
            if (absoluteDirection != 130) {
                return null;
            }
            return reverseLayout ? FocusDirection.PREVIOUS_COLUMN : FocusDirection.NEXT_COLUMN;
        }
    }
}
