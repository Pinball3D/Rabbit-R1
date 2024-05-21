.class public final Lcom/google/android/exoplayer2/text/CueEncoder;
.super Ljava/lang/Object;
.source "CueEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)[B"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    .line 35
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "c"

    .line 36
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
