.class public final Landroidx/compose/runtime/tooling/InspectionTablesKt;
.super Ljava/lang/Object;
.source "InspectionTables.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u001f\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "LocalInspectionTables",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "getLocalInspectionTables",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LocalInspectionTables:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt$LocalInspectionTables$1;->INSTANCE:Landroidx/compose/runtime/tooling/InspectionTablesKt$LocalInspectionTables$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalInspectionTables()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
