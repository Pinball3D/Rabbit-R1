package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.LocusId;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.collection.ArraySet;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {
    private RemoteViews mBigContentView;
    private final Notification.Builder mBuilder;
    private final NotificationCompat.Builder mBuilderCompat;
    private RemoteViews mContentView;
    private final Context mContext;
    private int mGroupAlertBehavior;
    private RemoteViews mHeadsUpContentView;
    private final List<Bundle> mActionExtrasList = new ArrayList();
    private final Bundle mExtras = new Bundle();

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public Notification.Builder getBuilder() {
        return this.mBuilder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationCompatBuilder(NotificationCompat.Builder builder) {
        this.mBuilderCompat = builder;
        Context context = builder.mContext;
        this.mContext = context;
        Notification.Builder createBuilder = Api26Impl.createBuilder(builder.mContext, builder.mChannelId);
        this.mBuilder = createBuilder;
        Notification notification = builder.mNotification;
        createBuilder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, builder.mTickerView).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(builder.mContentTitle).setContentText(builder.mContentText).setContentInfo(builder.mContentInfo).setContentIntent(builder.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(builder.mFullScreenIntent, (notification.flags & 128) != 0).setNumber(builder.mNumber).setProgress(builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate);
        Api23Impl.setLargeIcon(createBuilder, builder.mLargeIcon == null ? null : builder.mLargeIcon.toIcon(context));
        Api16Impl.setPriority(Api16Impl.setUsesChronometer(Api16Impl.setSubText(createBuilder, builder.mSubText), builder.mUseChronometer), builder.mPriority);
        if (builder.mStyle instanceof NotificationCompat.CallStyle) {
            Iterator<NotificationCompat.Action> it = ((NotificationCompat.CallStyle) builder.mStyle).getActionsListWithSystemActions().iterator();
            while (it.hasNext()) {
                addAction(it.next());
            }
        } else {
            Iterator<NotificationCompat.Action> it2 = builder.mActions.iterator();
            while (it2.hasNext()) {
                addAction(it2.next());
            }
        }
        if (builder.mExtras != null) {
            this.mExtras.putAll(builder.mExtras);
        }
        this.mContentView = builder.mContentView;
        this.mBigContentView = builder.mBigContentView;
        Api17Impl.setShowWhen(this.mBuilder, builder.mShowWhen);
        Api20Impl.setLocalOnly(this.mBuilder, builder.mLocalOnly);
        Api20Impl.setGroup(this.mBuilder, builder.mGroupKey);
        Api20Impl.setSortKey(this.mBuilder, builder.mSortKey);
        Api20Impl.setGroupSummary(this.mBuilder, builder.mGroupSummary);
        this.mGroupAlertBehavior = builder.mGroupAlertBehavior;
        Api21Impl.setCategory(this.mBuilder, builder.mCategory);
        Api21Impl.setColor(this.mBuilder, builder.mColor);
        Api21Impl.setVisibility(this.mBuilder, builder.mVisibility);
        Api21Impl.setPublicVersion(this.mBuilder, builder.mPublicVersion);
        Api21Impl.setSound(this.mBuilder, notification.sound, notification.audioAttributes);
        ArrayList<String> arrayList = builder.mPeople;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<String> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                Api21Impl.addPerson(this.mBuilder, it3.next());
            }
        }
        this.mHeadsUpContentView = builder.mHeadsUpContentView;
        if (builder.mInvisibleActions.size() > 0) {
            Bundle bundle = builder.getExtras().getBundle("android.car.EXTENSIONS");
            bundle = bundle == null ? new Bundle() : bundle;
            Bundle bundle2 = new Bundle(bundle);
            Bundle bundle3 = new Bundle();
            for (int i = 0; i < builder.mInvisibleActions.size(); i++) {
                bundle3.putBundle(Integer.toString(i), NotificationCompatJellybean.getBundleForAction(builder.mInvisibleActions.get(i)));
            }
            bundle.putBundle("invisible_actions", bundle3);
            bundle2.putBundle("invisible_actions", bundle3);
            builder.getExtras().putBundle("android.car.EXTENSIONS", bundle);
            this.mExtras.putBundle("android.car.EXTENSIONS", bundle2);
        }
        if (builder.mSmallIcon != null) {
            Api23Impl.setSmallIcon(this.mBuilder, builder.mSmallIcon);
        }
        Api19Impl.setExtras(this.mBuilder, builder.mExtras);
        Api24Impl.setRemoteInputHistory(this.mBuilder, builder.mRemoteInputHistory);
        if (builder.mContentView != null) {
            Api24Impl.setCustomContentView(this.mBuilder, builder.mContentView);
        }
        if (builder.mBigContentView != null) {
            Api24Impl.setCustomBigContentView(this.mBuilder, builder.mBigContentView);
        }
        if (builder.mHeadsUpContentView != null) {
            Api24Impl.setCustomHeadsUpContentView(this.mBuilder, builder.mHeadsUpContentView);
        }
        Api26Impl.setBadgeIconType(this.mBuilder, builder.mBadgeIcon);
        Api26Impl.setSettingsText(this.mBuilder, builder.mSettingsText);
        Api26Impl.setShortcutId(this.mBuilder, builder.mShortcutId);
        Api26Impl.setTimeoutAfter(this.mBuilder, builder.mTimeout);
        Api26Impl.setGroupAlertBehavior(this.mBuilder, builder.mGroupAlertBehavior);
        if (builder.mColorizedSet) {
            Api26Impl.setColorized(this.mBuilder, builder.mColorized);
        }
        if (!TextUtils.isEmpty(builder.mChannelId)) {
            this.mBuilder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        Iterator<Person> it4 = builder.mPersonList.iterator();
        while (it4.hasNext()) {
            Api28Impl.addPerson(this.mBuilder, it4.next().toAndroidPerson());
        }
        Api29Impl.setAllowSystemGeneratedContextualActions(this.mBuilder, builder.mAllowSystemGeneratedContextualActions);
        Api29Impl.setBubbleMetadata(this.mBuilder, NotificationCompat.BubbleMetadata.toPlatform(builder.mBubbleMetadata));
        if (builder.mLocusId != null) {
            Api29Impl.setLocusId(this.mBuilder, builder.mLocusId.toLocusId());
        }
        if (builder.mFgsDeferBehavior != 0) {
            Api31Impl.setForegroundServiceBehavior(this.mBuilder, builder.mFgsDeferBehavior);
        }
        if (builder.mSilent) {
            if (this.mBuilderCompat.mGroupSummary) {
                this.mGroupAlertBehavior = 2;
            } else {
                this.mGroupAlertBehavior = 1;
            }
            this.mBuilder.setVibrate(null);
            this.mBuilder.setSound(null);
            notification.defaults &= -2;
            notification.defaults &= -3;
            this.mBuilder.setDefaults(notification.defaults);
            if (TextUtils.isEmpty(this.mBuilderCompat.mGroupKey)) {
                Api20Impl.setGroup(this.mBuilder, NotificationCompat.GROUP_KEY_SILENT);
            }
            Api26Impl.setGroupAlertBehavior(this.mBuilder, this.mGroupAlertBehavior);
        }
    }

    private static List<String> combineLists(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        ArraySet arraySet = new ArraySet(list.size() + list2.size());
        arraySet.addAll(list);
        arraySet.addAll(list2);
        return new ArrayList(arraySet);
    }

    private static List<String> getPeople(List<Person> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Person> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().resolveToLegacyUri());
        }
        return arrayList;
    }

    public Notification build() {
        Bundle extras;
        RemoteViews makeHeadsUpContentView;
        RemoteViews makeBigContentView;
        NotificationCompat.Style style = this.mBuilderCompat.mStyle;
        if (style != null) {
            style.apply(this);
        }
        RemoteViews makeContentView = style != null ? style.makeContentView(this) : null;
        Notification buildInternal = buildInternal();
        if (makeContentView != null) {
            buildInternal.contentView = makeContentView;
        } else if (this.mBuilderCompat.mContentView != null) {
            buildInternal.contentView = this.mBuilderCompat.mContentView;
        }
        if (style != null && (makeBigContentView = style.makeBigContentView(this)) != null) {
            buildInternal.bigContentView = makeBigContentView;
        }
        if (style != null && (makeHeadsUpContentView = this.mBuilderCompat.mStyle.makeHeadsUpContentView(this)) != null) {
            buildInternal.headsUpContentView = makeHeadsUpContentView;
        }
        if (style != null && (extras = NotificationCompat.getExtras(buildInternal)) != null) {
            style.addCompatExtras(extras);
        }
        return buildInternal;
    }

    private void addAction(NotificationCompat.Action action) {
        Bundle bundle;
        IconCompat iconCompat = action.getIconCompat();
        Notification.Action.Builder createBuilder = Api23Impl.createBuilder(iconCompat != null ? iconCompat.toIcon() : null, action.getTitle(), action.getActionIntent());
        if (action.getRemoteInputs() != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(action.getRemoteInputs())) {
                Api20Impl.addRemoteInput(createBuilder, remoteInput);
            }
        }
        if (action.getExtras() != null) {
            bundle = new Bundle(action.getExtras());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", action.getAllowGeneratedReplies());
        Api24Impl.setAllowGeneratedReplies(createBuilder, action.getAllowGeneratedReplies());
        bundle.putInt("android.support.action.semanticAction", action.getSemanticAction());
        Api28Impl.setSemanticAction(createBuilder, action.getSemanticAction());
        Api29Impl.setContextual(createBuilder, action.isContextual());
        Api31Impl.setAuthenticationRequired(createBuilder, action.isAuthenticationRequired());
        bundle.putBoolean("android.support.action.showsUserInterface", action.getShowsUserInterface());
        Api20Impl.addExtras(createBuilder, bundle);
        Api20Impl.addAction(this.mBuilder, Api20Impl.build(createBuilder));
    }

    protected Notification buildInternal() {
        return Api16Impl.build(this.mBuilder);
    }

    private void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api16Impl {
        private Api16Impl() {
        }

        static Notification.Builder setSubText(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSubText(charSequence);
        }

        static Notification.Builder setUsesChronometer(Notification.Builder builder, boolean z) {
            return builder.setUsesChronometer(z);
        }

        static Notification.Builder setPriority(Notification.Builder builder, int i) {
            return builder.setPriority(i);
        }

        static Notification build(Notification.Builder builder) {
            return builder.build();
        }
    }

    /* loaded from: classes.dex */
    static class Api17Impl {
        private Api17Impl() {
        }

        static Notification.Builder setShowWhen(Notification.Builder builder, boolean z) {
            return builder.setShowWhen(z);
        }
    }

    /* loaded from: classes.dex */
    static class Api19Impl {
        private Api19Impl() {
        }

        static Notification.Builder setExtras(Notification.Builder builder, Bundle bundle) {
            return builder.setExtras(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api20Impl {
        private Api20Impl() {
        }

        static Notification.Action.Builder createBuilder(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(i, charSequence, pendingIntent);
        }

        static Notification.Action.Builder addRemoteInput(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        static Notification.Action.Builder addExtras(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        static Notification.Builder addAction(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        static Notification.Action build(Notification.Action.Builder builder) {
            return builder.build();
        }

        static String getGroup(Notification notification) {
            return notification.getGroup();
        }

        static Notification.Builder setGroup(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        static Notification.Builder setGroupSummary(Notification.Builder builder, boolean z) {
            return builder.setGroupSummary(z);
        }

        static Notification.Builder setLocalOnly(Notification.Builder builder, boolean z) {
            return builder.setLocalOnly(z);
        }

        static Notification.Builder setSortKey(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }
    }

    /* loaded from: classes.dex */
    static class Api21Impl {
        private Api21Impl() {
        }

        static Notification.Builder addPerson(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        static Notification.Builder setCategory(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        static Notification.Builder setColor(Notification.Builder builder, int i) {
            return builder.setColor(i);
        }

        static Notification.Builder setVisibility(Notification.Builder builder, int i) {
            return builder.setVisibility(i);
        }

        static Notification.Builder setPublicVersion(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        static Notification.Builder setSound(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        static Notification.Action.Builder createBuilder(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        static Notification.Builder setSmallIcon(Notification.Builder builder, Object obj) {
            return builder.setSmallIcon((Icon) obj);
        }

        static Notification.Builder setLargeIcon(Notification.Builder builder, Icon icon) {
            return builder.setLargeIcon(icon);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api24Impl {
        private Api24Impl() {
        }

        static Notification.Action.Builder setAllowGeneratedReplies(Notification.Action.Builder builder, boolean z) {
            return builder.setAllowGeneratedReplies(z);
        }

        static Notification.Builder setRemoteInputHistory(Notification.Builder builder, CharSequence[] charSequenceArr) {
            return builder.setRemoteInputHistory(charSequenceArr);
        }

        static Notification.Builder setCustomContentView(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomContentView(remoteViews);
        }

        static Notification.Builder setCustomBigContentView(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomBigContentView(remoteViews);
        }

        static Notification.Builder setCustomHeadsUpContentView(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomHeadsUpContentView(remoteViews);
        }
    }

    /* loaded from: classes.dex */
    static class Api26Impl {
        private Api26Impl() {
        }

        static Notification.Builder createBuilder(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        static Notification.Builder setGroupAlertBehavior(Notification.Builder builder, int i) {
            return builder.setGroupAlertBehavior(i);
        }

        static Notification.Builder setColorized(Notification.Builder builder, boolean z) {
            return builder.setColorized(z);
        }

        static Notification.Builder setBadgeIconType(Notification.Builder builder, int i) {
            return builder.setBadgeIconType(i);
        }

        static Notification.Builder setSettingsText(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSettingsText(charSequence);
        }

        static Notification.Builder setShortcutId(Notification.Builder builder, String str) {
            return builder.setShortcutId(str);
        }

        static Notification.Builder setTimeoutAfter(Notification.Builder builder, long j) {
            return builder.setTimeoutAfter(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        static Notification.Action.Builder setSemanticAction(Notification.Action.Builder builder, int i) {
            return builder.setSemanticAction(i);
        }

        static Notification.Builder addPerson(Notification.Builder builder, android.app.Person person) {
            return builder.addPerson(person);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        static Notification.Action.Builder setContextual(Notification.Action.Builder builder, boolean z) {
            return builder.setContextual(z);
        }

        static Notification.Builder setLocusId(Notification.Builder builder, Object obj) {
            return builder.setLocusId((LocusId) obj);
        }

        static Notification.Builder setBubbleMetadata(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            return builder.setBubbleMetadata(bubbleMetadata);
        }

        static Notification.Builder setAllowSystemGeneratedContextualActions(Notification.Builder builder, boolean z) {
            return builder.setAllowSystemGeneratedContextualActions(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api31Impl {
        private Api31Impl() {
        }

        static Notification.Action.Builder setAuthenticationRequired(Notification.Action.Builder builder, boolean z) {
            return builder.setAuthenticationRequired(z);
        }

        static Notification.Builder setForegroundServiceBehavior(Notification.Builder builder, int i) {
            return builder.setForegroundServiceBehavior(i);
        }
    }
}
