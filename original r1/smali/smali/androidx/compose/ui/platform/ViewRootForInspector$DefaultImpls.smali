.class public final Landroidx/compose/ui/platform/ViewRootForInspector$DefaultImpls;
.super Ljava/lang/Object;
.source "ViewRootForInspector.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewRootForInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getSubCompositionView(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-static {p0}, Landroidx/compose/ui/platform/ViewRootForInspector;->access$getSubCompositionView$jd(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroidx/compose/ui/platform/AbstractComposeView;

    move-result-object p0

    return-object p0
.end method

.method public static getViewRoot(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-static {p0}, Landroidx/compose/ui/platform/ViewRootForInspector;->access$getViewRoot$jd(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
