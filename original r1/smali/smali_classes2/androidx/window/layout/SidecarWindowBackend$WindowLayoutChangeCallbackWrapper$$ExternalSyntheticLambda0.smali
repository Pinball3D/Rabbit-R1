.class public final synthetic Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

.field public final synthetic f$1:Landroidx/window/layout/WindowLayoutInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iput-object p2, p0, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroidx/window/layout/WindowLayoutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {v0, p0}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->$r8$lambda$jkQHaIq6yFprTVBW9h6wk0oO_6g(Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
