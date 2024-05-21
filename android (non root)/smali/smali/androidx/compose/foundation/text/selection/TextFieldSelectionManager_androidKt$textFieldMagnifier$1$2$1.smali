.class final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldSelectionManager.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Landroidx/compose/ui/geometry/Offset;",
        ">;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "center",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/geometry/Offset;",
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


# instance fields
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $magnifierSize$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1;->$magnifierSize$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "center"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    sget-object v1, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/MagnifierStyle$Companion;->getTextDefault()Landroidx/compose/foundation/MagnifierStyle;

    move-result-object v6

    .line 52
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier;

    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1;->$magnifierSize$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/MagnifierKt;->magnifier$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/MagnifierStyle;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1;->invoke(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
