package androidx.work;

import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class WorkQuery {
    private final List<UUID> mIds;
    private final List<WorkInfo.State> mStates;
    private final List<String> mTags;
    private final List<String> mUniqueWorkNames;

    public List<UUID> getIds() {
        return this.mIds;
    }

    public List<WorkInfo.State> getStates() {
        return this.mStates;
    }

    public List<String> getTags() {
        return this.mTags;
    }

    public List<String> getUniqueWorkNames() {
        return this.mUniqueWorkNames;
    }

    WorkQuery(Builder builder) {
        this.mIds = builder.mIds;
        this.mUniqueWorkNames = builder.mUniqueWorkNames;
        this.mTags = builder.mTags;
        this.mStates = builder.mStates;
    }

    public static WorkQuery fromIds(List<UUID> ids) {
        return Builder.fromIds(ids).build();
    }

    public static WorkQuery fromIds(UUID... ids) {
        return fromIds((List<UUID>) Arrays.asList(ids));
    }

    public static WorkQuery fromTags(List<String> tags) {
        return Builder.fromTags(tags).build();
    }

    public static WorkQuery fromTags(String... tags) {
        return fromTags((List<String>) Arrays.asList(tags));
    }

    public static WorkQuery fromUniqueWorkNames(String... uniqueWorkNames) {
        return Builder.fromUniqueWorkNames(Arrays.asList(uniqueWorkNames)).build();
    }

    public static WorkQuery fromUniqueWorkNames(List<String> uniqueWorkNames) {
        return Builder.fromUniqueWorkNames(uniqueWorkNames).build();
    }

    public static WorkQuery fromStates(List<WorkInfo.State> states) {
        return Builder.fromStates(states).build();
    }

    public static WorkQuery fromStates(WorkInfo.State... states) {
        return Builder.fromStates(Arrays.asList(states)).build();
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        List<UUID> mIds = new ArrayList();
        List<String> mUniqueWorkNames = new ArrayList();
        List<String> mTags = new ArrayList();
        List<WorkInfo.State> mStates = new ArrayList();

        private Builder() {
        }

        public static Builder fromIds(List<UUID> ids) {
            Builder builder = new Builder();
            builder.addIds(ids);
            return builder;
        }

        public static Builder fromUniqueWorkNames(List<String> uniqueWorkNames) {
            Builder builder = new Builder();
            builder.addUniqueWorkNames(uniqueWorkNames);
            return builder;
        }

        public static Builder fromTags(List<String> tags) {
            Builder builder = new Builder();
            builder.addTags(tags);
            return builder;
        }

        public static Builder fromStates(List<WorkInfo.State> states) {
            Builder builder = new Builder();
            builder.addStates(states);
            return builder;
        }

        public Builder addIds(List<UUID> ids) {
            this.mIds.addAll(ids);
            return this;
        }

        public Builder addUniqueWorkNames(List<String> uniqueWorkNames) {
            this.mUniqueWorkNames.addAll(uniqueWorkNames);
            return this;
        }

        public Builder addTags(List<String> tags) {
            this.mTags.addAll(tags);
            return this;
        }

        public Builder addStates(List<WorkInfo.State> states) {
            this.mStates.addAll(states);
            return this;
        }

        public WorkQuery build() {
            if (this.mIds.isEmpty() && this.mUniqueWorkNames.isEmpty() && this.mTags.isEmpty() && this.mStates.isEmpty()) {
                throw new IllegalArgumentException("Must specify ids, uniqueNames, tags or states when building a WorkQuery");
            }
            return new WorkQuery(this);
        }
    }
}
