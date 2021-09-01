.class public Lcom/android/settings/notification/NotificationAssistantPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "NotificationAssistantPicker.java"

# interfaces
.implements Lcom/android/settingslib/applications/ServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mCandidateInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mServiceListing:Lcom/android/settingslib/applications/ServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->notification_assistant_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/NotificationAssistantPicker;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mCandidateInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mCandidateInfos:Ljava/util/List;

    return-object p0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 3

    .line 104
    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_assistant_security_warning_summary:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    .line 107
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationBackend;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x316

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 77
    sget p0, Lcom/android/settings/R$xml;->notification_assistant_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 58
    new-instance v0, Lcom/android/settingslib/applications/ServiceListing$Builder;

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "NotiAssistantPicker"

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setTag(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const-string p1, "enabled_notification_assistant"

    .line 60
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const-string p1, "android.service.notification.NotificationAssistantService"

    .line 61
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const-string p1, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const-string p1, "notification assistant"

    .line 63
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    .line 64
    invoke-virtual {v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->build()Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ServiceListing;->addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ServiceListing;->removeCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    return-void
.end method

.method public onServicesReloaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {p1, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    new-instance p1, Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iput-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mCandidateInfos:Ljava/util/List;

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPicker;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 94
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationAssistantGranted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
