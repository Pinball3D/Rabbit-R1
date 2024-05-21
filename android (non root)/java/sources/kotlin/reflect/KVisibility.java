package kotlin.reflect;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: KVisibility.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/KVisibility;", "", "(Ljava/lang/String;I)V", "PUBLIC", "PROTECTED", "INTERNAL", "PRIVATE", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class KVisibility {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ KVisibility[] $VALUES;
    public static final KVisibility PUBLIC = new KVisibility("PUBLIC", 0);
    public static final KVisibility PROTECTED = new KVisibility("PROTECTED", 1);
    public static final KVisibility INTERNAL = new KVisibility("INTERNAL", 2);
    public static final KVisibility PRIVATE = new KVisibility("PRIVATE", 3);

    private static final /* synthetic */ KVisibility[] $values() {
        return new KVisibility[]{PUBLIC, PROTECTED, INTERNAL, PRIVATE};
    }

    public static EnumEntries<KVisibility> getEntries() {
        return $ENTRIES;
    }

    public static KVisibility valueOf(String str) {
        return (KVisibility) Enum.valueOf(KVisibility.class, str);
    }

    public static KVisibility[] values() {
        return (KVisibility[]) $VALUES.clone();
    }

    private KVisibility(String str, int i) {
    }

    static {
        KVisibility[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
