package androidx.room;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;

/* compiled from: ColumnInfo.kt */
@Target({ElementType.FIELD, ElementType.METHOD})
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0003\r\u000e\u000fB2\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003R\u0011\u0010\b\u001a\u00020\u00058\u0007¢\u0006\u0006\u001a\u0004\b\b\u0010\nR\u000f\u0010\t\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u000f\u0010\u0006\u001a\u00020\u0007¢\u0006\u0006\u001a\u0004\b\u0006\u0010\fR\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\u0006\u001a\u0004\b\u0004\u0010\n¨\u0006\u0010"}, d2 = {"Landroidx/room/ColumnInfo;", "", "name", "", "typeAffinity", "", "index", "", "collate", "defaultValue", "()I", "()Ljava/lang/String;", "()Z", "Collate", "Companion", "SQLiteTypeAffinity", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FIELD, AnnotationTarget.FUNCTION})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
/* loaded from: classes2.dex */
public @interface ColumnInfo {
    public static final int BINARY = 2;
    public static final int BLOB = 5;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String INHERIT_FIELD_NAME = "[field-name]";
    public static final int INTEGER = 3;
    public static final int LOCALIZED = 5;
    public static final int NOCASE = 3;
    public static final int REAL = 4;
    public static final int RTRIM = 4;
    public static final int TEXT = 2;
    public static final int UNDEFINED = 1;
    public static final int UNICODE = 6;
    public static final int UNSPECIFIED = 1;
    public static final String VALUE_UNSPECIFIED = "[value-unspecified]";

    /* compiled from: ColumnInfo.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/room/ColumnInfo$Collate;", "", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    /* loaded from: classes2.dex */
    public @interface Collate {
    }

    /* compiled from: ColumnInfo.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/room/ColumnInfo$SQLiteTypeAffinity;", "", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    /* loaded from: classes2.dex */
    public @interface SQLiteTypeAffinity {
    }

    int collate() default 1;

    String defaultValue() default "[value-unspecified]";

    boolean index() default false;

    String name() default "[field-name]";

    int typeAffinity() default 1;

    /* compiled from: ColumnInfo.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/room/ColumnInfo$Companion;", "", "()V", "BINARY", "", "BLOB", "INHERIT_FIELD_NAME", "", "INTEGER", "LOCALIZED", "NOCASE", "REAL", "RTRIM", "TEXT", "UNDEFINED", "UNICODE", "UNSPECIFIED", "VALUE_UNSPECIFIED", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int BINARY = 2;
        public static final int BLOB = 5;
        public static final String INHERIT_FIELD_NAME = "[field-name]";
        public static final int INTEGER = 3;
        public static final int LOCALIZED = 5;
        public static final int NOCASE = 3;
        public static final int REAL = 4;
        public static final int RTRIM = 4;
        public static final int TEXT = 2;
        public static final int UNDEFINED = 1;
        public static final int UNICODE = 6;
        public static final int UNSPECIFIED = 1;
        public static final String VALUE_UNSPECIFIED = "[value-unspecified]";

        private Companion() {
        }
    }
}
