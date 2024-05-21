.class public Lio/flutter/embedding/engine/FlutterOverlaySurface;
.super Ljava/lang/Object;
.source "FlutterOverlaySurface.java"


# instance fields
.field private final id:I

.field private final surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(ILandroid/view/Surface;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/flutter/embedding/engine/FlutterOverlaySurface;->id:I

    iput-object p2, p0, Lio/flutter/embedding/engine/FlutterOverlaySurface;->surface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lio/flutter/embedding/engine/FlutterOverlaySurface;->id:I

    return p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterOverlaySurface;->surface:Landroid/view/Surface;

    return-object p0
.end method
