.class Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICheckCallback.java"

# interfaces
.implements Ltech/rabbit/r1systemupdater/service/ICheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "tech.rabbit.r1systemupdater.service.ICheckCallback"

    return-object p0
.end method

.method public onResult(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "tech.rabbit.r1systemupdater.service.ICheckCallback"

    .line 96
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 97
    invoke-static {v0, p1, v2}, Ltech/rabbit/r1systemupdater/service/ICheckCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 98
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    throw p0
.end method
