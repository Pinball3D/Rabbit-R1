.class public abstract Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;
.super Landroid/os/Binder;
.source "IUpdateService.java"

# interfaces
.implements Ltech/rabbit/r1systemupdater/service/IUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1systemupdater/service/IUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_bind:I = 0x1

.field static final TRANSACTION_check:I = 0x3

.field static final TRANSACTION_unbind:I = 0x2

.field static final TRANSACTION_update:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "tech.rabbit.r1systemupdater.service.IUpdateService"

    .line 33
    invoke-virtual {p0, p0, v0}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltech/rabbit/r1systemupdater/service/IUpdateService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "tech.rabbit.r1systemupdater.service.IUpdateService"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    instance-of v1, v0, Ltech/rabbit/r1systemupdater/service/IUpdateService;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Ltech/rabbit/r1systemupdater/service/IUpdateService;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "tech.rabbit.r1systemupdater.service.IUpdateService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 95
    :cond_1
    sget-object p1, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ltech/rabbit/r1systemupdater/service/IUpdateService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    .line 96
    invoke-virtual {p0, p1}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->update(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Ltech/rabbit/r1systemupdater/service/ICheckCallback;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->check(Ltech/rabbit/r1systemupdater/service/ICheckCallback;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->unbind()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/service/IUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Ltech/rabbit/r1systemupdater/service/IUpdateCallback;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;->bind(Ltech/rabbit/r1systemupdater/service/IUpdateCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 64
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
