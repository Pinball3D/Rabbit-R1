.class public final Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field private final retryDelayMillis:J

.field private final type:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    iput-wide p2, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-void
.end method

.method synthetic constructor <init>(IJLandroidx/media3/exoplayer/upstream/Loader$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)I
    .locals 0

    .line 184
    iget p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;)J
    .locals 2

    .line 184
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-wide v0
.end method


# virtual methods
.method public isRetry()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
