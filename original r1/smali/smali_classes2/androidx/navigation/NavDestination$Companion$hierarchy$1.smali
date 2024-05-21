.class final Landroidx/navigation/NavDestination$Companion$hierarchy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavDestination.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/NavDestination;",
        "Landroidx/navigation/NavDestination;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/NavDestination;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/navigation/NavDestination$Companion$hierarchy$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/navigation/NavDestination$Companion$hierarchy$1;

    invoke-direct {v0}, Landroidx/navigation/NavDestination$Companion$hierarchy$1;-><init>()V

    sput-object v0, Landroidx/navigation/NavDestination$Companion$hierarchy$1;->INSTANCE:Landroidx/navigation/NavDestination$Companion$hierarchy$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 826
    check-cast p1, Landroidx/navigation/NavDestination;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination$Companion$hierarchy$1;->invoke(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method
