.class public abstract Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;
.super Landroid/os/Binder;
.source "IWorkManagerImplCallback.java"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImplCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/IWorkManagerImplCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onFailure:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Landroidx/work/multiprocess/IWorkManagerImplCallback;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Landroidx/work/multiprocess/IWorkManagerImplCallback;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 73
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->onSuccess([B)V

    :goto_0
    return v1
.end method
