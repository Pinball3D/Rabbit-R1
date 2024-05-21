.class public final Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .locals 0

    .line 24
    new-instance p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-object p0
.end method
