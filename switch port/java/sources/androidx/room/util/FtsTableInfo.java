package androidx.room.util;

import android.database.Cursor;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: FtsTableInfo.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B%\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\tJ\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/room/util/FtsTableInfo;", "", "name", "", "columns", "", "createSql", "(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V", "options", "(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V", "equals", "", "other", "hashCode", "", "toString", "Companion", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FtsTableInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};
    public final Set<String> columns;
    public final String name;
    public final Set<String> options;

    @JvmStatic
    public static final Set<String> parseOptions(String str) {
        return INSTANCE.parseOptions(str);
    }

    @JvmStatic
    public static final FtsTableInfo read(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        return INSTANCE.read(supportSQLiteDatabase, str);
    }

    public FtsTableInfo(String name, Set<String> columns, Set<String> options) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(options, "options");
        this.name = name;
        this.columns = columns;
        this.options = options;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FtsTableInfo(String name, Set<String> columns, String createSql) {
        this(name, columns, INSTANCE.parseOptions(createSql));
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(createSql, "createSql");
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FtsTableInfo)) {
            return false;
        }
        FtsTableInfo ftsTableInfo = (FtsTableInfo) other;
        if (Intrinsics.areEqual(this.name, ftsTableInfo.name) && Intrinsics.areEqual(this.columns, ftsTableInfo.columns)) {
            return Intrinsics.areEqual(this.options, ftsTableInfo.options);
        }
        return false;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.columns.hashCode()) * 31) + this.options.hashCode();
    }

    public String toString() {
        return "FtsTableInfo{name='" + this.name + "', columns=" + this.columns + ", options=" + this.options + "'}";
    }

    /* compiled from: FtsTableInfo.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0007J\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/room/util/FtsTableInfo$Companion;", "", "()V", "FTS_OPTIONS", "", "", "[Ljava/lang/String;", "parseOptions", "", "createStatement", "read", "Landroidx/room/util/FtsTableInfo;", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "tableName", "readColumns", "readOptions", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final FtsTableInfo read(SupportSQLiteDatabase database, String tableName) {
            Intrinsics.checkNotNullParameter(database, "database");
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return new FtsTableInfo(tableName, readColumns(database, tableName), readOptions(database, tableName));
        }

        private final Set<String> readColumns(SupportSQLiteDatabase database, String tableName) {
            Set createSetBuilder = SetsKt.createSetBuilder();
            Cursor query = database.query("PRAGMA table_info(`" + tableName + "`)");
            try {
                Cursor cursor = query;
                if (cursor.getColumnCount() > 0) {
                    int columnIndex = cursor.getColumnIndex("name");
                    while (cursor.moveToNext()) {
                        String string = cursor.getString(columnIndex);
                        Intrinsics.checkNotNullExpressionValue(string, "cursor.getString(nameIndex)");
                        createSetBuilder.add(string);
                    }
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(query, null);
                return SetsKt.build(createSetBuilder);
            } finally {
            }
        }

        private final Set<String> readOptions(SupportSQLiteDatabase database, String tableName) {
            Cursor query = database.query("SELECT * FROM sqlite_master WHERE `name` = '" + tableName + '\'');
            try {
                Cursor cursor = query;
                String sql = cursor.moveToFirst() ? cursor.getString(cursor.getColumnIndexOrThrow("sql")) : "";
                CloseableKt.closeFinally(query, null);
                Intrinsics.checkNotNullExpressionValue(sql, "sql");
                return parseOptions(sql);
            } finally {
            }
        }

        @JvmStatic
        public final Set<String> parseOptions(String createStatement) {
            Character ch;
            Intrinsics.checkNotNullParameter(createStatement, "createStatement");
            String str = createStatement;
            if (str.length() == 0) {
                return SetsKt.emptySet();
            }
            String substring = createStatement.substring(StringsKt.indexOf$default((CharSequence) str, '(', 0, false, 6, (Object) null) + 1, StringsKt.lastIndexOf$default((CharSequence) str, ')', 0, false, 6, (Object) null));
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            ArrayList arrayList = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            String str2 = substring;
            int i = -1;
            int i2 = 0;
            int i3 = 0;
            while (i2 < str2.length()) {
                char charAt = str2.charAt(i2);
                int i4 = i3 + 1;
                if (charAt == '\'' || charAt == '\"' || charAt == '`') {
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(charAt));
                    } else {
                        Character ch2 = (Character) arrayDeque.peek();
                        if (ch2 != null && ch2.charValue() == charAt) {
                            arrayDeque.pop();
                        }
                    }
                } else if (charAt == '[') {
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(charAt));
                    }
                } else if (charAt == ']') {
                    if (!arrayDeque.isEmpty() && (ch = (Character) arrayDeque.peek()) != null && ch.charValue() == '[') {
                        arrayDeque.pop();
                    }
                } else if (charAt == ',' && arrayDeque.isEmpty()) {
                    String substring2 = substring.substring(i + 1, i3);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    String str3 = substring2;
                    int length = str3.length() - 1;
                    int i5 = 0;
                    boolean z = false;
                    while (i5 <= length) {
                        boolean z2 = Intrinsics.compare((int) str3.charAt(!z ? i5 : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            }
                            length--;
                        } else if (z2) {
                            i5++;
                        } else {
                            z = true;
                        }
                    }
                    arrayList.add(str3.subSequence(i5, length + 1).toString());
                    i = i3;
                }
                i2++;
                i3 = i4;
            }
            String substring3 = substring.substring(i + 1);
            Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
            arrayList.add(StringsKt.trim((CharSequence) substring3).toString());
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                String str4 = (String) obj;
                String[] strArr = FtsTableInfo.FTS_OPTIONS;
                int length2 = strArr.length;
                int i6 = 0;
                while (true) {
                    if (i6 >= length2) {
                        break;
                    }
                    if (StringsKt.startsWith$default(str4, strArr[i6], false, 2, (Object) null)) {
                        arrayList2.add(obj);
                        break;
                    }
                    i6++;
                }
            }
            return CollectionsKt.toSet(arrayList2);
        }
    }
}
