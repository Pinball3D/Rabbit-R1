.class final enum Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;
.super Ljava/lang/Enum;
.source "LifecycleChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppLifecycleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

.field public static final enum DETACHED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

.field public static final enum HIDDEN:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

.field public static final enum INACTIVE:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

.field public static final enum PAUSED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

.field public static final enum RESUMED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;


# direct methods
.method private static synthetic $values()[Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;
    .locals 5

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->DETACHED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->RESUMED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    sget-object v2, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->INACTIVE:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    sget-object v3, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->HIDDEN:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    sget-object v4, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->PAUSED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const-string v1, "DETACHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->DETACHED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    .line 33
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const-string v1, "RESUMED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->RESUMED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    .line 34
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->INACTIVE:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    .line 35
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const-string v1, "HIDDEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->HIDDEN:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    .line 36
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const-string v1, "PAUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->PAUSED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    .line 31
    invoke-static {}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->$values()[Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;
    .locals 1

    const-class v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    .line 31
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    .line 31
    invoke-virtual {v0}, [Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    return-object v0
.end method
