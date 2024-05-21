package androidx.room.util;

import android.database.Cursor;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewInfo.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/room/util/ViewInfo;", "", "name", "", "sql", "(Ljava/lang/String;Ljava/lang/String;)V", "equals", "", "other", "hashCode", "", "toString", "Companion", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ViewInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public final String name;
    public final String sql;

    @JvmStatic
    public static final ViewInfo read(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        return INSTANCE.read(supportSQLiteDatabase, str);
    }

    public ViewInfo(String name, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.sql = str;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewInfo)) {
            return false;
        }
        ViewInfo viewInfo = (ViewInfo) other;
        if (Intrinsics.areEqual(this.name, viewInfo.name)) {
            String str = this.sql;
            if (str != null) {
                if (Intrinsics.areEqual(str, viewInfo.sql)) {
                    return true;
                }
            } else if (viewInfo.sql == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        String str = this.sql;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ViewInfo{name='" + this.name + "', sql='" + this.sql + "'}";
    }

    /* compiled from: ViewInfo.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/room/util/ViewInfo$Companion;", "", "()V", "read", "Landroidx/room/util/ViewInfo;", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "viewName", "", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ViewInfo read(SupportSQLiteDatabase database, String viewName) {
            ViewInfo viewInfo;
            Intrinsics.checkNotNullParameter(database, "database");
            Intrinsics.checkNotNullParameter(viewName, "viewName");
            Cursor query = database.query("SELECT name, sql FROM sqlite_master WHERE type = 'view' AND name = '" + viewName + '\'');
            try {
                Cursor cursor = query;
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    Intrinsics.checkNotNullExpressionValue(string, "cursor.getString(0)");
                    viewInfo = new ViewInfo(string, cursor.getString(1));
                } else {
                    viewInfo = new ViewInfo(viewName, null);
                }
                CloseableKt.closeFinally(query, null);
                return viewInfo;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(query, th);
                    throw th2;
                }
            }
        }
    }
}
