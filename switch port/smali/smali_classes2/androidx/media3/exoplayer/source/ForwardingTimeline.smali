.class public abstract Landroidx/media3/exoplayer/source/ForwardingTimeline;
.super Landroidx/media3/common/Timeline;
.source "ForwardingTimeline.java"


# instance fields
.field protected final timeline:Landroidx/media3/common/Timeline;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 56
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p0

    return p0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 76
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getLastWindowIndex(Z)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 51
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p0

    return p0
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p0

    return p0
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 66
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result p0

    return p0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p0

    return p0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 81
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method public getWindowCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 34
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p0

    return p0
.end method
