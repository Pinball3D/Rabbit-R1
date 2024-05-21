.class public Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;
.super Ljava/lang/Object;
.source "HiddenLifecycleReference.java"


# instance fields
.field private final lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method
