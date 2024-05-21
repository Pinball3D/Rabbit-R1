package androidx.room;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: QueryInterceptorOpenHelperFactory.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/room/QueryInterceptorOpenHelperFactory;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;", "delegate", "queryCallbackExecutor", "Ljava/util/concurrent/Executor;", "queryCallback", "Landroidx/room/RoomDatabase$QueryCallback;", "(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V", "create", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "configuration", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class QueryInterceptorOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    private final SupportSQLiteOpenHelper.Factory delegate;
    private final RoomDatabase.QueryCallback queryCallback;
    private final Executor queryCallbackExecutor;

    public QueryInterceptorOpenHelperFactory(SupportSQLiteOpenHelper.Factory delegate, Executor queryCallbackExecutor, RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(queryCallbackExecutor, "queryCallbackExecutor");
        Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.queryCallbackExecutor = queryCallbackExecutor;
        this.queryCallback = queryCallback;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new QueryInterceptorOpenHelper(this.delegate.create(configuration), this.queryCallbackExecutor, this.queryCallback);
    }
}
