.class final Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/PlayerId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogSessionIdApi31"
.end annotation


# static fields
.field public static final UNSET:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;


# instance fields
.field public final logSessionId:Landroid/media/metrics/LogSessionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    sget-object v1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;-><init>(Landroid/media/metrics/LogSessionId;)V

    sput-object v0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-void
.end method
