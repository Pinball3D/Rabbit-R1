.class Landroidx/media3/extractor/metadata/mp4/SlowMotionData$1;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/mp4/SlowMotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/mp4/SlowMotionData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/mp4/SlowMotionData;
    .locals 1

    .line 178
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    const-class v0, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 180
    new-instance p1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-direct {p1, p0}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/mp4/SlowMotionData;
    .locals 0

    .line 185
    new-array p0, p1, [Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$1;->newArray(I)[Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    move-result-object p0

    return-object p0
.end method
