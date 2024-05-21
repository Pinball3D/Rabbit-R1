package androidx.room.util;

import android.database.Cursor;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TableInfo.kt */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\"\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a \u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0000¨\u0006\u0017"}, d2 = {"readColumns", "", "", "Landroidx/room/util/TableInfo$Column;", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "tableName", "readForeignKeyFieldMappings", "", "Landroidx/room/util/TableInfo$ForeignKeyWithSequence;", "cursor", "Landroid/database/Cursor;", "readForeignKeys", "", "Landroidx/room/util/TableInfo$ForeignKey;", "readIndex", "Landroidx/room/util/TableInfo$Index;", "name", "unique", "", "readIndices", "readTableInfo", "Landroidx/room/util/TableInfo;", "room-runtime_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TableInfoKt {
    public static final TableInfo readTableInfo(SupportSQLiteDatabase database, String tableName) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        return new TableInfo(tableName, readColumns(database, tableName), readForeignKeys(database, tableName), readIndices(database, tableName));
    }

    private static final Set<TableInfo.ForeignKey> readForeignKeys(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            Cursor cursor = query;
            int columnIndex = cursor.getColumnIndex("id");
            int columnIndex2 = cursor.getColumnIndex(Session.JsonKeys.SEQ);
            int columnIndex3 = cursor.getColumnIndex("table");
            int columnIndex4 = cursor.getColumnIndex("on_delete");
            int columnIndex5 = cursor.getColumnIndex("on_update");
            List<TableInfo.ForeignKeyWithSequence> readForeignKeyFieldMappings = readForeignKeyFieldMappings(cursor);
            cursor.moveToPosition(-1);
            Set createSetBuilder = SetsKt.createSetBuilder();
            while (cursor.moveToNext()) {
                if (cursor.getInt(columnIndex2) == 0) {
                    int i = cursor.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList<TableInfo.ForeignKeyWithSequence> arrayList3 = new ArrayList();
                    for (Object obj : readForeignKeyFieldMappings) {
                        if (((TableInfo.ForeignKeyWithSequence) obj).getId() == i) {
                            arrayList3.add(obj);
                        }
                    }
                    for (TableInfo.ForeignKeyWithSequence foreignKeyWithSequence : arrayList3) {
                        arrayList.add(foreignKeyWithSequence.getFrom());
                        arrayList2.add(foreignKeyWithSequence.getTo());
                    }
                    String string = cursor.getString(columnIndex3);
                    Intrinsics.checkNotNullExpressionValue(string, "cursor.getString(tableColumnIndex)");
                    String string2 = cursor.getString(columnIndex4);
                    Intrinsics.checkNotNullExpressionValue(string2, "cursor.getString(onDeleteColumnIndex)");
                    String string3 = cursor.getString(columnIndex5);
                    Intrinsics.checkNotNullExpressionValue(string3, "cursor.getString(onUpdateColumnIndex)");
                    createSetBuilder.add(new TableInfo.ForeignKey(string, string2, string3, arrayList, arrayList2));
                }
            }
            Set<TableInfo.ForeignKey> build = SetsKt.build(createSetBuilder);
            CloseableKt.closeFinally(query, null);
            return build;
        } finally {
        }
    }

    private static final List<TableInfo.ForeignKeyWithSequence> readForeignKeyFieldMappings(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex(Session.JsonKeys.SEQ);
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        List createListBuilder = CollectionsKt.createListBuilder();
        while (cursor.moveToNext()) {
            int i = cursor.getInt(columnIndex);
            int i2 = cursor.getInt(columnIndex2);
            String string = cursor.getString(columnIndex3);
            Intrinsics.checkNotNullExpressionValue(string, "cursor.getString(fromColumnIndex)");
            String string2 = cursor.getString(columnIndex4);
            Intrinsics.checkNotNullExpressionValue(string2, "cursor.getString(toColumnIndex)");
            createListBuilder.add(new TableInfo.ForeignKeyWithSequence(i, i2, string, string2));
        }
        return CollectionsKt.sorted(CollectionsKt.build(createListBuilder));
    }

    private static final Map<String, TableInfo.Column> readColumns(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA table_info(`" + str + "`)");
        try {
            Cursor cursor = query;
            if (cursor.getColumnCount() <= 0) {
                Map<String, TableInfo.Column> emptyMap = MapsKt.emptyMap();
                CloseableKt.closeFinally(query, null);
                return emptyMap;
            }
            int columnIndex = cursor.getColumnIndex("name");
            int columnIndex2 = cursor.getColumnIndex("type");
            int columnIndex3 = cursor.getColumnIndex("notnull");
            int columnIndex4 = cursor.getColumnIndex("pk");
            int columnIndex5 = cursor.getColumnIndex("dflt_value");
            Map createMapBuilder = MapsKt.createMapBuilder();
            while (cursor.moveToNext()) {
                String name = cursor.getString(columnIndex);
                String type = cursor.getString(columnIndex2);
                boolean z = cursor.getInt(columnIndex3) != 0;
                int i = cursor.getInt(columnIndex4);
                String string = cursor.getString(columnIndex5);
                Intrinsics.checkNotNullExpressionValue(name, "name");
                Intrinsics.checkNotNullExpressionValue(type, "type");
                createMapBuilder.put(name, new TableInfo.Column(name, type, z, i, string, 2));
            }
            Map<String, TableInfo.Column> build = MapsKt.build(createMapBuilder);
            CloseableKt.closeFinally(query, null);
            return build;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(query, th);
                throw th2;
            }
        }
    }

    private static final Set<TableInfo.Index> readIndices(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA index_list(`" + str + "`)");
        try {
            Cursor cursor = query;
            int columnIndex = cursor.getColumnIndex("name");
            int columnIndex2 = cursor.getColumnIndex("origin");
            int columnIndex3 = cursor.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                Set createSetBuilder = SetsKt.createSetBuilder();
                while (cursor.moveToNext()) {
                    if (Intrinsics.areEqual("c", cursor.getString(columnIndex2))) {
                        String name = cursor.getString(columnIndex);
                        boolean z = true;
                        if (cursor.getInt(columnIndex3) != 1) {
                            z = false;
                        }
                        Intrinsics.checkNotNullExpressionValue(name, "name");
                        TableInfo.Index readIndex = readIndex(supportSQLiteDatabase, name, z);
                        if (readIndex == null) {
                            CloseableKt.closeFinally(query, null);
                            return null;
                        }
                        createSetBuilder.add(readIndex);
                    }
                }
                Set<TableInfo.Index> build = SetsKt.build(createSetBuilder);
                CloseableKt.closeFinally(query, null);
                return build;
            }
            CloseableKt.closeFinally(query, null);
            return null;
        } finally {
        }
    }

    private static final TableInfo.Index readIndex(SupportSQLiteDatabase supportSQLiteDatabase, String str, boolean z) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA index_xinfo(`" + str + "`)");
        try {
            Cursor cursor = query;
            int columnIndex = cursor.getColumnIndex("seqno");
            int columnIndex2 = cursor.getColumnIndex(CmcdConfiguration.KEY_CONTENT_ID);
            int columnIndex3 = cursor.getColumnIndex("name");
            int columnIndex4 = cursor.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (cursor.moveToNext()) {
                    if (cursor.getInt(columnIndex2) >= 0) {
                        int i = cursor.getInt(columnIndex);
                        String columnName = cursor.getString(columnIndex3);
                        String str2 = cursor.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        Integer valueOf = Integer.valueOf(i);
                        Intrinsics.checkNotNullExpressionValue(columnName, "columnName");
                        treeMap.put(valueOf, columnName);
                        treeMap2.put(Integer.valueOf(i), str2);
                    }
                }
                Collection values = treeMap.values();
                Intrinsics.checkNotNullExpressionValue(values, "columnsMap.values");
                List list = CollectionsKt.toList(values);
                Collection values2 = treeMap2.values();
                Intrinsics.checkNotNullExpressionValue(values2, "ordersMap.values");
                TableInfo.Index index = new TableInfo.Index(str, z, list, CollectionsKt.toList(values2));
                CloseableKt.closeFinally(query, null);
                return index;
            }
            CloseableKt.closeFinally(query, null);
            return null;
        } finally {
        }
    }
}
