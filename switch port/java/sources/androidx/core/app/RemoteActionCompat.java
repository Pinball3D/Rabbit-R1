package androidx.core.app;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.graphics.drawable.Icon;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import androidx.versionedparcelable.VersionedParcelable;

/* loaded from: classes.dex */
public final class RemoteActionCompat implements VersionedParcelable {
    public PendingIntent mActionIntent;
    public CharSequence mContentDescription;
    public boolean mEnabled;
    public IconCompat mIcon;
    public boolean mShouldShowIcon;
    public CharSequence mTitle;

    public PendingIntent getActionIntent() {
        return this.mActionIntent;
    }

    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    public IconCompat getIcon() {
        return this.mIcon;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    public void setShouldShowIcon(boolean z) {
        this.mShouldShowIcon = z;
    }

    public boolean shouldShowIcon() {
        return this.mShouldShowIcon;
    }

    public RemoteActionCompat(IconCompat iconCompat, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        this.mIcon = (IconCompat) Preconditions.checkNotNull(iconCompat);
        this.mTitle = (CharSequence) Preconditions.checkNotNull(charSequence);
        this.mContentDescription = (CharSequence) Preconditions.checkNotNull(charSequence2);
        this.mActionIntent = (PendingIntent) Preconditions.checkNotNull(pendingIntent);
        this.mEnabled = true;
        this.mShouldShowIcon = true;
    }

    public RemoteActionCompat() {
    }

    public RemoteActionCompat(RemoteActionCompat remoteActionCompat) {
        Preconditions.checkNotNull(remoteActionCompat);
        this.mIcon = remoteActionCompat.mIcon;
        this.mTitle = remoteActionCompat.mTitle;
        this.mContentDescription = remoteActionCompat.mContentDescription;
        this.mActionIntent = remoteActionCompat.mActionIntent;
        this.mEnabled = remoteActionCompat.mEnabled;
        this.mShouldShowIcon = remoteActionCompat.mShouldShowIcon;
    }

    public static RemoteActionCompat createFromRemoteAction(RemoteAction remoteAction) {
        Preconditions.checkNotNull(remoteAction);
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat(IconCompat.createFromIcon(Api26Impl.getIcon(remoteAction)), Api26Impl.getTitle(remoteAction), Api26Impl.getContentDescription(remoteAction), Api26Impl.getActionIntent(remoteAction));
        remoteActionCompat.setEnabled(Api26Impl.isEnabled(remoteAction));
        remoteActionCompat.setShouldShowIcon(Api28Impl.shouldShowIcon(remoteAction));
        return remoteActionCompat;
    }

    public RemoteAction toRemoteAction() {
        RemoteAction createRemoteAction = Api26Impl.createRemoteAction(this.mIcon.toIcon(), this.mTitle, this.mContentDescription, this.mActionIntent);
        Api26Impl.setEnabled(createRemoteAction, isEnabled());
        Api28Impl.setShouldShowIcon(createRemoteAction, shouldShowIcon());
        return createRemoteAction;
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static boolean shouldShowIcon(RemoteAction remoteAction) {
            return remoteAction.shouldShowIcon();
        }

        static void setShouldShowIcon(RemoteAction remoteAction, boolean z) {
            remoteAction.setShouldShowIcon(z);
        }
    }

    /* loaded from: classes.dex */
    static class Api26Impl {
        private Api26Impl() {
        }

        static CharSequence getContentDescription(RemoteAction remoteAction) {
            return remoteAction.getContentDescription();
        }

        static PendingIntent getActionIntent(RemoteAction remoteAction) {
            return remoteAction.getActionIntent();
        }

        static CharSequence getTitle(RemoteAction remoteAction) {
            return remoteAction.getTitle();
        }

        static Icon getIcon(RemoteAction remoteAction) {
            return remoteAction.getIcon();
        }

        static boolean isEnabled(RemoteAction remoteAction) {
            return remoteAction.isEnabled();
        }

        static RemoteAction createRemoteAction(Icon icon, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
            return new RemoteAction(icon, charSequence, charSequence2, pendingIntent);
        }

        static void setEnabled(RemoteAction remoteAction, boolean z) {
            remoteAction.setEnabled(z);
        }
    }
}
