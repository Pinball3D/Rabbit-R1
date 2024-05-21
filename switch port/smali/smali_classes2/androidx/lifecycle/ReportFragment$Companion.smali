.class public final Landroidx/lifecycle/ReportFragment$Companion;
.super Ljava/lang/Object;
.source "ReportFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0001\u00a2\u0006\u0002\u0008\u0011J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00020\u0006*\u00020\u00078GX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/lifecycle/ReportFragment$Companion;",
        "",
        "()V",
        "REPORT_FRAGMENT_TAG",
        "",
        "reportFragment",
        "Landroidx/lifecycle/ReportFragment;",
        "Landroid/app/Activity;",
        "get$annotations",
        "(Landroid/app/Activity;)V",
        "get",
        "(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;",
        "dispatch",
        "",
        "activity",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "dispatch$lifecycle_runtime_release",
        "injectIfNeededIn",
        "lifecycle-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ReportFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic get$annotations(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final dispatch$lifecycle_runtime_release(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "event"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    instance-of p0, p1, Landroidx/lifecycle/LifecycleRegistryOwner;

    if-eqz p0, :cond_0

    .line 186
    check-cast p1, Landroidx/lifecycle/LifecycleRegistryOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    .line 189
    :cond_0
    instance-of p0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p0, :cond_1

    .line 190
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    .line 191
    instance-of p1, p0, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz p1, :cond_1

    .line 192
    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void
.end method

.method public final get(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/lifecycle/ReportFragment;

    return-object p0
.end method

.method public final injectIfNeededIn(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object p0, Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;->Companion:Landroidx/lifecycle/ReportFragment$LifecycleCallbacks$Companion;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ReportFragment$LifecycleCallbacks$Companion;->registerIn(Landroid/app/Activity;)V

    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 176
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ReportFragment;

    invoke-direct {v1}, Landroidx/lifecycle/ReportFragment;-><init>()V

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 179
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method
