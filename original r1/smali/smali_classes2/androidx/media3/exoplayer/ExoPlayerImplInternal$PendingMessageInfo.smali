.class final Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Landroidx/media3/exoplayer/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    .line 3139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;)I
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3151
    :goto_0
    iget-object v4, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_4

    return v2

    :cond_4
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 3160
    iget v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 3164
    iget-wide p0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/util/Util;->compareLong(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3131
    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->compareTo(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p0

    return p0
.end method

.method public setResolvedPosition(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method
