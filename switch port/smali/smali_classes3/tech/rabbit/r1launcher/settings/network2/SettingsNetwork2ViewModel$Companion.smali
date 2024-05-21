.class public final Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;
.super Ljava/lang/Object;
.source "SettingsNetwork2ViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;",
        "",
        "()V",
        "provideFactory",
        "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;",
        "application",
        "Landroid/app/Application;",
        "owner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideFactory(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
    .locals 0

    const-string p0, "application"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "owner"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion$provideFactory$1;

    invoke-direct {p0, p2, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion$provideFactory$1;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/app/Application;)V

    check-cast p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;

    return-object p0
.end method
