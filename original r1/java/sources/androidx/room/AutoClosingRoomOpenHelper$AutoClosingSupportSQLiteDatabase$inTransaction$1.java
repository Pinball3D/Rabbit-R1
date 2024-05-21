package androidx.room;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AutoClosingRoomOpenHelper.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
/* synthetic */ class AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 extends FunctionReferenceImpl implements Function1<SupportSQLiteDatabase, Boolean> {
    public static final AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 INSTANCE = new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1();

    AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1() {
        super(1, SupportSQLiteDatabase.class, "inTransaction", "inTransaction()Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(SupportSQLiteDatabase p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return Boolean.valueOf(p0.inTransaction());
    }
}
