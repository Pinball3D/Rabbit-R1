.class final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OtherTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDefault:Z

.field private final isWithinRendererCapabilities:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;I)V
    .locals 2

    .line 3761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3762
    iget p1, p1, Landroidx/media3/common/Format;->selectionFlags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    .line 3764
    invoke-static {p2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;)I
    .locals 3

    .line 3769
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    .line 3770
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    .line 3771
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 3772
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3756
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result p0

    return p0
.end method
