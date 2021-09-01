.class public Lcom/oneplus/settings/OPDefaultAssistPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPDefaultAssistPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;,
        Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

.field private static final ASSIST_SERVICE_PROBE:Landroid/content/Intent;

.field private static final QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;",
            ">;"
        }
    .end annotation
.end field

.field final mKEY:Ljava/lang/String;

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

.field private mSelectAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

.field private mSettingObserver:Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const-string v0, "quick_turn_on_voice_assistant"

    .line 47
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAvailableAssistants:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mKEY:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 59
    new-instance p2, Lcom/android/internal/app/AssistUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 38
    sget-object v0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->QUICK_TURN_ON_VOICE_ASSISTANT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addAssistActivities()V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 254
    iget-object v2, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAvailableAssistants:Ljava/util/List;

    new-instance v3, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 7

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 237
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v3, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v2, v3, v4}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 239
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAvailableAssistants:Ljava/util/List;

    new-instance v4, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v2}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->addAssistServices()V

    .line 186
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->addAssistActivities()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v2, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;

    .line 191
    iget-object v4, v3, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iget-object v3, v3, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getDefaultKey()Ljava/lang/String;
    .locals 4

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 212
    :cond_0
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v1, v2, p0, v3, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private isEnabledApp(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    .line 221
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 221
    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private synthetic lambda$displayPreference$0(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 2

    .line 67
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.intent.OPDefaultVoiceAssistPicker"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "assistntapp"

    const-string v1, "onClick"

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 4

    .line 74
    iget-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    .line 75
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->noAssistantAppDialog()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "quick_turn_on_voice_assistant"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {p1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "on"

    .line 81
    invoke-static {v1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->toSelectAssistantAppDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method private noAssistantAppDialog()V
    .locals 4

    .line 261
    new-instance v0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$1;-><init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V

    .line 271
    new-instance v1, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$2;-><init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V

    .line 278
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->oneplus_no_assistant_app_dialog:I

    .line 279
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x104000a

    .line 280
    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    .line 283
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private toSelectAssistantAppDialog()V
    .locals 4

    .line 287
    new-instance v0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$3;-><init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V

    .line 302
    new-instance v1, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$4;-><init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V

    .line 309
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->oneplus_to_select_assistant_app_dialog:I

    .line 310
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x104000a

    .line 311
    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    .line 312
    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mSelectAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    .line 315
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    .line 66
    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPDefaultAssistPreferenceController$KWKnr-rDcn-7SAkG4n3ugI9yE2M;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/-$$Lambda$OPDefaultAssistPreferenceController$KWKnr-rDcn-7SAkG4n3ugI9yE2M;-><init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setOnGearClickListener(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnGearClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPDefaultAssistPreferenceController$EwxuNvCBke1qXrvlZH54u4VRWNM;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/-$$Lambda$OPDefaultAssistPreferenceController$EwxuNvCBke1qXrvlZH54u4VRWNM;-><init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setOnRadioButtonClickListener(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference$OnRadioButtonClickListener;)V

    .line 88
    new-instance p1, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;-><init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mKEY:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$displayPreference$0$OPDefaultAssistPreferenceController(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->lambda$displayPreference$0(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$OPDefaultAssistPreferenceController(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->lambda$displayPreference$1(Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    iput-object v1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mSelectAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mSelectAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 151
    iput-object v1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mSelectAssistantAppDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 109
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "/"

    const-string v3, "quick_turn_on_voice_assistant"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    goto :goto_3

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->isEnabledApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    goto :goto_3

    .line 113
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    :goto_3
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mSettingObserver:Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;

    if-eqz v0, :cond_6

    .line 124
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_default_voice_assist_picker_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 130
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    sget v0, Lcom/android/settings/R$string;->no_notification_assistant:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 136
    :cond_9
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    sget v0, Lcom/android/settings/R$string;->no_notification_assistant:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_5
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 104
    iget-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->mPreference:Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "quick_turn_on_voice_assistant"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
