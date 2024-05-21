package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.impl.model.SystemIdInfoDao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<SystemIdInfo> __insertionAdapterOfSystemIdInfo;
    private final SharedSQLiteStatement __preparedStmtOfRemoveSystemIdInfo;
    private final SharedSQLiteStatement __preparedStmtOfRemoveSystemIdInfo_1;

    public SystemIdInfoDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfSystemIdInfo = new EntityInsertionAdapter<SystemIdInfo>(__db) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, SystemIdInfo value) {
                if (value.workSpecId == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.workSpecId);
                }
                stmt.bindLong(2, value.getGeneration());
                stmt.bindLong(3, value.systemId);
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo_1 = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            }
        };
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void insertSystemIdInfo(final SystemIdInfo systemIdInfo) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfSystemIdInfo.insert((EntityInsertionAdapter<SystemIdInfo>) systemIdInfo);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(final String workSpecId, final int generation) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveSystemIdInfo.acquire();
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        acquire.bindLong(2, generation);
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfRemoveSystemIdInfo.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(final String workSpecId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveSystemIdInfo_1.acquire();
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfRemoveSystemIdInfo_1.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(String str, int i) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", 2);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        acquire.bindLong(2, i);
        this.__db.assertNotSuspendingTransaction();
        SystemIdInfo systemIdInfo = null;
        String string = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "work_spec_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "system_id");
            if (query.moveToFirst()) {
                if (!query.isNull(columnIndexOrThrow)) {
                    string = query.getString(columnIndexOrThrow);
                }
                systemIdInfo = new SystemIdInfo(string, query.getInt(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3));
            }
            return systemIdInfo;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public List<String> getWorkSpecIds() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(final WorkGenerationalId id) {
        return SystemIdInfoDao.DefaultImpls.getSystemIdInfo(this, id);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(final WorkGenerationalId id) {
        SystemIdInfoDao.DefaultImpls.removeSystemIdInfo(this, id);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
