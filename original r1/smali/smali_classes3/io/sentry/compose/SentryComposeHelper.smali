.class public Lio/sentry/compose/SentryComposeHelper;
.super Ljava/lang/Object;
.source "SentryComposeHelper.java"


# instance fields
.field private layoutDelegateField:Ljava/lang/reflect/Field;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/compose/SentryComposeHelper;->layoutDelegateField:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lio/sentry/compose/SentryComposeHelper;->logger:Lio/sentry/ILogger;

    :try_start_0
    const-string v0, "androidx.compose.ui.node.LayoutNode"

    .line 21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutDelegate"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/compose/SentryComposeHelper;->layoutDelegateField:Ljava/lang/reflect/Field;

    const/4 p0, 0x1

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not find LayoutNode.layoutDelegate field"

    invoke-interface {p1, p0, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutNodeBoundsInWindow(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/geometry/Rect;
    .locals 2

    iget-object v0, p0, Lio/sentry/compose/SentryComposeHelper;->layoutDelegateField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/compose/SentryComposeHelper;->logger:Lio/sentry/ILogger;

    .line 36
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Could not fetch position for LayoutNode"

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
