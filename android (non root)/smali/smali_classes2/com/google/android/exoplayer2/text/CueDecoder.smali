.class public final Lcom/google/android/exoplayer2/text/CueDecoder;
.super Ljava/lang/Object;
.source "CueDecoder.java"


# static fields
.field static final BUNDLED_CUES:Ljava/lang/String; = "c"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([B)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 40
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    const-class p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    const-string p0, "c"

    .line 44
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 46
    sget-object p1, Lcom/google/android/exoplayer2/text/Cue;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
