package androidx.room;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import androidx.room.RoomDatabase;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Room.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\t0\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0007J/\u0010\u0010\u001a\u0002H\t\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010\u00112\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00110\u000e2\u0006\u0010\u0012\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0013J.\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\b\b\u0000\u0010\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\t0\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/room/Room;", "", "()V", "CURSOR_CONV_SUFFIX", "", "LOG_TAG", "MASTER_TABLE_NAME", "databaseBuilder", "Landroidx/room/RoomDatabase$Builder;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/room/RoomDatabase;", "context", "Landroid/content/Context;", "klass", "Ljava/lang/Class;", "name", "getGeneratedImplementation", "C", "suffix", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "inMemoryDatabaseBuilder", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Room {
    private static final String CURSOR_CONV_SUFFIX = "_CursorConverter";
    public static final Room INSTANCE = new Room();
    public static final String LOG_TAG = "ROOM";
    public static final String MASTER_TABLE_NAME = "room_master_table";

    private Room() {
    }

    @JvmStatic
    public static final <T, C> T getGeneratedImplementation(Class<C> klass, String suffix) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        Package r1 = klass.getPackage();
        Intrinsics.checkNotNull(r1);
        String fullPackage = r1.getName();
        String canonicalName = klass.getCanonicalName();
        Intrinsics.checkNotNull(canonicalName);
        Intrinsics.checkNotNullExpressionValue(fullPackage, "fullPackage");
        if (fullPackage.length() != 0) {
            canonicalName = canonicalName.substring(fullPackage.length() + 1);
            Intrinsics.checkNotNullExpressionValue(canonicalName, "this as java.lang.String).substring(startIndex)");
        }
        String str = StringsKt.replace$default(canonicalName, '.', '_', false, 4, (Object) null) + suffix;
        try {
            Class<?> cls = Class.forName(fullPackage.length() == 0 ? str : fullPackage + '.' + str, true, klass.getClassLoader());
            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>");
            return (T) cls.newInstance();
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("Cannot find implementation for " + klass.getCanonicalName() + ". " + str + " does not exist");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("Cannot access the constructor " + klass + ".canonicalName");
        } catch (InstantiationException unused3) {
            throw new RuntimeException("Failed to create an instance of " + klass + ".canonicalName");
        }
    }

    @JvmStatic
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> inMemoryDatabaseBuilder(Context context, Class<T> klass) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(klass, "klass");
        return new RoomDatabase.Builder<>(context, klass, null);
    }

    @JvmStatic
    public static final <T extends RoomDatabase> RoomDatabase.Builder<T> databaseBuilder(Context context, Class<T> klass, String name) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(klass, "klass");
        String str = name;
        if (!(!(str == null || StringsKt.isBlank(str)))) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder".toString());
        }
        return new RoomDatabase.Builder<>(context, klass, name);
    }
}
