.class public interface abstract Landroidx/compose/ui/layout/LookaheadLayoutScope;
.super Ljava/lang/Object;
.source "LookaheadScope.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "LookaheadLayoutScope has been renamed to LookaheadScope"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "LookaheadScope"
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001JD\u0010\u0002\u001a\u00020\u0003*\u00020\u000326\u0010\u0002\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0004H\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/layout/LookaheadLayoutScope;",
        "",
        "onPlaced",
        "Landroidx/compose/ui/Modifier;",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;",
        "Lkotlin/ParameterName;",
        "name",
        "lookaheadScopeCoordinates",
        "layoutCoordinates",
        "",
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


# virtual methods
.method public abstract onPlaced(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;",
            "-",
            "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "onPlaced in LookaheadLayoutScope has been deprecated. It\'s replaced with reading LookaheadLayoutCoordinates directly during placement in IntermediateMeasureScope. See example below."
    .end annotation
.end method
