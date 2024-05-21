.class public final enum Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;
.super Ljava/lang/Enum;
.source "PlatformChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Brightness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

.field public static final enum DARK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

.field public static final enum LIGHT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;


# instance fields
.field private encodedName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;
    .locals 2

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->LIGHT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->DARK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    filled-new-array {v0, v1}, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 742
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    const/4 v1, 0x0

    const-string v2, "Brightness.light"

    const-string v3, "LIGHT"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->LIGHT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    .line 743
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    const/4 v1, 0x1

    const-string v2, "Brightness.dark"

    const-string v3, "DARK"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->DARK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    .line 741
    invoke-static {}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->$values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 757
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->encodedName:Ljava/lang/String;

    return-void
.end method

.method static fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 747
    invoke-static {}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 748
    iget-object v4, v3, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->encodedName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such Brightness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;
    .locals 1

    const-class v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    .line 741
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    .line 741
    invoke-virtual {v0}, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    return-object v0
.end method
