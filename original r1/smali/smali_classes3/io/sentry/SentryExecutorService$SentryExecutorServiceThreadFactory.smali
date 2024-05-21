.class final Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;
.super Ljava/lang/Object;
.source "SentryExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SentryExecutorServiceThreadFactory"
.end annotation


# instance fields
.field private cnt:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/SentryExecutorService$1;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SentryExecutorServiceThreadFactory-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;->cnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;->cnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
