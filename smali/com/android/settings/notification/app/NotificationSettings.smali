.class public abstract Lcom/android/settings/notification/app/NotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected mArgs:Landroid/os/Bundle;

.field protected mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected mContext:Landroid/content/Context;

.field protected mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notification/app/NotificationPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field protected mConversationDrawable:Landroid/graphics/drawable/Drawable;

.field protected mConversationInfo:Landroid/content/pm/ShortcutInfo;

.field protected mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field protected mInstantAppPKG:Ljava/lang/String;

.field protected mIntent:Landroid/content/Intent;

.field protected mListeningToPackageRemove:Z

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mRm:Landroid/app/role/RoleManager;

.field protected mShowLegacyChannelConfig:Z

.field protected mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mUid:I

.field protected mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mShowLegacyChannelConfig:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;-><init>(Lcom/android/settings/notification/app/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    .line 347
    new-instance v0, Lcom/android/settings/notification/app/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/NotificationSettings$1;-><init>(Lcom/android/settings/notification/app/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/app/NotificationSettings;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/app/NotificationSettings;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 304
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 306
    aget-object v3, p2, v2

    .line 307
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIPm:Landroid/content/pm/IPackageManager;

    const v4, 0x400040

    iget v5, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    .line 313
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 311
    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotifiSettingsBase"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private loadAppRow()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mRm:Landroid/app/role/RoleManager;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    return-void
.end method

.method private loadChannel()V
    .locals 5

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_ID"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    const-string v3, ":settings:show_fragment_args"

    .line 214
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-string v1, "android.provider.extra.CONVERSATION_ID"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method private loadChannelGroup()V
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "miscellaneous"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 252
    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    :cond_3
    return-void
.end method

.method private loadConversation()V
    .locals 11

    .line 223
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 224
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 228
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->getConversationInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v7, :cond_1

    .line 230
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v8, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v9, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 232
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v10

    .line 230
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected collectConfigActivities()V
    .locals 7

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 270
    sget-boolean v2, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    const-string v3, "NotifiSettingsBase"

    if-eqz v2, :cond_1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preference activities"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " ;_;"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 275
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 276
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 277
    sget-boolean v4, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 286
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 287
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 288
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_4

    .line 289
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_2

    .line 292
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 293
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.extra.CHANNEL_GROUP_ID"

    .line 292
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 9

    .line 98
    const-class v0, Lcom/android/settings/notification/app/ConversationHeaderPreferenceController;

    const-class v1, Lcom/android/settings/notification/app/HeaderPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 104
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 105
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mRm:Landroid/app/role/RoleManager;

    const-string p1, "package"

    .line 107
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIPm:Landroid/content/pm/IPackageManager;

    .line 110
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v2, "uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    const/4 v2, -0x1

    const-string v3, "app_uid"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    .line 117
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v2, "arg_instant_package_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mInstantAppPKG:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 121
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mInstantAppPKG:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/android/settings/notification/NotificationBackend;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 124
    :cond_3
    iget p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    if-gez p1, :cond_4

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/app/NotificationSettings;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_7

    .line 134
    iget p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUserId:I

    .line 135
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 138
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannel()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadAppRow()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannelGroup()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->collectConfigActivities()V

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 144
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 146
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 151
    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 155
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v8, p0, Lcom/android/settings/notification/app/NotificationSettings;->mInstantAppPKG:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/notification/app/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    const-string v0, "NotifiSettingsBase"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-nez p1, :cond_0

    const-string p1, "No intent"

    .line 167
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->toastAndFinish()V

    return-void

    .line 172
    :cond_0
    iget p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->startListeningToPackageRemove()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Missing package or uid or packageinfo"

    .line 173
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->toastAndFinish()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->stopListeningToPackageRemove()V

    .line 184
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method protected onPackageRemoved()V
    .locals 0

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 190
    iget v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    const-string v1, "NotifiSettingsBase"

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadAppRow()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    const-string v0, "Can\'t load package"

    .line 200
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannel()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadConversation()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannelGroup()V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->collectConfigActivities()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Missing package or uid or packageinfo"

    .line 191
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method protected startListeningToPackageRemove()V
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected toastAndFinish()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->app_not_found_dlg_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
