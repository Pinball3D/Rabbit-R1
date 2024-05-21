.class public interface abstract Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
.super Ljava/lang/Object;
.source "IUnusedAppRestrictionsBackportCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;,
        Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportCallback"

    .line 124
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onIsPermissionRevocationEnabledForAppResult(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
