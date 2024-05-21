.class Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source "INotificationSideChannel.java"

# interfaces
.implements Landroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel$Stub;
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

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 146
    :try_start_0
    sget-object v1, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x2

    .line 150
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    throw p0
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    :try_start_0
    sget-object v1, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 163
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 123
    sget-object p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    :try_start_0
    sget-object v1, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 134
    invoke-static {v0, p4, p1}, Landroid/support/v4/app/INotificationSideChannel$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 135
    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    throw p0
.end method
