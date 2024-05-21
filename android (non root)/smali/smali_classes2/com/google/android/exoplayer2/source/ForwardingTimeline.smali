.class public abstract Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "ForwardingTimeline.java"


# instance fields
.field protected final timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p0

    return p0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getLastWindowIndex(Z)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p0

    return p0
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p0

    return p0
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 64
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p0

    return p0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p0

    return p0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method public getWindowCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p0

    return p0
.end method
