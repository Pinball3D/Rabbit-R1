.class public final Landroidx/media3/extractor/text/CueDecoder;
.super Ljava/lang/Object;
.source "CueDecoder.java"


# static fields
.field static final BUNDLED_CUES:Ljava/lang/String; = "c"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
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
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 43
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    const-class p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    const-string p0, "c"

    .line 47
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 49
    sget-object p1, Landroidx/media3/common/text/Cue;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-static {p1, p0}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
