.class public final Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field private final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:Landroidx/media3/common/FlagSet;


# direct methods
.method public constructor <init>(Landroidx/media3/common/FlagSet;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/FlagSet;",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroidx/media3/common/FlagSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 105
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 106
    invoke-virtual {p1, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v2

    .line 107
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->eventTimes:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 129
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public varargs containsAny([I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 139
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->containsAny([I)Z

    move-result p0

    return p0
.end method

.method public get(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 157
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result p0

    return p0
.end method

.method public getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->eventTimes:Landroid/util/SparseArray;

    .line 119
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Landroidx/media3/common/FlagSet;

    .line 144
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result p0

    return p0
.end method
