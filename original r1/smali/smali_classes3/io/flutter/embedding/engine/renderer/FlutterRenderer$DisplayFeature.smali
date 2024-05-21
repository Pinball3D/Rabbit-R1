.class public final Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayFeature"
.end annotation


# instance fields
.field public final bounds:Landroid/graphics/Rect;

.field public final state:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

.field public final type:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;)V
    .locals 0

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->type:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .line 1081
    sget-object p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->state:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;)V
    .locals 0

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->bounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->type:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    iput-object p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeature;->state:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-void
.end method
