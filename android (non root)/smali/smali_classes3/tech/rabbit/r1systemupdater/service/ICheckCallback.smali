.class public interface abstract Ltech/rabbit/r1systemupdater/service/ICheckCallback;
.super Ljava/lang/Object;
.source "ICheckCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1systemupdater/service/ICheckCallback$_Parcel;,
        Ltech/rabbit/r1systemupdater/service/ICheckCallback$Stub;,
        Ltech/rabbit/r1systemupdater/service/ICheckCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "tech.rabbit.r1systemupdater.service.ICheckCallback"


# virtual methods
.method public abstract onResult(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
