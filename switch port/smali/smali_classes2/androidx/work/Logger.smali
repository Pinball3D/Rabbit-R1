.class public abstract Landroidx/work/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Logger$LogcatLogger;
    }
.end annotation


# static fields
.field private static final MAX_PREFIXED_TAG_LENGTH:I = 0x14

.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static final TAG_PREFIX:Ljava/lang/String; = "WM-"

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sLogger:Landroidx/work/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/Logger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggingLevel"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroidx/work/Logger;
    .locals 3

    sget-object v0, Landroidx/work/Logger;->sLock:Ljava/lang/Object;

    .line 79
    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Landroidx/work/Logger$LogcatLogger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/work/Logger$LogcatLogger;-><init>(I)V

    sput-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    :cond_0
    sget-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    .line 83
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLogger(Landroidx/work/Logger;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    sget-object v0, Landroidx/work/Logger;->sLock:Ljava/lang/Object;

    .line 45
    monitor-enter v0

    :try_start_0
    sput-object p0, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WM-"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract warning(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method
