.class public final Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnshuffledShuffleOrder"
.end annotation


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    return-void
.end method


# virtual methods
.method public cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 1

    .line 223
    new-instance p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object p0
.end method

.method public cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 0

    .line 213
    new-instance p1, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/2addr p0, p2

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object p1
.end method

.method public cloneAndRemove(II)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 1

    .line 218
    new-instance v0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    sub-int/2addr p0, p2

    add-int/2addr p0, p1

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public getFirstIndex()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLastIndex()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    return p0
.end method

.method public getNextIndex(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getPreviousIndex(I)I
    .locals 0

    const/4 p0, -0x1

    add-int/2addr p1, p0

    if-ltz p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method
