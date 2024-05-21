.class public interface abstract Landroidx/media3/common/util/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroidx/media3/common/util/SystemClock;

    invoke-direct {v0}, Landroidx/media3/common/util/SystemClock;-><init>()V

    sput-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;
.end method

.method public abstract currentTimeMillis()J
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract nanoTime()J
.end method

.method public abstract onThreadBlocked()V
.end method

.method public abstract uptimeMillis()J
.end method
