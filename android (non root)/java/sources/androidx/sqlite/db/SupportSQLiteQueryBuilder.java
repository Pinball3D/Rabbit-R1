package androidx.sqlite.db;

import androidx.compose.material3.MenuKt;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SupportSQLiteQueryBuilder.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001d\u0010\b\u001a\u00020\u00002\u0010\u0010\b\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0003\u0018\u00010\u0006¢\u0006\u0002\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\n\u001a\u00020\u0000J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0003J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003J)\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0005\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006¢\u0006\u0002\u0010\u0014J\"\u0010\u0015\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\u0006\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u0002J%\u0010\u001b\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0006H\u0002¢\u0006\u0002\u0010\u001cR\u001c\u0010\u0005\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u001a\u0010\b\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0003\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "", "table", "", "(Ljava/lang/String;)V", "bindArgs", "", "[Ljava/lang/Object;", "columns", "[Ljava/lang/String;", "distinct", "", "groupBy", "having", "limit", "orderBy", "selection", "([Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "create", "Landroidx/sqlite/db/SupportSQLiteQuery;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "appendClause", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "name", "clause", "appendColumns", "(Ljava/lang/StringBuilder;[Ljava/lang/String;)V", "Companion", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SupportSQLiteQueryBuilder {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Pattern limitPattern = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");
    private Object[] bindArgs;
    private String[] columns;
    private boolean distinct;
    private String groupBy;
    private String having;
    private String limit;
    private String orderBy;
    private String selection;
    private final String table;

    public /* synthetic */ SupportSQLiteQueryBuilder(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @JvmStatic
    public static final SupportSQLiteQueryBuilder builder(String str) {
        return INSTANCE.builder(str);
    }

    private SupportSQLiteQueryBuilder(String str) {
        this.table = str;
    }

    public final SupportSQLiteQueryBuilder distinct() {
        this.distinct = true;
        return this;
    }

    public final SupportSQLiteQueryBuilder columns(String[] columns) {
        this.columns = columns;
        return this;
    }

    public final SupportSQLiteQueryBuilder selection(String selection, Object[] bindArgs) {
        this.selection = selection;
        this.bindArgs = bindArgs;
        return this;
    }

    public final SupportSQLiteQueryBuilder groupBy(String groupBy) {
        this.groupBy = groupBy;
        return this;
    }

    public final SupportSQLiteQueryBuilder having(String having) {
        this.having = having;
        return this;
    }

    public final SupportSQLiteQueryBuilder orderBy(String orderBy) {
        this.orderBy = orderBy;
        return this;
    }

    public final SupportSQLiteQueryBuilder limit(String limit) {
        Intrinsics.checkNotNullParameter(limit, "limit");
        String str = limit;
        boolean matches = limitPattern.matcher(str).matches();
        if (str.length() != 0 && !matches) {
            throw new IllegalArgumentException(("invalid LIMIT clauses:" + limit).toString());
        }
        this.limit = limit;
        return this;
    }

    public final SupportSQLiteQuery create() {
        String str;
        String str2 = this.groupBy;
        if ((str2 == null || str2.length() == 0) && (str = this.having) != null && str.length() != 0) {
            throw new IllegalArgumentException("HAVING clauses are only permitted when using a groupBy clause".toString());
        }
        StringBuilder sb = new StringBuilder(MenuKt.InTransitionDuration);
        sb.append("SELECT ");
        if (this.distinct) {
            sb.append("DISTINCT ");
        }
        String[] strArr = this.columns;
        if (strArr != null && strArr.length != 0) {
            Intrinsics.checkNotNull(strArr);
            appendColumns(sb, strArr);
        } else {
            sb.append("* ");
        }
        sb.append("FROM ");
        sb.append(this.table);
        appendClause(sb, " WHERE ", this.selection);
        appendClause(sb, " GROUP BY ", this.groupBy);
        appendClause(sb, " HAVING ", this.having);
        appendClause(sb, " ORDER BY ", this.orderBy);
        appendClause(sb, " LIMIT ", this.limit);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return new SimpleSQLiteQuery(sb2, this.bindArgs);
    }

    private final void appendClause(StringBuilder sb, String str, String str2) {
        String str3 = str2;
        if (str3 == null || str3.length() == 0) {
            return;
        }
        sb.append(str);
        sb.append(str2);
    }

    private final void appendColumns(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(' ');
    }

    /* compiled from: SupportSQLiteQueryBuilder.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteQueryBuilder$Companion;", "", "()V", "limitPattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "builder", "Landroidx/sqlite/db/SupportSQLiteQueryBuilder;", "tableName", "", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SupportSQLiteQueryBuilder builder(String tableName) {
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return new SupportSQLiteQueryBuilder(tableName, null);
        }
    }
}
