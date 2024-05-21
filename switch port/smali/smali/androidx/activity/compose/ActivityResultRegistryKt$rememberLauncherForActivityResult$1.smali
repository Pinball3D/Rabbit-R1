.class final Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityResultRegistry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/ActivityResultRegistryKt;->rememberLauncherForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,161:1\n62#2,5:162\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1\n*L\n108#1:162,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "I",
        "O",
        "Landroidx/compose/runtime/DisposableEffectScope;",
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
.field final synthetic $activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

.field final synthetic $contract:Landroidx/activity/result/contract/ActivityResultContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field final synthetic $currentOnResult:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "TO;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $realLauncher:Landroidx/activity/compose/ActivityResultLauncherHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/compose/ActivityResultLauncherHolder<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CrhP0xb3HsgP_dLwJEFAtzTwPms(Landroidx/compose/runtime/State;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->invoke$lambda$0(Landroidx/compose/runtime/State;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/compose/ActivityResultLauncherHolder<",
            "TI;>;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Ljava/lang/String;",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TO;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$realLauncher:Landroidx/activity/compose/ActivityResultLauncherHolder;

    iput-object p2, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p3, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$key:Ljava/lang/String;

    iput-object p4, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iput-object p5, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$currentOnResult:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/compose/runtime/State;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 5

    iget-object p1, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$realLauncher:Landroidx/activity/compose/ActivityResultLauncherHolder;

    iget-object v0, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iget-object v3, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$currentOnResult:Landroidx/compose/runtime/State;

    .line 105
    new-instance v4, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;)V

    invoke-virtual {v0, v1, v2, v4}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/activity/compose/ActivityResultLauncherHolder;->setLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    iget-object p0, p0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->$realLauncher:Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 162
    new-instance p1, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;)V

    check-cast p1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
