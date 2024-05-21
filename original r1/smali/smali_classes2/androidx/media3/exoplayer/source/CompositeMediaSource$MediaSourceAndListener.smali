.class final Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;"
        }
    .end annotation
.end field

.field public final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;",
            "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    return-void
.end method
