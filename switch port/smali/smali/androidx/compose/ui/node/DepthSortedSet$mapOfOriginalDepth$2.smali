.class final Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DepthSortedSet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/DepthSortedSet;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Landroidx/compose/ui/node/LayoutNode;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/node/LayoutNode;",
        "",
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
.field public static final INSTANCE:Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;

    invoke-direct {v0}, Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;->INSTANCE:Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/node/DepthSortedSet$mapOfOriginalDepth$2;->invoke()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
