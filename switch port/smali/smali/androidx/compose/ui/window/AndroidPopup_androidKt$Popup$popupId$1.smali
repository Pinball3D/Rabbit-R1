.class final Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidPopup.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/UUID;",
        "kotlin.jvm.PlatformType",
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
.field public static final INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;

    invoke-direct {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;

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

    .line 234
    invoke-virtual {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;->invoke()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/UUID;
    .locals 0

    .line 234
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
