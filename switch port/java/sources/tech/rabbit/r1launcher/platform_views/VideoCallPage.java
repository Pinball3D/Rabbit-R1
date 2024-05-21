package tech.rabbit.r1launcher.platform_views;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.flutter.plugin.platform.PlatformView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoCallPage.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Ltech/rabbit/r1launcher/platform_views/VideoCallPage;", "Lio/flutter/plugin/platform/PlatformView;", "context", "Landroid/content/Context;", "id", "", "creationParams", "", "", "", "(Landroid/content/Context;ILjava/util/Map;)V", "layout", "Landroid/widget/LinearLayout;", "dispose", "", "getView", "Landroid/view/View;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoCallPage implements PlatformView {
    public static final int $stable = 8;
    private final LinearLayout layout;

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
    }

    public VideoCallPage(Context context, int i, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        final TextView textView = new TextView(context);
        textView.setText("Android view (id: " + i + ", paramsFromDart: " + map + ')');
        textView.setTextSize(16.0f);
        textView.setBackgroundColor(Color.rgb(255, 255, 255));
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        Button button = new Button(context);
        button.setText("Press me");
        button.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        button.setOnClickListener(new View.OnClickListener() { // from class: tech.rabbit.r1launcher.platform_views.VideoCallPage$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoCallPage.lambda$2$lambda$1(textView, view);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(textView);
        linearLayout.addView(button);
        this.layout = linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void lambda$2$lambda$1(TextView textView, View view) {
        Intrinsics.checkNotNullParameter(textView, "$textView");
        System.out.println((Object) "###button  setOnClickListener");
        textView.setText("click");
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        return this.layout;
    }
}
