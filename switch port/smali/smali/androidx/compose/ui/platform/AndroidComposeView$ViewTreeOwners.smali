.class public final Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewTreeOwners"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "savedStateRegistryOwner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "getSavedStateRegistryOwner",
        "()Landroidx/savedstate/SavedStateRegistryOwner;",
        "ui_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "savedStateRegistryOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-void
.end method


# virtual methods
.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public final getSavedStateRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-object p0
.end method
