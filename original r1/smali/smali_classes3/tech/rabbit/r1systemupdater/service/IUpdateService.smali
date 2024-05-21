.class public interface abstract Ltech/rabbit/r1systemupdater/service/IUpdateService;
.super Ljava/lang/Object;
.source "IUpdateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1systemupdater/service/IUpdateService$_Parcel;,
        Ltech/rabbit/r1systemupdater/service/IUpdateService$Stub;,
        Ltech/rabbit/r1systemupdater/service/IUpdateService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "tech.rabbit.r1systemupdater.service.IUpdateService"


# virtual methods
.method public abstract bind(Ltech/rabbit/r1systemupdater/service/IUpdateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract check(Ltech/rabbit/r1systemupdater/service/ICheckCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unbind()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract update(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
