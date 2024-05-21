.class public final Landroidx/media3/common/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# instance fields
.field public final positionMs:J

.field public final timeline:Landroidx/media3/common/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;IJ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/IllegalSeekPositionException;->timeline:Landroidx/media3/common/Timeline;

    iput p2, p0, Landroidx/media3/common/IllegalSeekPositionException;->windowIndex:I

    iput-wide p3, p0, Landroidx/media3/common/IllegalSeekPositionException;->positionMs:J

    return-void
.end method
