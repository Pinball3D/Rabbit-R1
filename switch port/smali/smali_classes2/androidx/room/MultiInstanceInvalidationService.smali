.class public final Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "MultiInstanceInvalidationService.kt"


# annotations
.annotation runtime Landroidx/room/ExperimentalRoomApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/room/MultiInstanceInvalidationService;",
        "Landroid/app/Service;",
        "()V",
        "binder",
        "Landroidx/room/IMultiInstanceInvalidationService$Stub;",
        "callbackList",
        "Landroid/os/RemoteCallbackList;",
        "Landroidx/room/IMultiInstanceInvalidationCallback;",
        "getCallbackList$room_runtime_release",
        "()Landroid/os/RemoteCallbackList;",
        "clientNames",
        "",
        "",
        "",
        "getClientNames$room_runtime_release",
        "()Ljava/util/Map;",
        "maxClientId",
        "getMaxClientId$room_runtime_release",
        "()I",
        "setMaxClientId$room_runtime_release",
        "(I)V",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binder:Landroidx/room/IMultiInstanceInvalidationService$Stub;

.field private final callbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroidx/room/IMultiInstanceInvalidationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final clientNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxClientId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->clientNames:Ljava/util/Map;

    .line 42
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$callbackList$1;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    check-cast v0, Landroid/os/RemoteCallbackList;

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->callbackList:Landroid/os/RemoteCallbackList;

    .line 52
    new-instance v0, Landroidx/room/MultiInstanceInvalidationService$binder$1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationService$binder$1;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    check-cast v0, Landroidx/room/IMultiInstanceInvalidationService$Stub;

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->binder:Landroidx/room/IMultiInstanceInvalidationService$Stub;

    return-void
.end method


# virtual methods
.method public final getCallbackList$room_runtime_release()Landroid/os/RemoteCallbackList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Landroidx/room/IMultiInstanceInvalidationCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->callbackList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public final getClientNames$room_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->clientNames:Ljava/util/Map;

    return-object p0
.end method

.method public final getMaxClientId$room_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/room/MultiInstanceInvalidationService;->maxClientId:I

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->binder:Landroidx/room/IMultiInstanceInvalidationService$Stub;

    .line 120
    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public final setMaxClientId$room_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/room/MultiInstanceInvalidationService;->maxClientId:I

    return-void
.end method
