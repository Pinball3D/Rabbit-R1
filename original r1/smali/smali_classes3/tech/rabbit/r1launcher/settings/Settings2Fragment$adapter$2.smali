.class final synthetic Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Settings2Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/Settings2Fragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/rabbit/r1launcher/settings/SettingsAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-class v2, Ltech/rabbit/r1launcher/settings/SettingsAdapter;

    const-string v3, "<init>"

    const-string v4, "<init>()V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/Settings2Fragment$adapter$2;->invoke()Ltech/rabbit/r1launcher/settings/SettingsAdapter;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ltech/rabbit/r1launcher/settings/SettingsAdapter;
    .locals 0

    .line 22
    new-instance p0, Ltech/rabbit/r1launcher/settings/SettingsAdapter;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/SettingsAdapter;-><init>()V

    return-object p0
.end method
