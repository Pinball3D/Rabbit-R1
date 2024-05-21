.class public final Ltech/rabbit/r1launcher/rabbit/RabbitServices;
.super Ljava/lang/Object;
.source "RabbitServices.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/RabbitServices;",
        "",
        "()V",
        "setup",
        "",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/RabbitServices;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServices;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/RabbitServices;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServices;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setup()V
    .locals 1

    .line 16
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/SpeechRecognizerEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/SpeechRecognizerEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 17
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/GlobalEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/GlobalEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 18
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/KernelEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/KernelEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 19
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 20
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 21
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/MeetingAssistantEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/MeetingAssistantEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 22
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/TranslatorEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/TranslatorEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 23
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/FoodDeliveryEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/FoodDeliveryEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 24
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    .line 25
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/event_handler/MidjourneyEventHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/event_handler/MidjourneyEventHandler;-><init>()V

    check-cast v0, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->registerHandler(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;)V

    return-void
.end method
