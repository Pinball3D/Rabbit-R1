.class public Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;
.super Ljava/lang/Object;
.source "ThreadDumpParser.java"


# static fields
.field private static final BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

.field private static final BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

.field private static final BLANK_RE:Ljava/util/regex/Pattern;

.field private static final JAVA_RE:Ljava/util/regex/Pattern;

.field private static final JNI_RE:Ljava/util/regex/Pattern;

.field private static final LOCKED_RE:Ljava/util/regex/Pattern;

.field private static final NATIVE_NO_LOC_RE:Ljava/util/regex/Pattern;

.field private static final NATIVE_RE:Ljava/util/regex/Pattern;

.field private static final SLEEPING_ON_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_ON_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_TO_LOCK_HELD_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_TO_LOCK_RE:Ljava/util/regex/Pattern;

.field private static final WAITING_TO_LOCK_UNKNOWN_RE:Ljava/util/regex/Pattern;


# instance fields
.field private final isBackground:Z

.field private final options:Lio/sentry/SentryOptions;

.field private final stackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\"(.*)\" (.*) ?prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

    const-string v0, "\"(.*)\" (.*) ?sysTid=(\\d+)"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

    const-string v0, " *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*?)\\s+\\((.*)\\+(\\d+)\\)(?: \\(.*\\))?"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->NATIVE_RE:Ljava/util/regex/Pattern;

    const-string v0, " *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*)\\s*\\(?(.*)\\)?(?: \\(.*\\))?"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->NATIVE_NO_LOC_RE:Ljava/util/regex/Pattern;

    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\((.*):([\\d-]+)\\)"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JAVA_RE:Ljava/util/regex/Pattern;

    const-string v0, " *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\(Native method\\)"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JNI_RE:Ljava/util/regex/Pattern;

    const-string v0, " *- locked \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->LOCKED_RE:Ljava/util/regex/Pattern;

    const-string v0, " *- sleeping on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->SLEEPING_ON_RE:Ljava/util/regex/Pattern;

    const-string v0, " *- waiting on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_ON_RE:Ljava/util/regex/Pattern;

    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_RE:Ljava/util/regex/Pattern;

    const-string v0, " *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)(?: held by thread (\\d+))"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_HELD_RE:Ljava/util/regex/Pattern;

    const-string v0, " *- waiting to lock an unknown object"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_UNKNOWN_RE:Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BLANK_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    iput-boolean p2, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->isBackground:Z

    .line 81
    new-instance p2, Lio/sentry/SentryStackTraceFactory;

    invoke-direct {p2, p1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    iput-object p2, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    return-void
.end method

.method private combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V
    .locals 2

    .line 310
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getHeldLocks()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    .line 312
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 314
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryLockReason;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryLockReason;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Lio/sentry/SentryLockReason;->getType()I

    move-result v1

    invoke-virtual {p2}, Lio/sentry/SentryLockReason;->getType()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v0, p2}, Lio/sentry/SentryLockReason;->setType(I)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p2}, Lio/sentry/SentryLockReason;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/sentry/SentryLockReason;

    invoke-direct {v1, p2}, Lio/sentry/SentryLockReason;-><init>(Lio/sentry/SentryLockReason;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :goto_0
    invoke-virtual {p1, p0}, Lio/sentry/protocol/SentryThread;->setHeldLocks(Ljava/util/Map;)V

    return-void
.end method

.method private getInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 338
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p3
.end method

.method private getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 327
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p3
.end method

.method private getUInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 349
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_1

    move-object p3, p0

    :cond_1
    :goto_0
    return-object p3
.end method

.method private matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z
    .locals 0

    .line 304
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 305
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private parseStacktrace(Lio/sentry/android/core/internal/threaddump/Lines;Lio/sentry/protocol/SentryThread;)Lio/sentry/protocol/SentryStackTrace;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->NATIVE_RE:Ljava/util/regex/Pattern;

    const-string v4, ""

    .line 178
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    sget-object v5, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->NATIVE_NO_LOC_RE:Ljava/util/regex/Pattern;

    .line 179
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    sget-object v6, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JAVA_RE:Ljava/util/regex/Pattern;

    .line 180
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    sget-object v7, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->JNI_RE:Ljava/util/regex/Pattern;

    .line 181
    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    sget-object v8, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->LOCKED_RE:Ljava/util/regex/Pattern;

    .line 182
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    sget-object v9, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_ON_RE:Ljava/util/regex/Pattern;

    .line 183
    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    sget-object v10, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->SLEEPING_ON_RE:Ljava/util/regex/Pattern;

    .line 184
    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    sget-object v11, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_HELD_RE:Ljava/util/regex/Pattern;

    .line 185
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    sget-object v12, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_RE:Ljava/util/regex/Pattern;

    .line 186
    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    sget-object v13, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->WAITING_TO_LOCK_UNKNOWN_RE:Ljava/util/regex/Pattern;

    .line 187
    invoke-virtual {v13, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    sget-object v14, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BLANK_RE:Ljava/util/regex/Pattern;

    .line 188
    invoke-virtual {v14, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v15, 0x0

    .line 190
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/internal/threaddump/Lines;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 191
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/internal/threaddump/Lines;->next()Lio/sentry/android/core/internal/threaddump/Line;

    move-result-object v14

    if-nez v14, :cond_0

    iget-object v0, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    .line 193
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Internal error while parsing thread dump."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 196
    :cond_0
    iget-object v14, v14, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    .line 197
    invoke-direct {v0, v3, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v19, v4

    const/4 v4, 0x2

    if-eqz v18, :cond_1

    .line 198
    new-instance v14, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v14}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    const/4 v15, 0x1

    .line 199
    invoke-virtual {v3, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/sentry/protocol/SentryStackFrame;->setPackage(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    const/4 v4, 0x3

    const/4 v15, 0x0

    .line 201
    invoke-direct {v0, v3, v4, v15}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Lio/sentry/protocol/SentryStackFrame;->setLineno(Ljava/lang/Integer;)V

    .line 202
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v20, v3

    move-object/from16 v4, v19

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 204
    :cond_1
    invoke-direct {v0, v5, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 205
    new-instance v14, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v14}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    const/4 v15, 0x1

    .line 206
    invoke-virtual {v5, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/sentry/protocol/SentryStackFrame;->setPackage(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 208
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_2
    invoke-direct {v0, v6, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v18

    const-string v4, "%s.%s"

    move-object/from16 v20, v3

    if-eqz v18, :cond_4

    .line 211
    new-instance v15, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v15}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    const/4 v14, 0x1

    .line 212
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x2

    .line 213
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    filled-new-array {v14, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setModule(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 216
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 217
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lio/sentry/protocol/SentryStackFrame;->setFilename(Ljava/lang/String;)V

    const/4 v4, 0x5

    const/4 v14, 0x0

    .line 218
    invoke-direct {v0, v6, v4, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getUInteger(Ljava/util/regex/Matcher;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lio/sentry/protocol/SentryStackFrame;->setLineno(Ljava/lang/Integer;)V

    iget-object v4, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 219
    invoke-virtual {v4, v3}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setInApp(Ljava/lang/Boolean;)V

    .line 220
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    move-object/from16 v4, v19

    const/4 v3, 0x0

    goto/16 :goto_4

    .line 222
    :cond_4
    invoke-direct {v0, v7, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 223
    new-instance v15, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v15}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    const/4 v3, 0x1

    .line 224
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x2

    .line 225
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 226
    filled-new-array {v3, v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setModule(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 228
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    iget-object v4, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 229
    invoke-virtual {v4, v3}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setInApp(Ljava/lang/Boolean;)V

    .line 230
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 232
    :cond_5
    invoke-direct {v0, v8, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v15, :cond_3

    .line 234
    new-instance v3, Lio/sentry/SentryLockReason;

    invoke-direct {v3}, Lio/sentry/SentryLockReason;-><init>()V

    const/4 v4, 0x1

    .line 235
    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 236
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 237
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 238
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 240
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    goto :goto_2

    .line 242
    :cond_6
    invoke-direct {v0, v9, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v15, :cond_3

    .line 244
    new-instance v3, Lio/sentry/SentryLockReason;

    invoke-direct {v3}, Lio/sentry/SentryLockReason;-><init>()V

    const/4 v4, 0x2

    .line 245
    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setType(I)V

    const/4 v14, 0x1

    .line 246
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 248
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 250
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    goto/16 :goto_2

    .line 252
    :cond_7
    invoke-direct {v0, v10, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v15, :cond_3

    .line 254
    new-instance v3, Lio/sentry/SentryLockReason;

    invoke-direct {v3}, Lio/sentry/SentryLockReason;-><init>()V

    const/4 v4, 0x4

    .line 255
    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setType(I)V

    const/4 v4, 0x1

    .line 256
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 257
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 258
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 260
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    goto/16 :goto_2

    .line 262
    :cond_8
    invoke-direct {v0, v11, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_9

    if-eqz v15, :cond_3

    .line 264
    new-instance v3, Lio/sentry/SentryLockReason;

    invoke-direct {v3}, Lio/sentry/SentryLockReason;-><init>()V

    .line 265
    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setType(I)V

    const/4 v4, 0x1

    .line 266
    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 267
    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 268
    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v14, 0x0

    .line 269
    invoke-direct {v0, v11, v4, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SentryLockReason;->setThreadId(Ljava/lang/Long;)V

    .line 270
    invoke-virtual {v15, v3}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 271
    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    move-object v3, v14

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 273
    invoke-direct {v0, v12, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    if-eqz v15, :cond_a

    .line 275
    new-instance v14, Lio/sentry/SentryLockReason;

    invoke-direct {v14}, Lio/sentry/SentryLockReason;-><init>()V

    .line 276
    invoke-virtual {v14, v4}, Lio/sentry/SentryLockReason;->setType(I)V

    const/4 v4, 0x1

    .line 277
    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lio/sentry/SentryLockReason;->setAddress(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 278
    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lio/sentry/SentryLockReason;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 279
    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lio/sentry/SentryLockReason;->setClassName(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v15, v14}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 281
    invoke-direct {v0, v1, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    :cond_a
    :goto_3
    move-object/from16 v4, v19

    goto :goto_4

    .line 283
    :cond_b
    invoke-direct {v0, v13, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    if-eqz v15, :cond_a

    .line 285
    new-instance v14, Lio/sentry/SentryLockReason;

    invoke-direct {v14}, Lio/sentry/SentryLockReason;-><init>()V

    .line 286
    invoke-virtual {v14, v4}, Lio/sentry/SentryLockReason;->setType(I)V

    .line 287
    invoke-virtual {v15, v14}, Lio/sentry/protocol/SentryStackFrame;->setLock(Lio/sentry/SentryLockReason;)V

    .line 288
    invoke-direct {v0, v1, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->combineThreadLocks(Lio/sentry/protocol/SentryThread;Lio/sentry/SentryLockReason;)V

    goto :goto_3

    .line 290
    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v4, v19

    invoke-direct {v0, v4, v14}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 296
    :cond_e
    :goto_5
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 297
    new-instance v0, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v0, v2}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    const/4 v1, 0x1

    .line 299
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryStackTrace;->setSnapshot(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private parseThread(Lio/sentry/android/core/internal/threaddump/Lines;)Lio/sentry/protocol/SentryThread;
    .locals 9

    .line 113
    new-instance v0, Lio/sentry/protocol/SentryThread;

    invoke-direct {v0}, Lio/sentry/protocol/SentryThread;-><init>()V

    sget-object v1, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

    const-string v2, ""

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v3, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

    .line 116
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 119
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 122
    :cond_0
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->next()Lio/sentry/android/core/internal/threaddump/Line;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    .line 124
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Internal error while parsing thread dump."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 127
    :cond_1
    iget-object v6, v3, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "No thread id in the dump, skipping thread."

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    const/4 v2, 0x4

    .line 128
    invoke-direct {p0, v1, v2, v4}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    .line 130
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-interface {p0, p1, v7, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 134
    :cond_2
    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryThread;->setId(Ljava/lang/Long;)V

    .line 135
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, " "

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v1, v3, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    .line 147
    invoke-direct {p0, v2, v1, v4}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getLong(Ljava/util/regex/Matcher;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    .line 149
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-interface {p0, p1, v7, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 153
    :cond_5
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setId(Ljava/lang/Long;)V

    .line 154
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 157
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lio/sentry/protocol/SentryThread;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "main"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryThread;->setCrashed(Ljava/lang/Boolean;)V

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->isBackground:Z

    if-nez v1, :cond_7

    move v5, v8

    .line 163
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setCurrent(Ljava/lang/Boolean;)V

    .line 167
    :cond_8
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->parseStacktrace(Lio/sentry/android/core/internal/threaddump/Lines;Lio/sentry/protocol/SentryThread;)Lio/sentry/protocol/SentryStackTrace;

    move-result-object p0

    .line 168
    invoke-virtual {v0, p0}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    return-object v0
.end method


# virtual methods
.method public parse(Lio/sentry/android/core/internal/threaddump/Lines;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/internal/threaddump/Lines;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_MANAGED_THREAD_RE:Ljava/util/regex/Pattern;

    const-string v2, ""

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v3, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->BEGIN_UNMANAGED_NATIVE_THREAD_RE:Ljava/util/regex/Pattern;

    .line 89
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->next()Lio/sentry/android/core/internal/threaddump/Line;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->options:Lio/sentry/SentryOptions;

    .line 94
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Internal error while parsing thread dump."

    invoke-interface {p0, p1, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 97
    :cond_1
    iget-object v3, v3, Lio/sentry/android/core/internal/threaddump/Line;->text:Ljava/lang/String;

    .line 100
    invoke-direct {p0, v1, v3}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v2, v3}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->matches(Ljava/util/regex/Matcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Lio/sentry/android/core/internal/threaddump/Lines;->rewind()V

    .line 103
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->parseThread(Lio/sentry/android/core/internal/threaddump/Lines;)Lio/sentry/protocol/SentryThread;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
