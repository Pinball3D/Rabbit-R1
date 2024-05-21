.class public final enum Lio/sentry/protocol/Device$DeviceOrientation;
.super Ljava/lang/Enum;
.source "Device.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/protocol/Device$DeviceOrientation;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/protocol/Device$DeviceOrientation;

.field public static final enum LANDSCAPE:Lio/sentry/protocol/Device$DeviceOrientation;

.field public static final enum PORTRAIT:Lio/sentry/protocol/Device$DeviceOrientation;


# direct methods
.method private static synthetic $values()[Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 2

    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->PORTRAIT:Lio/sentry/protocol/Device$DeviceOrientation;

    sget-object v1, Lio/sentry/protocol/Device$DeviceOrientation;->LANDSCAPE:Lio/sentry/protocol/Device$DeviceOrientation;

    filled-new-array {v0, v1}, [Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 531
    new-instance v0, Lio/sentry/protocol/Device$DeviceOrientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/Device$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->PORTRAIT:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 532
    new-instance v0, Lio/sentry/protocol/Device$DeviceOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/Device$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->LANDSCAPE:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 530
    invoke-static {}, Lio/sentry/protocol/Device$DeviceOrientation;->$values()[Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v0

    sput-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->$VALUES:[Lio/sentry/protocol/Device$DeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 1

    const-class v0, Lio/sentry/protocol/Device$DeviceOrientation;

    .line 530
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Device$DeviceOrientation;

    return-object p0
.end method

.method public static values()[Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 1

    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->$VALUES:[Lio/sentry/protocol/Device$DeviceOrientation;

    .line 530
    invoke-virtual {v0}, [Lio/sentry/protocol/Device$DeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/protocol/Device$DeviceOrientation;

    return-object v0
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lio/sentry/protocol/Device$DeviceOrientation;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    return-void
.end method
