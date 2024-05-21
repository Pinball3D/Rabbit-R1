package androidx.room;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AutoClosingRoomOpenHelperFactory.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/room/AutoClosingRoomOpenHelperFactory;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;", "delegate", "autoCloser", "Landroidx/room/AutoCloser;", "(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/AutoCloser;)V", "create", "Landroidx/room/AutoClosingRoomOpenHelper;", "configuration", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class AutoClosingRoomOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    private final AutoCloser autoCloser;
    private final SupportSQLiteOpenHelper.Factory delegate;

    public AutoClosingRoomOpenHelperFactory(SupportSQLiteOpenHelper.Factory delegate, AutoCloser autoCloser) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
        this.delegate = delegate;
        this.autoCloser = autoCloser;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public AutoClosingRoomOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new AutoClosingRoomOpenHelper(this.delegate.create(configuration), this.autoCloser);
    }
}
