package androidx.sqlite.db;

import kotlin.Metadata;

/* compiled from: SupportSQLiteQuery.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteQuery;", "", "argCount", "", "getArgCount", "()I", "sql", "", "getSql", "()Ljava/lang/String;", "bindTo", "", "statement", "Landroidx/sqlite/db/SupportSQLiteProgram;", "sqlite_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface SupportSQLiteQuery {
    void bindTo(SupportSQLiteProgram statement);

    int getArgCount();

    String getSql();
}
