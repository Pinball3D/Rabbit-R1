.class public abstract Landroidx/room/IMultiInstanceInvalidationService$Stub;
.super Landroid/os/Binder;
.source "IMultiInstanceInvalidationService.java"

# interfaces
.implements Landroidx/room/IMultiInstanceInvalidationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/IMultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_broadcastInvalidation:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    .line 63
    invoke-virtual {p0, p0, v0}, Landroidx/room/IMultiInstanceInvalidationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/room/IMultiInstanceInvalidationService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    .line 74
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    instance-of v1, v0, Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Landroidx/room/IMultiInstanceInvalidationService;

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 124
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-virtual {p0, p1, p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub;->broadcastInvalidation(I[Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/room/IMultiInstanceInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/room/IMultiInstanceInvalidationCallback;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 117
    invoke-virtual {p0, p1, p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub;->unregisterCallback(Landroidx/room/IMultiInstanceInvalidationCallback;I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/room/IMultiInstanceInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/room/IMultiInstanceInvalidationCallback;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-virtual {p0, p1, p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub;->registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    move-result p0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 94
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
