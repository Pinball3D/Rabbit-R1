.class public interface abstract Ltech/rabbit/r1systemupdater/service/IUpdateCallback;
.super Ljava/lang/Object;
.source "IUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1systemupdater/service/IUpdateCallback$Stub;,
        Ltech/rabbit/r1systemupdater/service/IUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "tech.rabbit.r1systemupdater.service.IUpdateCallback"


# virtual methods
.method public abstract onPayloadApplicationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusUpdate(IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
