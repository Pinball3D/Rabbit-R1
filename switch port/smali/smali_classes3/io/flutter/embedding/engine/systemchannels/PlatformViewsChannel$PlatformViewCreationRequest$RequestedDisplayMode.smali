.class public final enum Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;
.super Ljava/lang/Enum;
.source "PlatformViewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestedDisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

.field public static final enum HYBRID_ONLY:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

.field public static final enum TEXTURE_WITH_HYBRID_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

.field public static final enum TEXTURE_WITH_VIRTUAL_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;


# direct methods
.method private static synthetic $values()[Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;
    .locals 3

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->TEXTURE_WITH_VIRTUAL_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->TEXTURE_WITH_HYBRID_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    sget-object v2, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->HYBRID_ONLY:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    filled-new-array {v0, v1, v2}, [Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 371
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    const-string v1, "TEXTURE_WITH_VIRTUAL_FALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->TEXTURE_WITH_VIRTUAL_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    .line 373
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    const-string v1, "TEXTURE_WITH_HYBRID_FALLBACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->TEXTURE_WITH_HYBRID_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    .line 375
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    const-string v1, "HYBRID_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->HYBRID_ONLY:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    .line 369
    invoke-static {}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->$values()[Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;
    .locals 1

    const-class v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    .line 369
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    .line 369
    invoke-virtual {v0}, [Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    return-object v0
.end method
