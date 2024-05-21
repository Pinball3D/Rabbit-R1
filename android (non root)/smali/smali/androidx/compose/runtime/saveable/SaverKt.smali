.class public final Landroidx/compose/runtime/saveable/SaverKt;
.super Ljava/lang/Object;
.source "Saver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aw\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0001\"\u0004\u0008\u0000\u0010\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00022.\u0010\u0006\u001a*\u0012\u0004\u0012\u00020\u0008\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\u0007\u00a2\u0006\u0002\u0008\u000c2#\u0010\r\u001a\u001f\u0012\u0013\u0012\u0011H\u0005\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0006\u0012\u0004\u0018\u0001H\u00040\u000e\u001a\u0018\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\u0008\u0000\u0010\u0010\"\u001c\u0010\u0000\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "AutoSaver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "",
        "Saver",
        "Original",
        "Saveable",
        "save",
        "Lkotlin/Function2;",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "Lkotlin/ExtensionFunctionType;",
        "restore",
        "Lkotlin/Function1;",
        "autoSaver",
        "T",
        "runtime-saveable_release"
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
.field private static final AutoSaver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public static final Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Original:",
            "Ljava/lang/Object;",
            "Saveable:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/saveable/SaverScope;",
            "-TOriginal;+TSaveable;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TSaveable;+TOriginal;>;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TOriginal;TSaveable;>;"
        }
    .end annotation

    const-string/jumbo v0, "save"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final autoSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/compose/runtime/saveable/Saver;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.SaverKt.autoSaver, kotlin.Any>"

    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
