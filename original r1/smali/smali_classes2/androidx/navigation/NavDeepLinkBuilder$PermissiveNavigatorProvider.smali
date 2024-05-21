.class final Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;
.super Landroidx/navigation/NavigatorProvider;
.source "NavDeepLinkBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLinkBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissiveNavigatorProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\'\u0010\u0006\u001a\u0002H\u0007\"\u0010\u0008\u0000\u0010\u0007*\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\nR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;",
        "Landroidx/navigation/NavigatorProvider;",
        "()V",
        "mDestNavigator",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/NavDestination;",
        "getNavigator",
        "T",
        "name",
        "",
        "(Ljava/lang/String;)Landroidx/navigation/Navigator;",
        "navigation-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mDestNavigator:Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/Navigator<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 368
    invoke-direct {p0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    .line 373
    new-instance v0, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1;

    invoke-direct {v0}, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1;-><init>()V

    check-cast v0, Landroidx/navigation/Navigator;

    iput-object v0, p0, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;->mDestNavigator:Landroidx/navigation/Navigator;

    .line 402
    new-instance v0, Landroidx/navigation/NavGraphNavigator;

    move-object v1, p0

    check-cast v1, Landroidx/navigation/NavigatorProvider;

    invoke-direct {v0, v1}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    check-cast v0, Landroidx/navigation/Navigator;

    invoke-virtual {p0, v0}, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    return-void
.end method


# virtual methods
.method public getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;>(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    :try_start_0
    invoke-super {p0, p1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;->mDestNavigator:Landroidx/navigation/Navigator;

    const-string p1, "null cannot be cast to non-null type T of androidx.navigation.NavDeepLinkBuilder.PermissiveNavigatorProvider.getNavigator"

    .line 397
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
