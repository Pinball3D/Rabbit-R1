.class public final Lio/sentry/android/core/internal/gestures/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findTarget(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;
    .locals 5

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 39
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 43
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v2, "view is required"

    invoke-static {v1, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 45
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 46
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 48
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getGestureTargetLocators()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/internal/gestures/GestureTargetLocator;

    .line 53
    invoke-interface {v3, v1, p2, p3, p4}, Lio/sentry/internal/gestures/GestureTargetLocator;->locate(Ljava/lang/Object;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 55
    sget-object p1, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne p4, p1, :cond_3

    move-object p1, v3

    goto :goto_1

    :cond_3
    return-object v3

    :cond_4
    return-object p1
.end method

.method public static getResourceId(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 92
    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/ViewUtils;->isViewIdGenerated(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    .line 93
    :cond_1
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
.end method

.method static getResourceIdWithFallback(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 76
    :try_start_0
    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/ViewUtils;->getResourceId(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 79
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isViewIdGenerated(I)Z
    .locals 1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
