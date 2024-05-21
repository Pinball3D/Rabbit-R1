.class public final Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackSelection"
.end annotation


# instance fields
.field public final exclusionDurationMs:J

.field public final type:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    iput-wide p2, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    return-void
.end method
