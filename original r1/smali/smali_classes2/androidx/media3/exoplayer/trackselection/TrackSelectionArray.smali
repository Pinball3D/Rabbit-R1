.class public final Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Landroidx/media3/exoplayer/trackselection/TrackSelection;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 40
    array-length p1, p1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->length:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 78
    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 51
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAll()[Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 56
    invoke-virtual {p0}, [Landroidx/media3/exoplayer/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;->hashCode:I

    return p0
.end method
