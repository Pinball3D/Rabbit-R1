package tech.rabbit.r1launcher.rabbit;

import kotlin.Metadata;
import tech.rabbit.r1launcher.rabbit.event_handler.DeviceStateEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.FoodDeliveryEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.GlobalEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.KernelEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.MeetingAssistantEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.MidjourneyEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.SpeechRecognizerEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.SpotifyEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.TranslatorEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.UberEventHandler;

/* compiled from: RabbitServices.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/RabbitServices;", "", "()V", "setup", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RabbitServices {
    public static final int $stable = 0;
    public static final RabbitServices INSTANCE = new RabbitServices();

    private RabbitServices() {
    }

    public final void setup() {
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new SpeechRecognizerEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new GlobalEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new KernelEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new SpotifyEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new UberEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new MeetingAssistantEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new TranslatorEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new FoodDeliveryEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new DeviceStateEventHandler());
        RabbitServiceEventProcessor.INSTANCE.registerHandler(new MidjourneyEventHandler());
    }
}
