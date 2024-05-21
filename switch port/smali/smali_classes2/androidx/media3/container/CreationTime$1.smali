.class Landroidx/media3/container/CreationTime$1;
.super Ljava/lang/Object;
.source "CreationTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/CreationTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/container/CreationTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/container/CreationTime;
    .locals 1

    .line 83
    new-instance p0, Landroidx/media3/container/CreationTime;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/container/CreationTime;-><init>(Landroid/os/Parcel;Landroidx/media3/container/CreationTime$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Landroidx/media3/container/CreationTime$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/container/CreationTime;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/container/CreationTime;
    .locals 0

    .line 88
    new-array p0, p1, [Landroidx/media3/container/CreationTime;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Landroidx/media3/container/CreationTime$1;->newArray(I)[Landroidx/media3/container/CreationTime;

    move-result-object p0

    return-object p0
.end method
