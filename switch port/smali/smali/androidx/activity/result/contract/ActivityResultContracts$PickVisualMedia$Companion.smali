.class public final Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;
.super Ljava/lang/Object;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u000eJ\u0017\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u0010J\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J\u0015\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u0017J\u0008\u0010\u0018\u001a\u00020\u0016H\u0007J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0015\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u001aJ\r\u0010\u001b\u001a\u00020\u0016H\u0001\u00a2\u0006\u0002\u0008\u001cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u0014\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002R\u000e\u0010\u0008\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;",
        "",
        "()V",
        "ACTION_SYSTEM_FALLBACK_PICK_IMAGES",
        "",
        "getACTION_SYSTEM_FALLBACK_PICK_IMAGES$annotations",
        "EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX",
        "getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX$annotations",
        "GMS_ACTION_PICK_IMAGES",
        "GMS_EXTRA_PICK_IMAGES_MAX",
        "getGmsPicker",
        "Landroid/content/pm/ResolveInfo;",
        "context",
        "Landroid/content/Context;",
        "getGmsPicker$activity_release",
        "getSystemFallbackPicker",
        "getSystemFallbackPicker$activity_release",
        "getVisualMimeType",
        "input",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;",
        "getVisualMimeType$activity_release",
        "isGmsPickerAvailable",
        "",
        "isGmsPickerAvailable$activity_release",
        "isPhotoPickerAvailable",
        "isSystemFallbackPickerAvailable",
        "isSystemFallbackPickerAvailable$activity_release",
        "isSystemPickerAvailable",
        "isSystemPickerAvailable$activity_release",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getACTION_SYSTEM_FALLBACK_PICK_IMAGES$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getGmsPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 751
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.provider.action.PICK_IMAGES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x110000

    .line 750
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemFallbackPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 737
    new-instance p1, Landroid/content/Intent;

    const-string v0, "androidx.activity.result.contract.action.PICK_IMAGES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x110000

    .line 736
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getVisualMimeType$activity_release(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Ljava/lang/String;
    .locals 0

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    instance-of p0, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    if-eqz p0, :cond_0

    const-string p0, "image/*"

    goto :goto_0

    .line 759
    :cond_0
    instance-of p0, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;

    if-eqz p0, :cond_1

    const-string/jumbo p0, "video/*"

    goto :goto_0

    .line 760
    :cond_1
    instance-of p0, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$SingleMimeType;

    if-eqz p0, :cond_2

    check-cast p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$SingleMimeType;

    invoke-virtual {p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$SingleMimeType;->getMimeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 761
    :cond_2
    instance-of p0, p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final isGmsPickerAvailable$activity_release(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->getGmsPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPhotoPickerAvailable()Z
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This method is deprecated in favor of isPhotoPickerAvailable(context) to support the picker provided by updatable system apps"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isPhotoPickerAvailable(context)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 656
    invoke-virtual {p0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isSystemPickerAvailable$activity_release()Z

    move-result p0

    return p0
.end method

.method public final isPhotoPickerAvailable(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isSystemPickerAvailable$activity_release()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isSystemFallbackPickerAvailable$activity_release(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isGmsPickerAvailable$activity_release(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSystemFallbackPickerAvailable$activity_release(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->getSystemFallbackPicker$activity_release(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSystemPickerAvailable$activity_release()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1e

    .line 722
    invoke-static {p0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
