.class public Lio/flutter/embedding/engine/FlutterShellArgs;
.super Ljava/lang/Object;
.source "FlutterShellArgs.java"


# static fields
.field public static final ARG_CACHE_SKSL:Ljava/lang/String; = "--cache-sksl"

.field public static final ARG_DART_FLAGS:Ljava/lang/String; = "--dart-flags"

.field public static final ARG_DISABLE_SERVICE_AUTH_CODES:Ljava/lang/String; = "--disable-service-auth-codes"

.field public static final ARG_DUMP_SHADER_SKP_ON_SHADER_COMPILATION:Ljava/lang/String; = "--dump-skp-on-shader-compilation"

.field public static final ARG_ENABLE_DART_PROFILING:Ljava/lang/String; = "--enable-dart-profiling"

.field public static final ARG_ENABLE_IMPELLER:Ljava/lang/String; = "--enable-impeller"

.field public static final ARG_ENABLE_SOFTWARE_RENDERING:Ljava/lang/String; = "--enable-software-rendering"

.field public static final ARG_ENABLE_VULKAN_VALIDATION:Ljava/lang/String; = "--enable-vulkan-validation"

.field public static final ARG_ENDLESS_TRACE_BUFFER:Ljava/lang/String; = "--endless-trace-buffer"

.field public static final ARG_KEY_CACHE_SKSL:Ljava/lang/String; = "cache-sksl"

.field public static final ARG_KEY_DART_FLAGS:Ljava/lang/String; = "dart-flags"

.field public static final ARG_KEY_DISABLE_SERVICE_AUTH_CODES:Ljava/lang/String; = "disable-service-auth-codes"

.field public static final ARG_KEY_DUMP_SHADER_SKP_ON_SHADER_COMPILATION:Ljava/lang/String; = "dump-skp-on-shader-compilation"

.field public static final ARG_KEY_ENABLE_DART_PROFILING:Ljava/lang/String; = "enable-dart-profiling"

.field public static final ARG_KEY_ENABLE_IMPELLER:Ljava/lang/String; = "enable-impeller"

.field public static final ARG_KEY_ENABLE_SOFTWARE_RENDERING:Ljava/lang/String; = "enable-software-rendering"

.field public static final ARG_KEY_ENABLE_VULKAN_VALIDATION:Ljava/lang/String; = "enable-vulkan-validation"

.field public static final ARG_KEY_ENDLESS_TRACE_BUFFER:Ljava/lang/String; = "endless-trace-buffer"

.field public static final ARG_KEY_MSAA_SAMPLES:Ljava/lang/String; = "msaa-samples"

.field public static final ARG_KEY_OBSERVATORY_PORT:Ljava/lang/String; = "observatory-port"

.field public static final ARG_KEY_PURGE_PERSISTENT_CACHE:Ljava/lang/String; = "purge-persistent-cache"

.field public static final ARG_KEY_SKIA_DETERMINISTIC_RENDERING:Ljava/lang/String; = "skia-deterministic-rendering"

.field public static final ARG_KEY_START_PAUSED:Ljava/lang/String; = "start-paused"

.field public static final ARG_KEY_TRACE_SKIA:Ljava/lang/String; = "trace-skia"

.field public static final ARG_KEY_TRACE_SKIA_ALLOWLIST:Ljava/lang/String; = "trace-skia-allowlist"

.field public static final ARG_KEY_TRACE_STARTUP:Ljava/lang/String; = "trace-startup"

.field public static final ARG_KEY_TRACE_SYSTRACE:Ljava/lang/String; = "trace-systrace"

.field public static final ARG_KEY_TRACE_TO_FILE:Ljava/lang/String; = "trace-to-file"

.field public static final ARG_KEY_USE_TEST_FONTS:Ljava/lang/String; = "use-test-fonts"

.field public static final ARG_KEY_VERBOSE_LOGGING:Ljava/lang/String; = "verbose-logging"

.field public static final ARG_KEY_VM_SERVICE_PORT:Ljava/lang/String; = "vm-service-port"

.field public static final ARG_MSAA_SAMPLES:Ljava/lang/String; = "--msaa-samples"

.field public static final ARG_PURGE_PERSISTENT_CACHE:Ljava/lang/String; = "--purge-persistent-cache"

.field public static final ARG_SKIA_DETERMINISTIC_RENDERING:Ljava/lang/String; = "--skia-deterministic-rendering"

.field public static final ARG_START_PAUSED:Ljava/lang/String; = "--start-paused"

.field public static final ARG_TRACE_SKIA:Ljava/lang/String; = "--trace-skia"

.field public static final ARG_TRACE_SKIA_ALLOWLIST:Ljava/lang/String; = "--trace-skia-allowlist="

.field public static final ARG_TRACE_STARTUP:Ljava/lang/String; = "--trace-startup"

.field public static final ARG_TRACE_SYSTRACE:Ljava/lang/String; = "--trace-systrace"

.field public static final ARG_TRACE_TO_FILE:Ljava/lang/String; = "--trace-to-file"

.field public static final ARG_USE_TEST_FONTS:Ljava/lang/String; = "--use-test-fonts"

.field public static final ARG_VERBOSE_LOGGING:Ljava/lang/String; = "--verbose-logging"

.field public static final ARG_VM_SERVICE_PORT:Ljava/lang/String; = "--vm-service-port="


# instance fields
.field private args:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lio/flutter/embedding/engine/FlutterShellArgs;
    .locals 5

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "trace-startup"

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "--trace-startup"

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "start-paused"

    .line 83
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "--start-paused"

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "vm-service-port"

    .line 86
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "--vm-service-port="

    if-lez v1, :cond_2

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "observatory-port"

    .line 92
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const-string v1, "disable-service-auth-codes"

    .line 97
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "--disable-service-auth-codes"

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "endless-trace-buffer"

    .line 100
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "--endless-trace-buffer"

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "use-test-fonts"

    .line 103
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "--use-test-fonts"

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "enable-dart-profiling"

    .line 106
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "--enable-dart-profiling"

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v1, "enable-software-rendering"

    .line 109
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "--enable-software-rendering"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v1, "skia-deterministic-rendering"

    .line 112
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "--skia-deterministic-rendering"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v1, "trace-skia"

    .line 115
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "--trace-skia"

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v1, "trace-skia-allowlist"

    .line 118
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--trace-skia-allowlist="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v1, "trace-systrace"

    .line 122
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "--trace-systrace"

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v1, "trace-to-file"

    .line 125
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--trace-to-file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v1, "enable-impeller"

    .line 128
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "--enable-impeller"

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v1, "enable-vulkan-validation"

    .line 131
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "--enable-vulkan-validation"

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string v1, "dump-skp-on-shader-compilation"

    .line 134
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "--dump-skp-on-shader-compilation"

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v1, "cache-sksl"

    .line 137
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "--cache-sksl"

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string v1, "purge-persistent-cache"

    .line 140
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "--purge-persistent-cache"

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const-string v1, "verbose-logging"

    .line 143
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "--verbose-logging"

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v1, "msaa-samples"

    .line 146
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--msaa-samples="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v1, "dart-flags"

    .line 154
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--dart-flags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_15
    new-instance p0, Lio/flutter/embedding/engine/FlutterShellArgs;

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/FlutterShellArgs;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    .line 190
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    .line 199
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    .line 210
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterShellArgs;->args:Ljava/util/Set;

    .line 211
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
