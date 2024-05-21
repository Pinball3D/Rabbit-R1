.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 2756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    .line 2750
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object p1
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object p0
.end method
