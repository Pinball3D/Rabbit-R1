.class final Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaylistTimeline"
.end annotation


# instance fields
.field private final firstPeriodIndexByWindowIndex:[I

.field private final periodIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private final windowIndexByPeriodIndex:[I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;)V"
        }
    .end annotation

    .line 1105
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 1106
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1108
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1111
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    .line 1112
    aput v3, v5, v2

    .line 1113
    invoke-static {v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->getPeriodCountInMediaItem(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1115
    :cond_0
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    .line 1116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1119
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move v5, v1

    .line 1120
    :goto_2
    invoke-static {v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->getPeriodCountInMediaItem(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    .line 1121
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    .line 1122
    aput v2, v6, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static getPeriodCountInMediaItem(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)I
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 0

    .line 1154
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p0

    return p0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    .line 1184
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLastWindowIndex(Z)I
    .locals 0

    .line 1148
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p0

    return p0
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 0

    .line 1136
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p0

    return p0
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 1

    iget-object p3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    .line 1177
    aget p3, p3, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    .line 1178
    aget v0, v0, p3

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1179
    invoke-virtual {p0, p3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    invoke-static {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    .line 1171
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    .line 1172
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    .line 1166
    array-length p0, p0

    return p0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 0

    .line 1142
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p0

    return p0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    .line 1190
    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    .line 1191
    aget v1, v1, v0

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1192
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0

    iget-object p3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1160
    invoke-virtual {p3, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    aget p0, p0, p1

    .line 1161
    invoke-static {p3, p0, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method public getWindowCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1130
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method
