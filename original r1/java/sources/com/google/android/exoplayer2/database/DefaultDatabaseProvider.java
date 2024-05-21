package com.google.android.exoplayer2.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes2.dex */
public final class DefaultDatabaseProvider implements DatabaseProvider {
    private final SQLiteOpenHelper sqliteOpenHelper;

    public DefaultDatabaseProvider(SQLiteOpenHelper sQLiteOpenHelper) {
        this.sqliteOpenHelper = sQLiteOpenHelper;
    }

    @Override // com.google.android.exoplayer2.database.DatabaseProvider
    public SQLiteDatabase getWritableDatabase() {
        return this.sqliteOpenHelper.getWritableDatabase();
    }

    @Override // com.google.android.exoplayer2.database.DatabaseProvider
    public SQLiteDatabase getReadableDatabase() {
        return this.sqliteOpenHelper.getReadableDatabase();
    }
}
