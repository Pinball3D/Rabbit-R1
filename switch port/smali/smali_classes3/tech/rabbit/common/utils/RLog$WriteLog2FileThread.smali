.class public final Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;
.super Landroid/os/Handler;
.source "RLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/common/utils/RLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteLog2FileThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0010R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;",
        "Landroid/os/Handler;",
        "looper",
        "Landroid/os/Looper;",
        "(Landroid/os/Looper;)V",
        "logFile",
        "Ljava/io/BufferedWriter;",
        "getLogFile",
        "()Ljava/io/BufferedWriter;",
        "logFile$delegate",
        "Lkotlin/Lazy;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "write",
        "",
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


# instance fields
.field private final logFile$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    sget-object p1, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread$logFile$2;->INSTANCE:Ltech/rabbit/common/utils/RLog$WriteLog2FileThread$logFile$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;->logFile$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLogFile()Ljava/io/BufferedWriter;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;->logFile$delegate:Lkotlin/Lazy;

    .line 113
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/BufferedWriter;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-direct {p0}, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;->getLogFile()Ljava/io/BufferedWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;->getLogFile()Ljava/io/BufferedWriter;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 141
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    invoke-virtual {p0, v0}, Ltech/rabbit/common/utils/RLog$WriteLog2FileThread;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
