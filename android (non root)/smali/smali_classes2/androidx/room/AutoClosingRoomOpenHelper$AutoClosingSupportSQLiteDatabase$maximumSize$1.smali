.class final synthetic Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "AutoClosingRoomOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->getMaximumSize()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;

    invoke-direct {v0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;-><init>()V

    sput-object v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;->INSTANCE:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Landroidx/sqlite/db/SupportSQLiteDatabase;

    const-string v1, "getMaximumSize()J"

    const/4 v2, 0x0

    const-string v3, "maximumSize"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getMaximumSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
