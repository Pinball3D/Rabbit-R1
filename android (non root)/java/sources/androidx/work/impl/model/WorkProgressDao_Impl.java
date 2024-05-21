package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.Data;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class WorkProgressDao_Impl implements WorkProgressDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkProgress> __insertionAdapterOfWorkProgress;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;

    public WorkProgressDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWorkProgress = new EntityInsertionAdapter<WorkProgress>(__db) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, WorkProgress value) {
                if (value.getWorkSpecId() == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.getWorkSpecId());
                }
                byte[] byteArrayInternal = Data.toByteArrayInternal(value.getProgress());
                if (byteArrayInternal == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindBlob(2, byteArrayInternal);
                }
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE from WorkProgress where work_spec_id=?";
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM WorkProgress";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void insert(final WorkProgress progress) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfWorkProgress.insert((EntityInsertionAdapter<WorkProgress>) progress);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void delete(final String workSpecId) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDelete.acquire();
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
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void deleteAll() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteAll.acquire();
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAll.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public Data getProgressForWorkSpecId(final String workSpecId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT progress FROM WorkProgress WHERE work_spec_id=?", 1);
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        this.__db.assertNotSuspendingTransaction();
        Data data = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                byte[] blob = query.isNull(0) ? null : query.getBlob(0);
                if (blob != null) {
                    data = Data.fromByteArray(blob);
                }
            }
            return data;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
