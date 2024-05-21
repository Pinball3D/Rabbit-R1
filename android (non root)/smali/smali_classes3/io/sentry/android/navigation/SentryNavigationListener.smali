.class public final Lio/sentry/android/navigation/SentryNavigationListener;
.super Ljava/lang/Object;
.source "SentryNavigationListener.kt"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/navigation/SentryNavigationListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryNavigationListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryNavigationListener.kt\nio/sentry/android/navigation/SentryNavigationListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1#2:192\n764#3:193\n855#3,2:194\n1269#3,2:196\n1283#3,4:198\n*S KotlinDebug\n*F\n+ 1 SentryNavigationListener.kt\nio/sentry/android/navigation/SentryNavigationListener\n*L\n182#1:193\n182#1:194,2\n184#1:196,2\n184#1:198,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB1\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017H\u0002J\"\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0016J.\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00122\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017H\u0002J\u0008\u0010\u001d\u001a\u00020\u0014H\u0002J\u001c\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017*\u0004\u0018\u00010\u000fH\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lio/sentry/android/navigation/SentryNavigationListener;",
        "Landroidx/navigation/NavController$OnDestinationChangedListener;",
        "hub",
        "Lio/sentry/IHub;",
        "enableNavigationBreadcrumbs",
        "",
        "enableNavigationTracing",
        "traceOriginAppendix",
        "",
        "(Lio/sentry/IHub;ZZLjava/lang/String;)V",
        "activeTransaction",
        "Lio/sentry/ITransaction;",
        "isPerformanceEnabled",
        "()Z",
        "previousArgs",
        "Landroid/os/Bundle;",
        "previousDestinationRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/navigation/NavDestination;",
        "addBreadcrumb",
        "",
        "destination",
        "arguments",
        "",
        "",
        "onDestinationChanged",
        "controller",
        "Landroidx/navigation/NavController;",
        "startTracing",
        "stopTracing",
        "refined",
        "Companion",
        "sentry-android-navigation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/sentry/android/navigation/SentryNavigationListener$Companion;

.field public static final NAVIGATION_OP:Ljava/lang/String; = "navigation"


# instance fields
.field private activeTransaction:Lio/sentry/ITransaction;

.field private final enableNavigationBreadcrumbs:Z

.field private final enableNavigationTracing:Z

.field private final hub:Lio/sentry/IHub;

.field private previousArgs:Landroid/os/Bundle;

.field private previousDestinationRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field

