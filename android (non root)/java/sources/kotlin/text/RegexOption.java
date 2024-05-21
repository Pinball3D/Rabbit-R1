package kotlin.text;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Regex.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lkotlin/text/RegexOption;", "", "Lkotlin/text/FlagEnum;", "value", "", "mask", "(Ljava/lang/String;III)V", "getMask", "()I", "getValue", "IGNORE_CASE", "MULTILINE", "LITERAL", "UNIX_LINES", "COMMENTS", "DOT_MATCHES_ALL", "CANON_EQ", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RegexOption implements FlagEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RegexOption[] $VALUES;
    public static final RegexOption CANON_EQ;
    public static final RegexOption COMMENTS;
    public static final RegexOption DOT_MATCHES_ALL;
    public static final RegexOption IGNORE_CASE;
    public static final RegexOption LITERAL;
    public static final RegexOption MULTILINE;
    public static final RegexOption UNIX_LINES;
    private final int mask;
    private final int value;

    private static final /* synthetic */ RegexOption[] $values() {
        return new RegexOption[]{IGNORE_CASE, MULTILINE, LITERAL, UNIX_LINES, COMMENTS, DOT_MATCHES_ALL, CANON_EQ};
    }

    public static EnumEntries<RegexOption> getEntries() {
        return $ENTRIES;
    }

    public static RegexOption valueOf(String str) {
        return (RegexOption) Enum.valueOf(RegexOption.class, str);
    }

    public static RegexOption[] values() {
        return (RegexOption[]) $VALUES.clone();
    }

    @Override // kotlin.text.FlagEnum
    public int getMask() {
        return this.mask;
    }

    @Override // kotlin.text.FlagEnum
    public int getValue() {
        return this.value;
    }

    private RegexOption(String str, int i, int i2, int i3) {
        this.value = i2;
        this.mask = i3;
    }

    /* synthetic */ RegexOption(String str, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, (i4 & 2) != 0 ? i2 : i3);
    }

    static {
        int i = 2;
        IGNORE_CASE = new RegexOption("IGNORE_CASE", 0, i, 0, 2, null);
        int i2 = 0;
        int i3 = 2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        MULTILINE = new RegexOption("MULTILINE", 1, 8, i2, i3, defaultConstructorMarker);
        int i4 = 0;
        int i5 = 2;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        LITERAL = new RegexOption("LITERAL", i, 16, i4, i5, defaultConstructorMarker2);
        UNIX_LINES = new RegexOption("UNIX_LINES", 3, 1, i2, i3, defaultConstructorMarker);
        COMMENTS = new RegexOption("COMMENTS", 4, 4, i4, i5, defaultConstructorMarker2);
        DOT_MATCHES_ALL = new RegexOption("DOT_MATCHES_ALL", 5, 32, i2, i3, defaultConstructorMarker);
        CANON_EQ = new RegexOption("CANON_EQ", 6, 128, i4, i5, defaultConstructorMarker2);
        RegexOption[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
