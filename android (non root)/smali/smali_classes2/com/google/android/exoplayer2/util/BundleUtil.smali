.class public final Lcom/google/android/exoplayer2/util/BundleUtil;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleUtil"

.field private static getIBinderMethod:Ljava/lang/reflect/Method;

.field private static putIBinderMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 41
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/BundleUtil;->getBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method private static getBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8

    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->getIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "BundleUtil"

    if-nez v0, :cond_0

    .line 70
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->getIBinderMethod:Ljava/lang/reflect/Method;

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->getIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to retrieve getIBinder method"

    .line 73
    invoke-static {v2, p1, p0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 80
    :cond_0
    :goto_0
    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "Failed to invoke getIBinder via reflection"

    .line 82
    invoke-static {v2, p1, p0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 56
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/BundleUtil;->putBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method

.method private static putBinderByReflection(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 6

    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->putIBinderMethod:Ljava/lang/reflect/Method;

    const-string v1, "BundleUtil"

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v2, "putIBinder"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->putIBinderMethod:Ljava/lang/reflect/Method;

    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/exoplayer2/util/BundleUtil;->putIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to retrieve putIBinder method"

    .line 97
    invoke-static {v1, p1, p0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 104
    :cond_0
    :goto_0
    :try_start_1
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Failed to invoke putIBinder via reflection"

    .line 106
    invoke-static {v1, p1, p0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
