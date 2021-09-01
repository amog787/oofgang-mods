.class public Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPAssistantAPPSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;
    }
.end annotation


# static fields
.field private static final ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

.field private static final ASSIST_SERVICE_PROBE:Landroid/content/Intent;

.field private static final KEY_QUICK_TURN_ON_ASSISTANT_APP:Ljava/lang/String; = "quick_turn_on_assistant_app"


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mAssistantAppDialog:Landroid/app/AlertDialog;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;",
            ">;"
        }
    .end annotation
.end field

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mSelectAssistantAppDialog:Landroid/app/AlertDialog;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "quick_turn_on_assistant_app"

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 50
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addAssistActivities()V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 223
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    new-instance v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 206
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v2, v3, v4}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 208
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    new-instance v4, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v2}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

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

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->addAssistServices()V

    .line 232
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->addAssistActivities()V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;

    .line 237
    iget-object v4, v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iget-object v3, v3, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$Info;->component:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getDefaultKey()Ljava/lang/String;
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 79
    :cond_0
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mPm:Landroid/content/pm/PackageManager;

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

    .line 88
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 88
    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private noAssistantAppDialog()V
    .locals 4

    .line 128
    new-instance v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$1;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 138
    new-instance v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$2;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 145
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->oneplus_no_assistant_app_dialog:I

    .line 146
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    .line 147
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistantAppDialog:Landroid/app/AlertDialog;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private toSelectAssistantAppDialog()V
    .locals 4

    .line 171
    new-instance v0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 186
    new-instance v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$4;-><init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V

    .line 193
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->oneplus_to_select_assistant_app_dialog:I

    .line 194
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    .line 195
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 196
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSelectAssistantAppDialog:Landroid/app/AlertDialog;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

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

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "quick_turn_on_assistant_app"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

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

    .line 70
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

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

    const-string p0, "quick_turn_on_assistant_app"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 267
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "quick_turn_on_assistant_app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.intent.OPDefaultVoiceAssistPicker"

    .line 269
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "assistntapp"

    const-string v1, "onClick"

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

.method public onPause()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistantAppDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistantAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 161
    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mAssistantAppDialog:Landroid/app/AlertDialog;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSelectAssistantAppDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSelectAssistantAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSelectAssistantAppDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "quick_turn_on_voice_assistant"

    const/4 v4, 0x0

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 108
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "/"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->isEnabledApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 109
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    :goto_3
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_7

    .line 121
    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    .line 122
    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 123
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    :cond_7
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 3

    .line 250
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->noAssistantAppDialog()V

    goto :goto_1

    .line 253
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 254
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "quick_turn_on_voice_assistant"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_1

    const-string p0, "on"

    goto :goto_0

    :cond_1
    const-string p0, "off"

    .line 256
    :goto_0
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->toSelectAssistantAppDialog()V

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
