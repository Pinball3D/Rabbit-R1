.class public final Lio/sentry/compose/gestures/ComposeGestureTargetLocator;
.super Ljava/lang/Object;
.source "ComposeGestureTargetLocator.java"

# interfaces
.implements Lio/sentry/internal/gestures/GestureTargetLocator;


# static fields
.field private static final ORIGIN:Ljava/lang/String; = "jetpack_compose"


# instance fields
.field private volatile composeHelper:Lio/sentry/compose/SentryComposeHelper;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;->logger:Lio/sentry/ILogger;

    .line 33
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "ComposeUserInteraction"

    invoke-virtual {p0, p1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "maven:io.sentry:sentry-compose"

    const-string v0, "7.4.0"

    .line 35
    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static layoutNodeBoundsContain(Lio/sentry/compose/SentryComposeHelper;Landroidx/compose/ui/node/LayoutNode;FF)Z
    .locals 1

    .line 129
    invoke-virtual {p0, p1}, Lio/sentry/compose/SentryComposeHelper;->getLayoutNodeBoundsInWindow(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    .line 135
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p2

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method


# virtual methods
.method public locate(Ljava/lang/Object;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    if-nez v3, :cond_1

    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v3, v1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    if-nez v3, :cond_0

    .line 46
    new-instance v3, Lio/sentry/compose/SentryComposeHelper;

    iget-object v4, v1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;->logger:Lio/sentry/ILogger;

    invoke-direct {v3, v4}, Lio/sentry/compose/SentryComposeHelper;-><init>(Lio/sentry/ILogger;)V

    iput-object v3, v1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    .line 48
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 51
    :cond_1
    :goto_0
    instance-of v3, v0, Landroidx/compose/ui/node/Owner;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    return-object v4

    .line 55
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 56
    check-cast v0, Landroidx/compose/ui/node/Owner;

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    move-object v5, v0

    .line 63
    :goto_1
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    .line 64
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    if-nez v6, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;->composeHelper:Lio/sentry/compose/SentryComposeHelper;

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v7, v6, v8, v9}, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;->layoutNodeBoundsContain(Lio/sentry/compose/SentryComposeHelper;Landroidx/compose/ui/node/LayoutNode;FF)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 73
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getModifierInfo()Ljava/util/List;

    move-result-object v7

    .line 74
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    move v11, v10

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/ModifierInfo;

    .line 75
    invoke-virtual {v12}, Landroidx/compose/ui/layout/ModifierInfo;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/ui/semantics/SemanticsModifier;

    if-eqz v13, :cond_9

    .line 77
    invoke-virtual {v12}, Landroidx/compose/ui/layout/ModifierInfo;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 79
    invoke-interface {v12}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    .line 80
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v15}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v14, "ScrollBy"

    .line 82
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const-string v14, "OnClick"

    .line 84
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const-string v14, "SentryTag"

    .line 86
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "TestTag"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 87
    :cond_8
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 88
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    .line 94
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/ui/layout/ModifierInfo;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "androidx.compose.foundation.ClickableElement"

    .line 95
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "androidx.compose.foundation.CombinedClickableElement"

    .line 96
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_4

    :cond_a
    const-string v13, "androidx.compose.foundation.ScrollingLayoutElement"

    .line 98
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_b
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_c
    if-eqz v10, :cond_d

    .line 104
    sget-object v7, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne v2, v7, :cond_d

    move-object v0, v5

    :cond_d
    if-eqz v11, :cond_f

    .line 107
    sget-object v7, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne v2, v7, :cond_f

    move-object v11, v5

    goto :goto_5

    :cond_e
    move/from16 v8, p2

    move/from16 v9, p3

    .line 113
    :cond_f
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_10
    move-object v11, v0

    :goto_5
    if-nez v11, :cond_11

    return-object v4

    .line 119
    :cond_11
    new-instance v0, Lio/sentry/internal/gestures/UiElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v12, "jetpack_compose"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/sentry/internal/gestures/UiElement;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
