.class public final Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createCompositeSequenceableLoader([Landroidx/media3/exoplayer/source/SequenceableLoader;)Landroidx/media3/exoplayer/source/SequenceableLoader;
    .locals 0

    .line 27
    new-instance p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;-><init>([Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-object p0
.end method
