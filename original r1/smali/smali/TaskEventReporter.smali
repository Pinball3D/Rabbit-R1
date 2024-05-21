.class public interface abstract LTaskEventReporter;
.super Ljava/lang/Object;
.source "Device.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTaskEventReporter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H&\u00a8\u0006\u000b"
    }
    d2 = {
        "LTaskEventReporter;",
        "",
        "getTaskInfo",
        "",
        "task",
        "name",
        "sendEvent",
        "",
        "eventName",
        "payload",
        "Companion",
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


# static fields
.field public static final Companion:LTaskEventReporter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LTaskEventReporter$Companion;->$$INSTANCE:LTaskEventReporter$Companion;

    sput-object v0, LTaskEventReporter;->Companion:LTaskEventReporter$Companion;

    return-void
.end method


# virtual methods
.method public abstract getTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method
