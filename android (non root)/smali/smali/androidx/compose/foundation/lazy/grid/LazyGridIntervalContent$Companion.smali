.class final Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$Companion;
.super Ljava/lang/Object;
.source "LazyGridIntervalContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R+\u0010\u0003\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004\u00a2\u0006\u0002\u0008\u0008\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$Companion;",
        "",
        "()V",
        "DefaultSpan",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
        "",
        "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
        "Lkotlin/ExtensionFunctionType;",
        "getDefaultSpan",
        "()Lkotlin/jvm/functions/Function2;",
        "foundation_release"
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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultSpan()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->access$getDefaultSpan$cp()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    return-object p0
.end method
