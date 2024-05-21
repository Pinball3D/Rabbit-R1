.class public final Lio/sentry/protocol/SentryStackFrame$JsonKeys;
.super Ljava/lang/Object;
.source "SentryStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final ABS_PATH:Ljava/lang/String; = "abs_path"

.field public static final COLNO:Ljava/lang/String; = "colno"

.field public static final CONTEXT_LINE:Ljava/lang/String; = "context_line"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final FUNCTION:Ljava/lang/String; = "function"

.field public static final IMAGE_ADDR:Ljava/lang/String; = "image_addr"

.field public static final INSTRUCTION_ADDR:Ljava/lang/String; = "instruction_addr"

.field public static final IN_APP:Ljava/lang/String; = "in_app"

.field public static final LINENO:Ljava/lang/String; = "lineno"

.field public static final LOCK:Ljava/lang/String; = "lock"

.field public static final MODULE:Ljava/lang/String; = "module"

.field public static final NATIVE:Ljava/lang/String; = "native"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final RAW_FUNCTION:Ljava/lang/String; = "raw_function"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final SYMBOL_ADDR:Ljava/lang/String; = "symbol_addr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
