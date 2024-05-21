.class public final Lio/sentry/android/core/internal/util/RootChecker;
.super Ljava/lang/Object;
.source "RootChecker.java"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;

.field private final rootFiles:[Ljava/lang/String;

.field private final rootPackages:[Ljava/lang/String;

.field private final runtime:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 24
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/util/RootChecker;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;)V
    .locals 19

    const-string v0, "/system/app/Superuser.apk"

    const-string v1, "/sbin/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/system/sd/xbin/su"

    const-string v7, "/system/bin/failsafe/su"

    const-string v8, "/data/local/su"

    const-string v9, "/su/bin/su"

    const-string v10, "/su/bin"

    const-string v11, "/system/xbin/daemonsu"

    .line 40
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v16

    const-string v0, "com.devadvance.rootcloak"

    const-string v1, "com.devadvance.rootcloakplus"

    const-string v2, "com.koushikdutta.superuser"

    const-string v3, "com.thirdparty.superuser"

    const-string v4, "eu.chainfire.supersu"

    const-string v5, "com.noshufou.android.su"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v17

    .line 66
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 40
    invoke-direct/range {v12 .. v18}, Lio/sentry/android/core/internal/util/RootChecker;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runtime;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runtime;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The application context is required."

    .line 76
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->context:Landroid/content/Context;

    const-string p1, "The BuildInfoProvider is required."

    .line 78
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string p1, "The Logger is required."

    .line 79
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    const-string p1, "The root Files are required."

    .line 80
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootFiles:[Ljava/lang/String;

    const-string p1, "The root packages are required."

    .line 81
    invoke-static {p5, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootPackages:[Ljava/lang/String;

    const-string p1, "The Runtime is required."

    .line 82
    invoke-static {p6, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runtime;

    iput-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->runtime:Ljava/lang/Runtime;

    return-void
.end method

.method private checkRootFiles()Z
    .locals 9

    iget-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootFiles:[Ljava/lang/String;

    .line 114
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 116
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v5

    iget-object v6, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    .line 120
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "Error when trying to check if root file %s exists."

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v7, v5, v8, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkRootPackages(Lio/sentry/ILogger;)Z
    .locals 7

    .line 163
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v0, p1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    iget-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->context:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/internal/util/RootChecker;->rootPackages:[Ljava/lang/String;

    .line 166
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 168
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_0

    const-wide/16 v5, 0x0

    .line 169
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {p1, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkSUExist()Z
    .locals 6

    const-string v0, "/system/xbin/which"

    const-string v1, "su"

    .line 134
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lio/sentry/android/core/internal/util/RootChecker;->runtime:Ljava/lang/Runtime;

    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 139
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Lio/sentry/android/core/internal/util/RootChecker;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 141
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 142
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_1
    return v3

    :catchall_0
    move-exception v3

    .line 139
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_5
    iget-object p0, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    .line 146
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Error when trying to check if SU exists."

    invoke-interface {p0, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    .line 149
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    :catch_0
    :try_start_6
    iget-object p0, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    .line 144
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "SU isn\'t found on this Device."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_3
    return v1

    :catchall_3
    move-exception p0

    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 151
    :cond_3
    throw p0
.end method

.method private checkTestKeys()Z
    .locals 1

    iget-object p0, p0, Lio/sentry/android/core/internal/util/RootChecker;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 103
    invoke-virtual {p0}, Lio/sentry/android/core/BuildInfoProvider;->getBuildTags()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "test-keys"

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isDeviceRooted()Z
    .locals 1

    .line 92
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/RootChecker;->checkTestKeys()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/sentry/android/core/internal/util/RootChecker;->checkRootFiles()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/sentry/android/core/internal/util/RootChecker;->checkSUExist()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->logger:Lio/sentry/ILogger;

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/RootChecker;->checkRootPackages(Lio/sentry/ILogger;)Z

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
