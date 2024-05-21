.class public final enum Lorg/webrtc/DataChannel$State;
.super Ljava/lang/Enum;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/DataChannel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/DataChannel$State;

.field public static final enum CLOSED:Lorg/webrtc/DataChannel$State;

.field public static final enum CLOSING:Lorg/webrtc/DataChannel$State;

.field public static final enum CONNECTING:Lorg/webrtc/DataChannel$State;

.field public static final enum OPEN:Lorg/webrtc/DataChannel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 94
    new-instance v0, Lorg/webrtc/DataChannel$State;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/DataChannel$State;->CONNECTING:Lorg/webrtc/DataChannel$State;

    .line 95
    new-instance v1, Lorg/webrtc/DataChannel$State;

    const-string v2, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/webrtc/DataChannel$State;->OPEN:Lorg/webrtc/DataChannel$State;

    .line 96
    new-instance v2, Lorg/webrtc/DataChannel$State;

    const-string v3, "CLOSING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/webrtc/DataChannel$State;->CLOSING:Lorg/webrtc/DataChannel$State;

    .line 97
    new-instance v3, Lorg/webrtc/DataChannel$State;

    const-string v4, "CLOSED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/webrtc/DataChannel$State;->CLOSED:Lorg/webrtc/DataChannel$State;

    filled-new-array {v0, v1, v2, v3}, [Lorg/webrtc/DataChannel$State;

    move-result-object v0

    sput-object v0, Lorg/webrtc/DataChannel$State;->$VALUES:[Lorg/webrtc/DataChannel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromNativeIndex(I)Lorg/webrtc/DataChannel$State;
    .locals 1

    .line 101
    invoke-static {}, Lorg/webrtc/DataChannel$State;->values()[Lorg/webrtc/DataChannel$State;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/DataChannel$State;
    .locals 1

    const-class v0, Lorg/webrtc/DataChannel$State;

    .line 93
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/DataChannel$State;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/DataChannel$State;
    .locals 1

    sget-object v0, Lorg/webrtc/DataChannel$State;->$VALUES:[Lorg/webrtc/DataChannel$State;

    .line 93
    invoke-virtual {v0}, [Lorg/webrtc/DataChannel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/DataChannel$State;

    return-object v0
.end method
