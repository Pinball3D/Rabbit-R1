.class final Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3;->invoke-eopBjH0(FJJFFLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/geometry/Size;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# instance fields
.field final synthetic $labelProgress:F

.field final synthetic $labelSize:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(FLandroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelProgress:F

    iput-object p2, p0, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelSize:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 253
    check-cast p1, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->invoke-uvyYCjk(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-uvyYCjk(J)V
    .locals 3

    .line 254
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    iget v1, p0, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelProgress:F

    mul-float/2addr v0, v1

    .line 255
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    iget p2, p0, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelProgress:F

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelSize:Landroidx/compose/runtime/MutableState;

    .line 256
    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    cmpg-float p2, p2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelSize:Landroidx/compose/runtime/MutableState;

    .line 257
    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    cmpg-float p2, p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelSize:Landroidx/compose/runtime/MutableState;

    .line 259
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
