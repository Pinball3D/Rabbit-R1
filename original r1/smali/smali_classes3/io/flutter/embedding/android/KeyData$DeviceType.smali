.class public final enum Lio/flutter/embedding/android/KeyData$DeviceType;
.super Ljava/lang/Enum;
.source "KeyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/KeyData$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/android/KeyData$DeviceType;

.field public static final enum kDirectionalPad:Lio/flutter/embedding/android/KeyData$DeviceType;

.field public static final enum kGamepad:Lio/flutter/embedding/android/KeyData$DeviceType;

.field public static final enum kHdmi:Lio/flutter/embedding/android/KeyData$DeviceType;

.field public static final enum kJoystick:Lio/flutter/embedding/android/KeyData$DeviceType;

.field public static final enum kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;


# instance fields
.field private final value:J


# direct methods
.method private static synthetic $values()[Lio/flutter/embedding/android/KeyData$DeviceType;
    .locals 5

    sget-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;

    sget-object v1, Lio/flutter/embedding/android/KeyData$DeviceType;->kDirectionalPad:Lio/flutter/embedding/android/KeyData$DeviceType;

    sget-object v2, Lio/flutter/embedding/android/KeyData$DeviceType;->kGamepad:Lio/flutter/embedding/android/KeyData$DeviceType;

    sget-object v3, Lio/flutter/embedding/android/KeyData$DeviceType;->kJoystick:Lio/flutter/embedding/android/KeyData$DeviceType;

    sget-object v4, Lio/flutter/embedding/android/KeyData$DeviceType;->kHdmi:Lio/flutter/embedding/android/KeyData$DeviceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/flutter/embedding/android/KeyData$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lio/flutter/embedding/android/KeyData$DeviceType;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "kKeyboard"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/KeyData$DeviceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 73
    new-instance v0, Lio/flutter/embedding/android/KeyData$DeviceType;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "kDirectionalPad"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/KeyData$DeviceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->kDirectionalPad:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 74
    new-instance v0, Lio/flutter/embedding/android/KeyData$DeviceType;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "kGamepad"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/KeyData$DeviceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->kGamepad:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 75
    new-instance v0, Lio/flutter/embedding/android/KeyData$DeviceType;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-string v4, "kJoystick"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/KeyData$DeviceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->kJoystick:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 76
    new-instance v0, Lio/flutter/embedding/android/KeyData$DeviceType;

    const/4 v1, 0x4

    const-wide/16 v2, 0x4

    const-string v4, "kHdmi"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/KeyData$DeviceType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->kHdmi:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 71
    invoke-static {}, Lio/flutter/embedding/android/KeyData$DeviceType;->$values()[Lio/flutter/embedding/android/KeyData$DeviceType;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->$VALUES:[Lio/flutter/embedding/android/KeyData$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lio/flutter/embedding/android/KeyData$DeviceType;->value:J

    return-void
.end method

.method static fromLong(J)Lio/flutter/embedding/android/KeyData$DeviceType;
    .locals 0

    long-to-int p0, p0

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    sget-object p0, Lio/flutter/embedding/android/KeyData$DeviceType;->kHdmi:Lio/flutter/embedding/android/KeyData$DeviceType;

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unexpected DeviceType value"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    sget-object p0, Lio/flutter/embedding/android/KeyData$DeviceType;->kJoystick:Lio/flutter/embedding/android/KeyData$DeviceType;

    return-object p0

    :cond_2
    sget-object p0, Lio/flutter/embedding/android/KeyData$DeviceType;->kGamepad:Lio/flutter/embedding/android/KeyData$DeviceType;

    return-object p0

    :cond_3
    sget-object p0, Lio/flutter/embedding/android/KeyData$DeviceType;->kDirectionalPad:Lio/flutter/embedding/android/KeyData$DeviceType;

    return-object p0

    :cond_4
    sget-object p0, Lio/flutter/embedding/android/KeyData$DeviceType;->kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/KeyData$DeviceType;
    .locals 1

    const-class v0, Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 71
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/KeyData$DeviceType;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/KeyData$DeviceType;
    .locals 1

    sget-object v0, Lio/flutter/embedding/android/KeyData$DeviceType;->$VALUES:[Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 71
    invoke-virtual {v0}, [Lio/flutter/embedding/android/KeyData$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/KeyData$DeviceType;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/android/KeyData$DeviceType;->value:J

    return-wide v0
.end method
