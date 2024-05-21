.class public abstract Landroid/support/v4/os/IResultReceiver$Stub;
.super Landroid/os/Binder;
.source "IResultReceiver.java"

# interfaces
.implements Landroid/support/v4/os/IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/IResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_send:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/os/IResultReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    instance-of v1, v0, Landroid/support/v4/os/IResultReceiver;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Landroid/support/v4/os/IResultReceiver;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 49
    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_2

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 62
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 64
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroid/support/v4/os/IResultReceiver$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/os/IResultReceiver$Stub;->send(ILandroid/os/Bundle;)V

    return v1
.end method
