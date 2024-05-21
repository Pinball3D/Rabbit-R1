.class public interface abstract Landroidx/media3/exoplayer/source/MediaSourceFactory;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSUPPORTED:Landroidx/media3/exoplayer/source/MediaSourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceFactory$1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/MediaSourceFactory$1;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/MediaSourceFactory;->UNSUPPORTED:Landroidx/media3/exoplayer/source/MediaSourceFactory;

    return-void
.end method
