.class public final enum Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
.super Ljava/lang/Enum;
.source "FlutterRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayFeatureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

.field public static final enum POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

.field public static final enum POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

.field public static final enum UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;


# instance fields
.field public final encodedValue:I


# direct methods
.method private static synthetic $values()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    .locals 3

    sget-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    sget-object v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    filled-new-array {v0, v1, v2}, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1131
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 1137
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    const-string v1, "POSTURE_FLAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 1144
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    const-string v1, "POSTURE_HALF_OPENED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 1129
    invoke-static {}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->$values()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->$VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->encodedValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    .locals 1

    const-class v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 1129
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->$VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 1129
    invoke-virtual {v0}, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-object v0
.end method
