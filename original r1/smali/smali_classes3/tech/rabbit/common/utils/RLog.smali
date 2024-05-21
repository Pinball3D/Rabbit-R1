.class public final Ltech/rabbit/common/utils/RLog;
.super Ljava/lang/Object;
.source "RLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001(B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010\"\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J$\u0010\"\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0007J\u0010\u0010$\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010%\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0018\u0010%\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0007J,\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\r\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006)"
    }
    d2 = {
        "Ltech/rabbit/common/utils/RLog;",
        "",
        "()V",
        "crashMsgTag",
        "",
        "dLogTag",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "pid",
        "",
        "getPid",
        "()I",
        "pid$delegate",
        "Lkotlin/Lazy;",
        "splitD",
        "getSplitD",
        "()Ljava/lang/String;",
        "splitE",
        "getSplitE",
        "splitI",
        "getSplitI",
        "splitSpace",
        "getSplitSpace",
        "splitW",
        "getSplitW",
        "writeLog2File",
        "Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;",
        "getWriteLog2File",
        "()Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;",
        "writeLog2File$delegate",
        "d",
        "",
        "msg",
        "tag",
        "e",
        "",
        "i",
        "w",
        "writeLog",
        "levelSplit",
        "WriteLog2FileThread",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ltech/rabbit/common/utils/RLog;

.field public static final crashMsgTag:Ljava/lang/String; = "Rabbit Crash Exception"

.field private static final dLogTag:Ljava/lang/String; = "Rabbit"

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static final pid$delegate:Lkotlin/Lazy;

.field private static final splitD:Ljava/lang/String;

.field private static final splitE:Ljava/lang/String;

.field private static final splitI:Ljava/lang/String;

.field private static final splitSpace:Ljava/lang/String;

.field private static final splitW:Ljava/lang/String;

.field private static final writeLog2File$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ltech/rabbit/common/utils/RLog;

    invoke-direct {v0}, Ltech/rabbit/common/utils/RLog;-><init>()V

    sput-object v0, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char v0, v1, v2

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Ltech/rabbit/common/utils/RLog;->splitSpace:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "I "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ltech/rabbit/common/utils/RLog;->splitI:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ltech/rabbit/common/utils/RLog;->splitD:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ltech/rabbit/common/utils/RLog;->splitW:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "E "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltech/rabbit/common/utils/RLog;->splitE:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Ltech/rabbit/common/utils/RLog;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 35
    sget-object v0, Ltech/rabbit/common/utils/RLog$writeLog2File$2;->INSTANCE:Ltech/rabbit/common/utils/RLog$writeLog2File$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/common/utils/RLog;->writeLog2File$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Ltech/rabbit/common/utils/RLog$pid$2;->INSTANCE:Ltech/rabbit/common/utils/RLog$pid$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/common/utils/RLog;->pid$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Rabbit"

    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    sget-object v2, Ltech/rabbit/common/utils/RLog;->splitD:Ljava/lang/String;

    const-string v3, ""

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v4, p0

    .line 58
    invoke-static/range {v1 .. v7}, Ltech/rabbit/common/utils/RLog;->writeLog$default(Ltech/rabbit/common/utils/RLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rabbit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    sget-object v3, Ltech/rabbit/common/utils/RLog;->splitD:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 64
    invoke-static/range {v2 .. v8}, Ltech/rabbit/common/utils/RLog;->writeLog$default(Ltech/rabbit/common/utils/RLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Rabbit"

    .line 80
    invoke-static {v0, p0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rabbit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    sget-object v3, Ltech/rabbit/common/utils/RLog;->splitE:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 86
    invoke-static/range {v2 .. v8}, Ltech/rabbit/common/utils/RLog;->writeLog$default(Ltech/rabbit/common/utils/RLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rabbit"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    sget-object v1, Ltech/rabbit/common/utils/RLog;->splitE:Ljava/lang/String;

    .line 92
    invoke-direct {v0, v1, p0, p1, p2}, Ltech/rabbit/common/utils/RLog;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 90
    :cond_0
    invoke-static {p0, p1, p2}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final getWriteLog2File()Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;
    .locals 0

    sget-object p0, Ltech/rabbit/common/utils/RLog;->writeLog2File$delegate:Lkotlin/Lazy;

    .line 35
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;

    return-object p0
.end method

.method public static final i(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Rabbit"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    sget-object v2, Ltech/rabbit/common/utils/RLog;->splitI:Ljava/lang/String;

    const-string v3, ""

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v4, p0

    .line 46
    invoke-static/range {v1 .. v7}, Ltech/rabbit/common/utils/RLog;->writeLog$default(Ltech/rabbit/common/utils/RLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rabbit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    sget-object v3, Ltech/rabbit/common/utils/RLog;->splitI:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 52
    invoke-static/range {v2 .. v8}, Ltech/rabbit/common/utils/RLog;->writeLog$default(Ltech/rabbit/common/utils/RLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Rabbit"

    .line 69
    invoke-static {v0, p0}, Ltech/rabbit/common/utils/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rabbit"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ltech/rabbit/common/utils/RLog;->INSTANCE:Ltech/rabbit/common/utils/RLog;

    sget-object v3, Ltech/rabbit/common/utils/RLog;->splitW:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 75
    invoke-static/range {v2 .. v8}, Ltech/rabbit/common/utils/RLog;->writeLog$default(Ltech/rabbit/common/utils/RLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltech/rabbit/common/utils/RLog;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ltech/rabbit/common/utils/RLog;->splitSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ltech/rabbit/common/utils/RLog;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_0
    move-object p2, p3

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p4, :cond_2

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p4}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "E:"

    sget-object v2, Ltech/rabbit/common/utils/RLog;->splitE:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-direct {p0}, Ltech/rabbit/common/utils/RLog;->getWriteLog2File()Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;->write(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic writeLog$default(Ltech/rabbit/common/utils/RLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/common/utils/RLog;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    sget-object p0, Ltech/rabbit/common/utils/RLog;->pid$delegate:Lkotlin/Lazy;

    .line 41
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getSplitD()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/common/utils/RLog;->splitD:Ljava/lang/String;

    return-object p0
.end method

.method public final getSplitE()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/common/utils/RLog;->splitE:Ljava/lang/String;

    return-object p0
.end method

.method public final getSplitI()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/common/utils/RLog;->splitI:Ljava/lang/String;

    return-object p0
.end method

.method public final getSplitSpace()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/common/utils/RLog;->splitSpace:Ljava/lang/String;

    return-object p0
.end method

.method public final getSplitW()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/common/utils/RLog;->splitW:Ljava/lang/String;

    return-object p0
.end method
