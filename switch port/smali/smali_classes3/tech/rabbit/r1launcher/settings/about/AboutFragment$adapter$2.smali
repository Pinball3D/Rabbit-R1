.class final Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AboutFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/about/AboutFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "tech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1",
        "invoke",
        "()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;

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

    .line 30
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2;->invoke()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;
    .locals 1

    .line 31
    sget p0, Ltech/rabbit/r1launcher/R$layout;->item_about_info:I

    new-instance v0, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/about/AboutFragment$adapter$2$1;-><init>(I)V

    return-object v0
.end method
