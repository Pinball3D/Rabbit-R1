.class public interface abstract Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy;
.super Ljava/lang/Object;
.source "FlutterTaskProxy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy;",
        "",
        "task",
        "",
        "getTask",
        "()Ljava/lang/String;",
        "getInfo",
        "name",
        "onFlutterEvent",
        "",
        "payload",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTask()Ljava/lang/String;
.end method

.method public abstract onFlutterEvent(Ljava/lang/String;)V
.end method
