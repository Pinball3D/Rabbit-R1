package androidx.core.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class NotificationChannelGroupCompat {
    private boolean mBlocked;
    private List<NotificationChannelCompat> mChannels;
    String mDescription;
    final String mId;
    CharSequence mName;

    public List<NotificationChannelCompat> getChannels() {
        return this.mChannels;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getId() {
        return this.mId;
    }

    public CharSequence getName() {
        return this.mName;
    }

    public boolean isBlocked() {
        return this.mBlocked;
    }

    /* loaded from: classes.dex */
    public static class Builder {
        final NotificationChannelGroupCompat mGroup;

        public NotificationChannelGroupCompat build() {
            return this.mGroup;
        }

        public Builder(String str) {
            this.mGroup = new NotificationChannelGroupCompat(str);
        }

        public Builder setName(CharSequence charSequence) {
            this.mGroup.mName = charSequence;
            return this;
        }

        public Builder setDescription(String str) {
            this.mGroup.mDescription = str;
            return this;
        }
    }

    NotificationChannelGroupCompat(String str) {
        this.mChannels = Collections.emptyList();
        this.mId = (String) Preconditions.checkNotNull(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationChannelGroupCompat(NotificationChannelGroup notificationChannelGroup) {
        this(notificationChannelGroup, Collections.emptyList());
    }

    NotificationChannelGroupCompat(NotificationChannelGroup notificationChannelGroup, List<NotificationChannel> list) {
        this(Api26Impl.getId(notificationChannelGroup));
        this.mName = Api26Impl.getName(notificationChannelGroup);
        this.mDescription = Api28Impl.getDescription(notificationChannelGroup);
        this.mBlocked = Api28Impl.isBlocked(notificationChannelGroup);
        this.mChannels = getChannelsCompat(Api26Impl.getChannels(notificationChannelGroup));
    }

    private List<NotificationChannelCompat> getChannelsCompat(List<NotificationChannel> list) {
        ArrayList arrayList = new ArrayList();
        for (NotificationChannel notificationChannel : list) {
            if (this.mId.equals(Api26Impl.getGroup(notificationChannel))) {
                arrayList.add(new NotificationChannelCompat(notificationChannel));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationChannelGroup getNotificationChannelGroup() {
        NotificationChannelGroup createNotificationChannelGroup = Api26Impl.createNotificationChannelGroup(this.mId, this.mName);
        Api28Impl.setDescription(createNotificationChannelGroup, this.mDescription);
        return createNotificationChannelGroup;
    }

    public Builder toBuilder() {
        return new Builder(this.mId).setName(this.mName).setDescription(this.mDescription);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        static NotificationChannelGroup createNotificationChannelGroup(String str, CharSequence charSequence) {
            return new NotificationChannelGroup(str, charSequence);
        }

        static String getId(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getId();
        }

        static CharSequence getName(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getName();
        }

        static List<NotificationChannel> getChannels(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getChannels();
        }

        static String getGroup(NotificationChannel notificationChannel) {
            return notificationChannel.getGroup();
        }
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static boolean isBlocked(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.isBlocked();
        }

        static String getDescription(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getDescription();
        }

        static void setDescription(NotificationChannelGroup notificationChannelGroup, String str) {
            notificationChannelGroup.setDescription(str);
        }
    }
}
