.class public final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidComposeViewAccessibilityDelegateCompat.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3490:1\n288#2,2:3491\n1#3:3493\n*S KotlinDebug\n*F\n+ 1 AndroidComposeViewAccessibilityDelegateCompat.android.kt\nandroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt\n*L\n3489#1:3491,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001a\u0010\u0013\u001a\u00020\n*\u0006\u0012\u0002\u0008\u00030\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002\u001a\u000c\u0010\u0017\u001a\u00020\n*\u00020\u0002H\u0002\u001a\u000c\u0010\u0018\u001a\u00020\n*\u00020\u0002H\u0002\u001a\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001a*\u0008\u0012\u0004\u0012\u00020\u001a0\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u001a\"\u0010\u001e\u001a\u0004\u0018\u00010\u001f*\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\n0!H\u0002\u001a\u0018\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020$0#*\u00020%H\u0000\u001a\u000c\u0010&\u001a\u00020\n*\u00020\u0002H\u0002\u001a \u0010\'\u001a\u00020\n*\u0008\u0012\u0004\u0012\u00020\u00010(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00010(H\u0002\u001a\u0014\u0010*\u001a\u00020\n*\u00020\u00022\u0006\u0010+\u001a\u00020,H\u0002\u001a\u001b\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00010(*\u00020\u00012\u0006\u0010.\u001a\u00020\u0001H\u0080\u0002\u001a\u0016\u0010/\u001a\u0004\u0018\u000100*\u0002012\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u001a\u001b\u00102\u001a\u0004\u0018\u00010\u0006*\u000203H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00084\u00105\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0018\u0010\t\u001a\u00020\n*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000b\"\u0018\u0010\u000c\u001a\u00020\n*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000b\"\u0018\u0010\r\u001a\u00020\n*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\"\u001a\u0010\u000e\u001a\u0004\u0018\u00010\n*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\"\u001e\u0010\u0010\u001a\u00020\n*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u000b\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00066"
    }
    d2 = {
        "getTraversalIndex",
        "",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "getGetTraversalIndex",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)F",
        "infoContentDescriptionOrNull",
        "",
        "getInfoContentDescriptionOrNull",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;",
        "isPassword",
        "",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)Z",
        "isRtl",
        "isTextField",
        "isTraversalGroup",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/Boolean;",
        "isVisible",
        "isVisible$annotations",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)V",
        "accessibilityEquals",
        "Landroidx/compose/ui/semantics/AccessibilityAction;",
        "other",
        "",
        "enabled",
        "excludeLineAndPageGranularities",
        "findById",
        "Landroidx/compose/ui/platform/ScrollObservationScope;",
        "",
        "id",
        "",
        "findClosestParentNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "selector",
        "Lkotlin/Function1;",
        "getAllUncoveredSemanticsNodesToMap",
        "",
        "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
        "Landroidx/compose/ui/semantics/SemanticsOwner;",
        "hasPaneTitle",
        "overlaps",
        "Landroidx/compose/ui/platform/OpenEndRange;",
        "it",
        "propertiesDeleted",
        "oldNode",
        "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;",
        "rangeUntil",
        "that",
        "semanticsIdToView",
        "Landroid/view/View;",
        "Landroidx/compose/ui/platform/AndroidViewsHandler;",
        "toLegacyClassName",
        "Landroidx/compose/ui/semantics/Role;",
        "toLegacyClassName-V4PA4sw",
        "(I)Ljava/lang/String;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$accessibilityEquals(Landroidx/compose/ui/semantics/AccessibilityAction;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->accessibilityEquals(Landroidx/compose/ui/semantics/AccessibilityAction;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$excludeLineAndPageGranularities(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->excludeLineAndPageGranularities(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getGetTraversalIndex(Landroidx/compose/ui/semantics/SemanticsNode;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getGetTraversalIndex(Landroidx/compose/ui/semantics/SemanticsNode;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInfoContentDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getInfoContentDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hasPaneTitle(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->hasPaneTitle(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPassword(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isPassword(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTextField(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isTextField(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isVisible(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isVisible(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$overlaps(Landroidx/compose/ui/platform/OpenEndRange;Landroidx/compose/ui/platform/OpenEndRange;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->overlaps(Landroidx/compose/ui/platform/OpenEndRange;Landroidx/compose/ui/platform/OpenEndRange;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$propertiesDeleted(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->propertiesDeleted(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$toLegacyClassName-V4PA4sw(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final accessibilityEquals(Landroidx/compose/ui/semantics/AccessibilityAction;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/AccessibilityAction<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 3330
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3332
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 3333
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 3334
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private static final enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 3278
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getDisabled()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final excludeLineAndPageGranularities(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 4

    .line 3315
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isTextField(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3318
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3325
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final findById(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;I)",
            "Landroidx/compose/ui/platform/ScrollObservationScope;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3467
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3468
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/ScrollObservationScope;->getSemanticsNodeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 3469
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/ScrollObservationScope;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 183
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getAllUncoveredSemanticsNodesToMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/SemanticsOwner;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3354
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    .line 3355
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 3356
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3359
    :cond_0
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 3361
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 3362
    new-instance v3, Landroid/graphics/Rect;

    .line 3363
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 3364
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    .line 3365
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    .line 3366
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 3362
    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3360
    invoke-virtual {v1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3432
    invoke-static {v1, p0, v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getAllUncoveredSemanticsNodesToMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;Landroidx/compose/ui/semantics/SemanticsNode;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static final getAllUncoveredSemanticsNodesToMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Region;",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;",
            ">;",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ")V"
        }
    .end annotation

    .line 3374
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 3375
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    .line 3376
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui_release()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    .line 3380
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getTouchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 3381
    new-instance v2, Landroid/graphics/Rect;

    .line 3382
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 3383
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 3384
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    .line 3385
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 3381
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3387
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3388
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v3, v4, :cond_5

    move v3, v5

    goto :goto_2

    .line 3391
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    .line 3393
    :goto_2
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p0, v0, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v4

    const-string v6, "region.bounds"

    if-eqz v4, :cond_7

    .line 3394
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p3, v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3399
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object p3

    .line 3400
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ge v5, v0, :cond_6

    .line 3401
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-static {p0, p1, p2, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getAllUncoveredSemanticsNodesToMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/Map;Landroidx/compose/ui/semantics/SemanticsNode;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3403
    :cond_6
    sget-object p1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v2, p0, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_5

    .line 3405
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui_release()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 3406
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 3408
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutInfo;->isPlaced()Z

    move-result p1

    if-ne p1, v1, :cond_8

    .line 3409
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    goto :goto_4

    .line 3411
    :cond_8
    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    const/4 p1, 0x0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p0, p1, p1, v0, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 3408
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3413
    new-instance v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 3415
    new-instance v1, Landroid/graphics/Rect;

    .line 3416
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 3417
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 3418
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 3419
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    .line 3415
    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3413
    invoke-direct {v0, p3, v1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    if-ne v3, v5, :cond_a

    .line 3427
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    return-void
.end method

.method private static final getGetTraversalIndex(Landroidx/compose/ui/semantics/SemanticsNode;)F
    .locals 2

    .line 3303
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3304
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final getInfoContentDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;
    .locals 1

    .line 3309
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    .line 3310
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    .line 3309
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 3310
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final hasPaneTitle(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 3295
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p0

    return p0
.end method

.method private static final isPassword(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 3296
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p0

    return p0
.end method

.method private static final isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 3298
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isTextField(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 3297
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p0

    return p0
.end method

.method private static final isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/Boolean;
    .locals 1

    .line 3300
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final isVisible(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 3282
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isTransparent$ui_release()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getInvisibleToUser()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic isVisible$annotations(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 0

    return-void
.end method

.method private static final overlaps(Landroidx/compose/ui/platform/OpenEndRange;Landroidx/compose/ui/platform/OpenEndRange;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/OpenEndRange<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/platform/OpenEndRange<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 178
    invoke-interface {p0}, Landroidx/compose/ui/platform/OpenEndRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/platform/OpenEndRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/platform/OpenEndRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/platform/OpenEndRange;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/platform/OpenEndRange;->getEndExclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-interface {p1}, Landroidx/compose/ui/platform/OpenEndRange;->getEndExclusive()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final propertiesDeleted(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;)Z
    .locals 2

    .line 3287
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3288
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final rangeUntil(FF)Landroidx/compose/ui/platform/OpenEndRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Landroidx/compose/ui/platform/OpenEndRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Landroidx/compose/ui/platform/OpenEndFloatRange;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/platform/OpenEndFloatRange;-><init>(FF)V

    check-cast v0, Landroidx/compose/ui/platform/OpenEndRange;

    return-object v0
.end method

.method public static final semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3489
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "layoutNodeToHolder.entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 3491
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 3489
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    :cond_2
    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method private static final toLegacyClassName-V4PA4sw(I)Ljava/lang/String;
    .locals 1

    .line 3477
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "android.widget.Button"

    goto :goto_0

    .line 3478
    :cond_0
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getCheckbox-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "android.widget.CheckBox"

    goto :goto_0

    .line 3479
    :cond_1
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getRadioButton-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "android.widget.RadioButton"

    goto :goto_0

    .line 3480
    :cond_2
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getImage-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "android.widget.ImageView"

    goto :goto_0

    .line 3481
    :cond_3
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getDropdownList-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "android.widget.Spinner"

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
