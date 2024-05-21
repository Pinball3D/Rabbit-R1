.class public final Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;
.super Ljava/lang/Object;
.source "SimpleSQLiteQuery.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/SimpleSQLiteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\tJ\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;",
        "",
        "()V",
        "bind",
        "",
        "statement",
        "Landroidx/sqlite/db/SupportSQLiteProgram;",
        "bindArgs",
        "",
        "(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V",
        "index",
        "",
        "arg",
        "sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;-><init>()V

    return-void
.end method

.method private final bind(Landroidx/sqlite/db/SupportSQLiteProgram;ILjava/lang/Object;)V
    .locals 2

    if-nez p3, :cond_0

    .line 85
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto/16 :goto_1

    .line 86
    :cond_0
    instance-of p0, p3, [B

    if-eqz p0, :cond_1

    .line 87
    check-cast p3, [B

    invoke-interface {p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto/16 :goto_1

    .line 88
    :cond_1
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_2

    .line 89
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto/16 :goto_1

    .line 90
    :cond_2
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_3

    .line 91
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    .line 92
    :cond_3
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_4

    .line 93
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 94
    :cond_4
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_5

    .line 95
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 96
    :cond_5
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_6

    .line 97
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-long v0, p0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 98
    :cond_6
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_7

    .line 99
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-long v0, p0

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 100
    :cond_7
    instance-of p0, p3, Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 101
    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_8
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_a

    .line 103
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_9
    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    return-void

    .line 105
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot bind "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 75
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 77
    aget-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    .line 78
    invoke-direct {p0, p1, v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;->bind(Landroidx/sqlite/db/SupportSQLiteProgram;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
