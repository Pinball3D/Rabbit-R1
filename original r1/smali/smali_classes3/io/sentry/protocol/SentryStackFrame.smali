.class public final Lio/sentry/protocol/SentryStackFrame;
.super Ljava/lang/Object;
.source "SentryStackFrame.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryStackFrame$JsonKeys;,
        Lio/sentry/protocol/SentryStackFrame$Deserializer;
    }
.end annotation


# instance fields
.field private _native:Ljava/lang/Boolean;

.field private _package:Ljava/lang/String;

.field private absPath:Ljava/lang/String;

.field private colno:Ljava/lang/Integer;

.field private contextLine:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private framesOmitted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private function:Ljava/lang/String;

.field private imageAddr:Ljava/lang/String;

.field private inApp:Ljava/lang/Boolean;

.field private instructionAddr:Ljava/lang/String;

.field private lineno:Ljava/lang/Integer;

.field private lock:Lio/sentry/SentryLockReason;

.field private module:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private postContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawFunction:Ljava/lang/String;

.field private symbol:Ljava/lang/String;

.field private symbolAddr:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lio/sentry/protocol/SentryStackFrame;Lio/sentry/SentryLockReason;)Lio/sentry/SentryLockReason;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public getAbsPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    return-object p0
.end method

.method public getColno()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    return-object p0
.end method

.method public getContextLine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public getFramesOmitted()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    return-object p0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    return-object p0
.end method

.method public getImageAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getInstructionAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getLineno()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLock()Lio/sentry/SentryLockReason;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    return-object p0
.end method

.method public getModule()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getPostContext()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    return-object p0
.end method

.method public getPreContext()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    return-object p0
.end method

.method public getRawFunction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    return-object p0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    return-object p0
.end method

.method public getSymbolAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getVars()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    return-object p0
.end method

.method public isInApp()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isNative()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "filename"

    .line 338
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "function"

    .line 341
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "module"

    .line 344
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "lineno"

    .line 347
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const-string v0, "colno"

    .line 350
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "abs_path"

    .line 353
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "context_line"

    .line 356
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const-string v0, "in_app"

    .line 359
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "package"

    .line 362
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const-string v0, "native"

    .line 365
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "platform"

    .line 368
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "image_addr"

    .line 371
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_b
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "symbol_addr"

    .line 374
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_c
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "instruction_addr"

    .line 377
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_d
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "raw_function"

    .line 380
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_e
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string v0, "symbol"

    .line 383
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_f
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    if-eqz v0, :cond_10

    const-string v0, "lock"

    .line 386
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_10
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 389
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    .line 390
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 391
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 392
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 395
    :cond_11
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setAbsPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    return-void
.end method

.method public setColno(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    return-void
.end method

.method public setContextLine(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFramesOmitted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    return-void
.end method

.method public setImageAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    return-void
.end method

.method public setInApp(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    return-void
.end method

.method public setInstructionAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    return-void
.end method

.method public setLineno(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    return-void
.end method

.method public setLock(Lio/sentry/SentryLockReason;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    return-void
.end method

.method public setNative(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    return-void
.end method

.method public setPostContext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    return-void
.end method

.method public setPreContext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    return-void
.end method

.method public setRawFunction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    return-void
.end method

.method public setSymbolAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setVars(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    return-void
.end method
