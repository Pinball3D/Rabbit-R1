.class public interface abstract LDeviceControl;
.super Ljava/lang/Object;
.source "Device.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDeviceControl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u000bH&J\u0008\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\tH&\u00a8\u0006\u0011"
    }
    d2 = {
        "LDeviceControl;",
        "",
        "addScreenOnFlag",
        "",
        "disableRotation",
        "enableRotation",
        "getBatteryChargingState",
        "",
        "getBatteryLevel",
        "",
        "getVersion",
        "",
        "getVersionBrief",
        "removeScreenOnFlag",
        "setVolume",
        "level",
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
.field public static final Companion:LDeviceControl$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LDeviceControl$Companion;->$$INSTANCE:LDeviceControl$Companion;

    sput-object v0, LDeviceControl;->Companion:LDeviceControl$Companion;

    return-void
.end method


# virtual methods
.method public abstract addScreenOnFlag()V
.end method

.method public abstract disableRotation()V
.end method

.method public abstract enableRotation()V
.end method

.method public abstract getBatteryChargingState()Z
.end method

.method public abstract getBatteryLevel()J
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVersionBrief()Ljava/lang/String;
.end method

.method public abstract removeScreenOnFlag()V
.end method

.method public abstract setVolume(J)V
.end method
