.class public Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "OPDefaultVoiceAssistPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;
    }
.end annotation


# static fields
.field private static final ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

.field private static final ASSIST_SERVICE_PROBE:Landroid/content/Intent;


# instance fields
.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->mAvailableAssistants:Ljava/util/List;

    return-void
.end method

.method private addAssistActivities()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 196
    iget-object v2, p0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->mAvailableAssistants:Ljava/util/List;

    new-instance v3, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 179
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v2, v3, v4}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 181
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->mAvailableAssistants:Ljava/util/List;

    new-instance v4, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v2}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findAssistantByPackageName(Ljava/lang/String;)Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;
    .locals 2

    .line 203
    iget-object p0, p0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;

    .line 204
    iget-object v1, v0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setAssistActivity(Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, p1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    .line 230
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oneplus_default_voice_assist_picker_service"

    .line 229
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setAssistNone()V
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_default_voice_assist_picker_service"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setAssistService(Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;)V
    .locals 3

    .line 217
    iget-object v0, p1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    .line 218
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    .line 220
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 221
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oneplus_default_voice_assist_picker_service"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    invoke-direct {p0}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->addAssistServices()V

    .line 79
    invoke-direct {p0}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->addAssistActivities()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;

    .line 84
    iget-object v4, v3, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    iget-object v3, v3, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected bridge synthetic getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 6

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const-string v2, "oneplus_default_voice_assist_picker_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    .line 170
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x34b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 72
    sget p0, Lcom/android/settings/R$xml;->op_default_voice_assist_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 67
    new-instance p0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {p0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 108
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const-string v2, "oneplus_default_voice_assist_picker_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    :cond_1
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 5

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "assistntapp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->setAssistNone()V

    return v2

    .line 133
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->findAssistantByPackageName(Ljava/lang/String;)Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;

    move-result-object p1

    const-string v1, "switch"

    const-string v3, "quick_turn_on_voice_assistant"

    if-nez p1, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->setAssistNone()V

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onClick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "off"

    .line 140
    invoke-static {v3, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;->isVoiceInteractionService()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    invoke-direct {p0, p1}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->setAssistService(Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-direct {p0, p1}, Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker;->setAssistActivity(Lcom/oneplus/settings/application/assist/OPDefaultVoiceAssistPicker$Info;)V

    .line 152
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "on"

    .line 154
    invoke-static {v3, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method protected shouldShowItemNone()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
