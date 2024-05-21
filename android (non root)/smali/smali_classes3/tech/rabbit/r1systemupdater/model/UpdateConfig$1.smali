.class Ltech/rabbit/r1systemupdater/model/UpdateConfig$1;
.super Ljava/lang/Object;
.source "UpdateConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1systemupdater/model/UpdateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Ltech/rabbit/r1systemupdater/model/UpdateConfig$1;->createFromParcel(Landroid/os/Parcel;)Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltech/rabbit/r1systemupdater/model/UpdateConfig;
    .locals 0

    .line 35
    new-instance p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-direct {p0, p1}, Ltech/rabbit/r1systemupdater/model/UpdateConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Ltech/rabbit/r1systemupdater/model/UpdateConfig$1;->newArray(I)[Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Ltech/rabbit/r1systemupdater/model/UpdateConfig;
    .locals 0

    .line 40
    new-array p0, p1, [Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    return-object p0
.end method
