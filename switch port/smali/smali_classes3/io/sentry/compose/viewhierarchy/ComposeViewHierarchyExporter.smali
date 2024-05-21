.class public final Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;
.super Ljava/lang/Object;
.source "ComposeViewHierarchyExporter.java"

# interfaces
.implements Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;


# instance fields
.field private volatile composeHelper:Lio/sentry/compose/SentryComposeHelper;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private static addChild(Lio/sentry/compose/SentryComposeHelper;Lio/sentry/protocol/ViewHierarchyNode;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 57
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    new-instance v0, Lio/sentry/protocol/ViewHierarchyNode;

    invoke-direct {v0}, Lio/sentry/protocol/ViewHierarchyNode;-><init>()V

    .line 59
    invoke-static {p3, v0}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->setTag(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/protocol/ViewHierarchyNode;)V

    .line 60
    invoke-static {p0, p3, p2, v0}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->setBounds(Lio/sentry/compose/SentryComposeHelper;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;Lio/sentry/protocol/ViewHierarchyNode;)V

    .line 62
    invoke-virtual {v0}, Lio/sentry/protocol/ViewHierarchyNode;->getTag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {v0}, Lio/sentry/protocol/ViewHierarchyNode;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/ViewHierarchyNode;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "@Composable"

    .line 65
    invoke-virtual {v0, p2}, Lio/sentry/protocol/ViewHierarchyNode;->setType(Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {p1}, Lio/sentry/protocol/ViewHierarchyNode;->getChildren()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lio/sentry/protocol/ViewHierarchyNode;->setChildren(Ljava/util/List;)V

    .line 71
    :cond_1
    invoke-virtual {p1}, Lio/sentry/protocol/ViewHierarchyNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 76
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 77
    invoke-static {p0, v0, p3, v2}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->addChild(Lio/sentry/compose/SentryComposeHelper;Lio/sentry/protocol/ViewHierarchyNode;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static setBounds(Lio/sentry/compose/SentryComposeHelper;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;Lio/sentry/protocol/ViewHierarchyNode;)V
    .locals 4

    .line 109
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    move-result v1

    int-to-double v2, v0

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/sentry/protocol/ViewHierarchyNode;->setHeight(Ljava/lang/Double;)V

    int-to-double v0, v1

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/sentry/protocol/ViewHierarchyNode;->setWidth(Ljava/lang/Double;)V

    .line 115
    invoke-virtual {p0, p1}, Lio/sentry/compose/SentryComposeHelper;->getLayoutNodeBoundsInWindow(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    float-to-double v0, v0

    .line 118
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p1

    float-to-double v2, p1

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p0, p2}, Lio/sentry/compose/SentryComposeHelper;->getLayoutNodeBoundsInWindow(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    float-to-double p1, p1

    sub-double/2addr v0, p1

    .line 124
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p0

    float-to-double p0, p0

    sub-double/2addr v2, p0

    .line 128
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p3, p0}, Lio/sentry/protocol/ViewHierarchyNode;->setX(Ljava/lang/Double;)V

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p3, p0}, Lio/sentry/protocol/ViewHierarchyNode;->setY(Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method private static setTag(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/protocol/ViewHierarchyNode;)V
    .locals 4

    .line 84
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getModifierInfo()Ljava/util/List;

    move-result-object p0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/ModifierInfo;

    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/layout/ModifierInfo;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/ui/semantics/SemanticsModifier;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroidx/compose/ui/layout/ModifierInfo;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 90
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SentryTag"

    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "TestTag"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public export(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Object;)Z
    .locals 2

    .line 34
    instance-of v0, p2, Landroidx/compose/ui/node/Owner;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    if-nez v0, :cond_2

    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lio/sentry/compose/SentryComposeHelper;

    iget-object v1, p0, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->logger:Lio/sentry/ILogger;

    invoke-direct {v0, v1}, Lio/sentry/compose/SentryComposeHelper;-><init>(Lio/sentry/ILogger;)V

    iput-object v0, p0, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    .line 44
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 47
    :cond_2
    :goto_0
    check-cast p2, Landroidx/compose/ui/node/Owner;

    invoke-interface {p2}, Landroidx/compose/ui/node/Owner;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    iget-object p0, p0, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0, p2}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;->addChild(Lio/sentry/compose/SentryComposeHelper;Lio/sentry/protocol/ViewHierarchyNode;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    const/4 p0, 0x1

    return p0
.end method