.field private final traceOriginAppendix:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$BUXQGWKXtmZ82NoTNns603AxyB4(Lio/sentry/android/navigation/SentryNavigationListener;Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/navigation/SentryNavigationListener;->stopTracing$lambda$8$lambda$7(Lio/sentry/android/navigation/SentryNavigationListener;Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GKI1AQemXQ9tPVzv6EBx7Sj4YEw(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/navigation/SentryNavigationListener;->startTracing$lambda$6$lambda$5(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pKKkiT6cRvX61QFGB_swSjnxj2Y(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/navigation/SentryNavigationListener;->startTracing$lambda$6(Lio/sentry/ITransaction;Lio/sentry/IScope;)V

    return-void
.end method

.method public static synthetic $r8$lambda$znrL4Vn7vSQh1v3YP8x_o4o-9fo(Lio/sentry/android/navigation/SentryNavigationListener;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/navigation/SentryNavigationListener;->stopTracing$lambda$8(Lio/sentry/android/navigation/SentryNavigationListener;Lio/sentry/IScope;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/navigation/SentryNavigationListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/navigation/SentryNavigationListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/navigation/SentryNavigationListener;->Companion:Lio/sentry/android/navigation/SentryNavigationListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/sentry/android/navigation/SentryNavigationListener;-><init>(Lio/sentry/IHub;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;)V
    .locals 8

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/sentry/android/navigation/SentryNavigationListener;-><init>(Lio/sentry/IHub;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Z)V
    .locals 8

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lio/sentry/android/navigation/SentryNavigationListener;-><init>(Lio/sentry/IHub;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;ZZ)V
    .locals 8

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lio/sentry/android/navigation/SentryNavigationListener;-><init>(Lio/sentry/IHub;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;ZZLjava/lang/String;)V
    .locals 1

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    iput-boolean p2, p0, Lio/sentry/android/navigation/SentryNavigationListener;->enableNavigationBreadcrumbs:Z

    iput-boolean p3, p0, Lio/sentry/android/navigation/SentryNavigationListener;->enableNavigationTracing:Z

    iput-object p4, p0, Lio/sentry/android/navigation/SentryNavigationListener;->traceOriginAppendix:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    .line 52
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "maven:io.sentry:sentry-android-navigation"

    const-string p2, "7.4.0"

    .line 53
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 37
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p6, "getInstance()"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 36
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/navigation/SentryNavigationListener;-><init>(Lio/sentry/IHub;ZZLjava/lang/String;)V

    return-void
.end method

.method private final addBreadcrumb(Landroidx/navigation/NavDestination;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->enableNavigationBreadcrumbs:Z

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "navigation"

    .line 74
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->previousDestinationRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "/"

    const-string v3, "data"

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "from"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->previousArgs:Landroid/os/Bundle;

    .line 79
    invoke-direct {p0, v1}, Lio/sentry/android/navigation/SentryNavigationListener;->refined(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "from_arguments"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_3
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 85
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "to"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "to_arguments"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_5
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p2}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 92
    new-instance p2, Lio/sentry/Hint;

    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    const-string v1, "android:navigationDestination"

    .line 93
    invoke-virtual {p2, v1, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 94
    invoke-interface {p0, v0, p2}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method private final isPerformanceEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 46
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->enableNavigationTracing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final refined(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "args.keySet()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 194
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v3, "android-support-nav:controller:deepLinkIntent"

    .line 183
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 193
    check-cast v0, Ljava/lang/Iterable;

    .line 196
    new-instance p0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 199
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 199
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :cond_2
    check-cast p0, Ljava/util/Map;

    goto :goto_2

    .line 185
    :cond_3
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private final startTracing(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController;",
            "Landroidx/navigation/NavDestination;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lio/sentry/android/navigation/SentryNavigationListener;->isPerformanceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 103
    invoke-static {p0}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IHub;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->activeTransaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0}, Lio/sentry/android/navigation/SentryNavigationListener;->stopTracing()V

    .line 112
    :cond_1
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 114
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    .line 115
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "Navigating to activity destination, no transaction captured."

    new-array p3, v1, [Ljava/lang/Object;

    .line 114
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_2
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 125
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    .line 126
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "Destination id cannot be retrieved from Resources, no transaction captured."

    new-array p3, v1, [Ljava/lang/Object;

    .line 125
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "name"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x2f

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance p2, Lio/sentry/TransactionOptions;

    invoke-direct {p2}, Lio/sentry/TransactionOptions;-><init>()V

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p2, v0}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    iget-object v1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 137
    invoke-interface {v1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    const-wide/32 v1, 0x493e0

    .line 138
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/sentry/TransactionOptions;->setDeadlineTimeout(Ljava/lang/Long;)V

    .line 139
    invoke-virtual {p2, v0}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    iget-object v1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 143
    new-instance v2, Lio/sentry/TransactionContext;

    sget-object v3, Lio/sentry/protocol/TransactionNameSource;->ROUTE:Lio/sentry/protocol/TransactionNameSource;

    const-string v4, "navigation"

    invoke-direct {v2, p1, v3, v4}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V

    .line 142
    invoke-interface {v1, v2, p2}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p1

    const-string p2, "hub.startTransaction(\n  \u2026nsactionOptions\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p2

    iget-object v1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->traceOriginAppendix:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auto.navigation."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/android/navigation/SentryNavigationListener;->traceOriginAppendix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "auto.navigation"

    .line 147
    :cond_5
    invoke-virtual {p2, v1}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    .line 151
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_6

    const-string p2, "arguments"

    .line 152
    invoke-interface {p1, p2, p3}, Lio/sentry/ITransaction;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object p2, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 154
    new-instance p3, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ITransaction;)V

    invoke-interface {p2, p3}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    iput-object p1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->activeTransaction:Lio/sentry/ITransaction;

    return-void
.end method

.method private static final startTracing$lambda$6(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 1

    const-string v0, "$transaction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda2;-><init>(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method private static final startTracing$lambda$6$lambda$5(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 1

    const-string v0, "$scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 157
    invoke-interface {p0, p1}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    :cond_0
    return-void
.end method

.method private final stopTracing()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->activeTransaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lio/sentry/ITransaction;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    :cond_1
    const-string v1, "activeTransaction?.status ?: SpanStatus.OK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->activeTransaction:Lio/sentry/ITransaction;

    if-eqz v1, :cond_2

    .line 166
    invoke-interface {v1, v0}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    :cond_2
    iget-object v0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->hub:Lio/sentry/IHub;

    .line 169
    new-instance v1, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/navigation/SentryNavigationListener;)V

    invoke-interface {v0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->activeTransaction:Lio/sentry/ITransaction;

    return-void
.end method

.method private static final stopTracing$lambda$8(Lio/sentry/android/navigation/SentryNavigationListener;Lio/sentry/IScope;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/navigation/SentryNavigationListener$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/navigation/SentryNavigationListener;Lio/sentry/IScope;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method private static final stopTracing$lambda$8$lambda$7(Lio/sentry/android/navigation/SentryNavigationListener;Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lio/sentry/android/navigation/SentryNavigationListener;->activeTransaction:Lio/sentry/ITransaction;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 172
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p3}, Lio/sentry/android/navigation/SentryNavigationListener;->refined(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    .line 63
    invoke-direct {p0, p2, v0}, Lio/sentry/android/navigation/SentryNavigationListener;->addBreadcrumb(Landroidx/navigation/NavDestination;Ljava/util/Map;)V

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/navigation/SentryNavigationListener;->startTracing(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Ljava/util/Map;)V

    .line 65
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/sentry/android/navigation/SentryNavigationListener;->previousDestinationRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lio/sentry/android/navigation/SentryNavigationListener;->previousArgs:Landroid/os/Bundle;

    return-void
.end method
