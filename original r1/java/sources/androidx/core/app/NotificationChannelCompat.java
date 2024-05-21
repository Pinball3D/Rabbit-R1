package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.provider.Settings;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
public class NotificationChannelCompat {
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";
    private static final int DEFAULT_LIGHT_COLOR = 0;
    private static final boolean DEFAULT_SHOW_BADGE = true;
    AudioAttributes mAudioAttributes;
    private boolean mBypassDnd;
    private boolean mCanBubble;
    String mConversationId;
    String mDescription;
    String mGroupId;
    final String mId;
    int mImportance;
    private boolean mImportantConversation;
    int mLightColor;
    boolean mLights;
    private int mLockscreenVisibility;
    CharSequence mName;
    String mParentId;
    boolean mShowBadge;
    Uri mSound;
    boolean mVibrationEnabled;
    long[] mVibrationPattern;

    public boolean canBubble() {
        return this.mCanBubble;
    }

    public boolean canBypassDnd() {
        return this.mBypassDnd;
    }

    public boolean canShowBadge() {
        return this.mShowBadge;
    }

    public AudioAttributes getAudioAttributes() {
        return this.mAudioAttributes;
    }

    public String getConversationId() {
        return this.mConversationId;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getGroup() {
        return this.mGroupId;
    }

    public String getId() {
        return this.mId;
    }

    public int getImportance() {
        return this.mImportance;
    }

    public int getLightColor() {
        return this.mLightColor;
    }

    public int getLockscreenVisibility() {
        return this.mLockscreenVisibility;
    }

    public CharSequence getName() {
        return this.mName;
    }

    public String getParentChannelId() {
        return this.mParentId;
    }

    public Uri getSound() {
        return this.mSound;
    }

    public long[] getVibrationPattern() {
        return this.mVibrationPattern;
    }

    public boolean isImportantConversation() {
        return this.mImportantConversation;
    }

    public boolean shouldShowLights() {
        return this.mLights;
    }

    public boolean shouldVibrate() {
        return this.mVibrationEnabled;
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private final NotificationChannelCompat mChannel;

        public NotificationChannelCompat build() {
            return this.mChannel;
        }

        public Builder(String str, int i) {
            this.mChannel = new NotificationChannelCompat(str, i);
        }

        public Builder setName(CharSequence charSequence) {
            this.mChannel.mName = charSequence;
            return this;
        }

        public Builder setImportance(int i) {
            this.mChannel.mImportance = i;
            return this;
        }

        public Builder setDescription(String str) {
            this.mChannel.mDescription = str;
            return this;
        }

        public Builder setGroup(String str) {
            this.mChannel.mGroupId = str;
            return this;
        }

        public Builder setShowBadge(boolean z) {
            this.mChannel.mShowBadge = z;
            return this;
        }

        public Builder setSound(Uri uri, AudioAttributes audioAttributes) {
            this.mChannel.mSound = uri;
            this.mChannel.mAudioAttributes = audioAttributes;
            return this;
        }

        public Builder setLightsEnabled(boolean z) {
            this.mChannel.mLights = z;
            return this;
        }

        public Builder setLightColor(int i) {
            this.mChannel.mLightColor = i;
            return this;
        }

        public Builder setVibrationEnabled(boolean z) {
            this.mChannel.mVibrationEnabled = z;
            return this;
        }

        public Builder setVibrationPattern(long[] jArr) {
            this.mChannel.mVibrationEnabled = jArr != null && jArr.length > 0;
            this.mChannel.mVibrationPattern = jArr;
            return this;
        }

        public Builder setConversationId(String str, String str2) {
            this.mChannel.mParentId = str;
            this.mChannel.mConversationId = str2;
            return this;
        }
    }

    NotificationChannelCompat(String str, int i) {
        this.mShowBadge = true;
        this.mSound = Settings.System.DEFAULT_NOTIFICATION_URI;
        this.mLightColor = 0;
        this.mId = (String) Preconditions.checkNotNull(str);
        this.mImportance = i;
        this.mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationChannelCompat(NotificationChannel notificationChannel) {
        this(Api26Impl.getId(notificationChannel), Api26Impl.getImportance(notificationChannel));
        this.mName = Api26Impl.getName(notificationChannel);
        this.mDescription = Api26Impl.getDescription(notificationChannel);
        this.mGroupId = Api26Impl.getGroup(notificationChannel);
        this.mShowBadge = Api26Impl.canShowBadge(notificationChannel);
        this.mSound = Api26Impl.getSound(notificationChannel);
        this.mAudioAttributes = Api26Impl.getAudioAttributes(notificationChannel);
        this.mLights = Api26Impl.shouldShowLights(notificationChannel);
        this.mLightColor = Api26Impl.getLightColor(notificationChannel);
        this.mVibrationEnabled = Api26Impl.shouldVibrate(notificationChannel);
        this.mVibrationPattern = Api26Impl.getVibrationPattern(notificationChannel);
        this.mParentId = Api30Impl.getParentChannelId(notificationChannel);
        this.mConversationId = Api30Impl.getConversationId(notificationChannel);
        this.mBypassDnd = Api26Impl.canBypassDnd(notificationChannel);
        this.mLockscreenVisibility = Api26Impl.getLockscreenVisibility(notificationChannel);
        this.mCanBubble = Api29Impl.canBubble(notificationChannel);
        this.mImportantConversation = Api30Impl.isImportantConversation(notificationChannel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationChannel getNotificationChannel() {
        String str;
        NotificationChannel createNotificationChannel = Api26Impl.createNotificationChannel(this.mId, this.mName, this.mImportance);
        Api26Impl.setDescription(createNotificationChannel, this.mDescription);
        Api26Impl.setGroup(createNotificationChannel, this.mGroupId);
        Api26Impl.setShowBadge(createNotificationChannel, this.mShowBadge);
        Api26Impl.setSound(createNotificationChannel, this.mSound, this.mAudioAttributes);
        Api26Impl.enableLights(createNotificationChannel, this.mLights);
        Api26Impl.setLightColor(createNotificationChannel, this.mLightColor);
        Api26Impl.setVibrationPattern(createNotificationChannel, this.mVibrationPattern);
        Api26Impl.enableVibration(createNotificationChannel, this.mVibrationEnabled);
        String str2 = this.mParentId;
        if (str2 != null && (str = this.mConversationId) != null) {
            Api30Impl.setConversationId(createNotificationChannel, str2, str);
        }
        return createNotificationChannel;
    }

    public Builder toBuilder() {
        return new Builder(this.mId, this.mImportance).setName(this.mName).setDescription(this.mDescription).setGroup(this.mGroupId).setShowBadge(this.mShowBadge).setSound(this.mSound, this.mAudioAttributes).setLightsEnabled(this.mLights).setLightColor(this.mLightColor).setVibrationEnabled(this.mVibrationEnabled).setVibrationPattern(this.mVibrationPattern).setConversationId(this.mParentId, this.mConversationId);
    }

    /* loaded from: classes.dex */
    static class Api26Impl {
        private Api26Impl() {
        }

        static NotificationChannel createNotificationChannel(String str, CharSequence charSequence, int i) {
            return new NotificationChannel(str, charSequence, i);
        }

        static String getId(NotificationChannel notificationChannel) {
            return notificationChannel.getId();
        }

        static int getImportance(NotificationChannel notificationChannel) {
            return notificationChannel.getImportance();
        }

        static CharSequence getName(NotificationChannel notificationChannel) {
            return notificationChannel.getName();
        }

        static String getDescription(NotificationChannel notificationChannel) {
            return notificationChannel.getDescription();
        }

        static void setDescription(NotificationChannel notificationChannel, String str) {
            notificationChannel.setDescription(str);
        }

        static String getGroup(NotificationChannel notificationChannel) {
            return notificationChannel.getGroup();
        }

        static void setGroup(NotificationChannel notificationChannel, String str) {
            notificationChannel.setGroup(str);
        }

        static boolean canShowBadge(NotificationChannel notificationChannel) {
            return notificationChannel.canShowBadge();
        }

        static void setShowBadge(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.setShowBadge(z);
        }

        static Uri getSound(NotificationChannel notificationChannel) {
            return notificationChannel.getSound();
        }

        static void setSound(NotificationChannel notificationChannel, Uri uri, AudioAttributes audioAttributes) {
            notificationChannel.setSound(uri, audioAttributes);
        }

        static AudioAttributes getAudioAttributes(NotificationChannel notificationChannel) {
            return notificationChannel.getAudioAttributes();
        }

        static boolean shouldShowLights(NotificationChannel notificationChannel) {
            return notificationChannel.shouldShowLights();
        }

        static void enableLights(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableLights(z);
        }

        static int getLightColor(NotificationChannel notificationChannel) {
            return notificationChannel.getLightColor();
        }

        static void setLightColor(NotificationChannel notificationChannel, int i) {
            notificationChannel.setLightColor(i);
        }

        static boolean shouldVibrate(NotificationChannel notificationChannel) {
            return notificationChannel.shouldVibrate();
        }

        static void enableVibration(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableVibration(z);
        }

        static long[] getVibrationPattern(NotificationChannel notificationChannel) {
            return notificationChannel.getVibrationPattern();
        }

        static void setVibrationPattern(NotificationChannel notificationChannel, long[] jArr) {
            notificationChannel.setVibrationPattern(jArr);
        }

        static boolean canBypassDnd(NotificationChannel notificationChannel) {
            return notificationChannel.canBypassDnd();
        }

        static int getLockscreenVisibility(NotificationChannel notificationChannel) {
            return notificationChannel.getLockscreenVisibility();
        }
    }

    /* loaded from: classes.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static boolean canBubble(NotificationChannel notificationChannel) {
            return notificationChannel.canBubble();
        }
    }

    /* loaded from: classes.dex */
    static class Api30Impl {
        private Api30Impl() {
        }

        static String getParentChannelId(NotificationChannel notificationChannel) {
            return notificationChannel.getParentChannelId();
        }

        static String getConversationId(NotificationChannel notificationChannel) {
            return notificationChannel.getConversationId();
        }

        static void setConversationId(NotificationChannel notificationChannel, String str, String str2) {
            notificationChannel.setConversationId(str, str2);
        }

        static boolean isImportantConversation(NotificationChannel notificationChannel) {
            return notificationChannel.isImportantConversation();
        }
    }
}
