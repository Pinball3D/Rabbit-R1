.class public final Landroidx/media3/common/TrackSelectionOverride;
.super Ljava/lang/Object;
.source "TrackSelectionOverride.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_TRACKS:Ljava/lang/String;

.field private static final FIELD_TRACK_GROUP:Ljava/lang/String;


# instance fields
.field public final mediaTrackGroup:Landroidx/media3/common/TrackGroup;

.field public final trackIndices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACK_GROUP:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    .line 118
    new-instance v0, Landroidx/media3/common/TrackSelectionOverride$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/TrackSelectionOverride$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/TrackSelectionOverride;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;I)V
    .locals 0

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 80
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionOverride;
    .locals 2

    sget-object v0, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACK_GROUP:Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 121
    sget-object v1, Landroidx/media3/common/TrackGroup;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v1, v0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/TrackGroup;

    sget-object v1, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 123
    new-instance v1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    check-cast p1, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 97
    iget-object v3, p1, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getType()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 85
    iget p0, p0, Landroidx/media3/common/TrackGroup;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 102
    invoke-virtual {v0}, Landroidx/media3/common/TrackGroup;->hashCode()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACK_GROUP:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 111
    invoke-virtual {v2}, Landroidx/media3/common/TrackGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 112
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
