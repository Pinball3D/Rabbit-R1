.class public final Landroidx/media3/extractor/text/CueEncoder;
.super Ljava/lang/Object;
.source "CueEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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
            "Landroidx/media3/common/text/Cue;",
            ">;)[B"
        }
    .end annotation

    .line 37
    invoke-static {p1}, Landroidx/media3/common/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    .line 38
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "c"

    .line 39
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
