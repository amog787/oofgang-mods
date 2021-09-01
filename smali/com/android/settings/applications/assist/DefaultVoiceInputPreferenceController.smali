.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultVoiceInputPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

.field private mPreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    .line 52
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 53
    new-instance v0, Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/assist/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    .line 54
    invoke-virtual {v0}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    return-void
.end method

.method private getDefaultAppKey()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updatePreference()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 80
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 10

    .line 102
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getDefaultAppKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    .line 107
    iget-object v3, v8, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    return-object v0

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    .line 114
    iget-object v3, v8, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "voice_input_settings"

    return-object p0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 125
    instance-of p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    check-cast p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->getSettingIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    .line 64
    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    .line 66
    invoke-virtual {v1, p0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    .line 67
    invoke-static {p0, v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->isCurrentAssistVoiceService(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/applications/assist/AssistSettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistSettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    return-void
.end method
