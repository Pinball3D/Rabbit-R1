.class public Landroidx/room/RoomWarnings;
.super Ljava/lang/Object;
.source "RoomWarnings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomWarnings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/room/RoomWarnings;",
        "",
        "()V",
        "Companion",
        "room-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AMBIGUOUS_COLUMN_IN_RESULT:Ljava/lang/String; = "ROOM_AMBIGUOUS_COLUMN_IN_RESULT"

.field public static final CANNOT_CREATE_VERIFICATION_DATABASE:Ljava/lang/String; = "ROOM_CANNOT_CREATE_VERIFICATION_DATABASE"

.field public static final CURSOR_MISMATCH:Ljava/lang/String; = "ROOM_CURSOR_MISMATCH"

.field public static final Companion:Landroidx/room/RoomWarnings$Companion;

.field public static final DEFAULT_CONSTRUCTOR:Ljava/lang/String; = "ROOM_DEFAULT_CONSTRUCTOR"

.field public static final DOES_NOT_IMPLEMENT_EQUALS_HASHCODE:Ljava/lang/String; = "ROOM_TYPE_DOES_NOT_IMPLEMENT_EQUALS_HASHCODE"

.field public static final INDEX_FROM_EMBEDDED_ENTITY_IS_DROPPED:Ljava/lang/String; = "ROOM_EMBEDDED_ENTITY_INDEX_IS_DROPPED"

.field public static final INDEX_FROM_EMBEDDED_FIELD_IS_DROPPED:Ljava/lang/String; = "ROOM_EMBEDDED_INDEX_IS_DROPPED"

.field public static final INDEX_FROM_PARENT_FIELD_IS_DROPPED:Ljava/lang/String; = "ROOM_PARENT_FIELD_INDEX_IS_DROPPED"

.field public static final INDEX_FROM_PARENT_IS_DROPPED:Ljava/lang/String; = "ROOM_PARENT_INDEX_IS_DROPPED"

.field public static final MISMATCHED_GETTER:Ljava/lang/String; = "ROOM_MISMATCHED_GETTER_TYPE"

.field public static final MISMATCHED_SETTER:Ljava/lang/String; = "ROOM_MISMATCHED_SETTER_TYPE"

.field public static final MISSING_INDEX_ON_FOREIGN_KEY_CHILD:Ljava/lang/String; = "ROOM_MISSING_FOREIGN_KEY_CHILD_INDEX"

.field public static final MISSING_INDEX_ON_JUNCTION:Ljava/lang/String; = "MISSING_INDEX_ON_JUNCTION"

.field public static final MISSING_JAVA_TMP_DIR:Ljava/lang/String; = "ROOM_MISSING_JAVA_TMP_DIR"

.field public static final MISSING_SCHEMA_LOCATION:Ljava/lang/String; = "ROOM_MISSING_SCHEMA_LOCATION"

.field public static final PRIMARY_KEY_FROM_EMBEDDED_IS_DROPPED:Ljava/lang/String; = "ROOM_EMBEDDED_PRIMARY_KEY_IS_DROPPED"

.field public static final RELATION_QUERY_WITHOUT_TRANSACTION:Ljava/lang/String; = "ROOM_RELATION_QUERY_WITHOUT_TRANSACTION"

.field public static final RELATION_TYPE_MISMATCH:Ljava/lang/String; = "ROOM_RELATION_TYPE_MISMATCH"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RoomWarnings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomWarnings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/RoomWarnings;->Companion:Landroidx/room/RoomWarnings$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This type should not be instantiated as it contains only static methods. "
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
