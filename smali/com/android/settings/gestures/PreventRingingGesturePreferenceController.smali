.class public Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PreventRingingGesturePreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final KEY_MUTE:Ljava/lang/String; = "prevent_ringing_option_mute"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VIBRATE:Ljava/lang/String; = "prevent_ringing_option_vibrate"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field mMutePref:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

.field mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private keyToSetting(Ljava/lang/String;)I
    .locals 3

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x385badaf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    const v0, 0x3b606a19

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "prevent_ringing_option_vibrate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_1
    const-string p0, "prevent_ringing_option_mute"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 174
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 177
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 178
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 82
    sget v0, Lcom/android/settings/R$string;->prevent_ringing_option_vibrate:I

    const-string v1, "prevent_ringing_option_vibrate"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 83
    sget v0, Lcom/android/settings/R$string;->prevent_ringing_option_mute:I

    const-string v1, "prevent_ringing_option_mute"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->getVideoPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_prevent_ringing_category"

    return-object p0
.end method

.method public getVideoPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_prevent_ringing_video"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110107

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz p0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    :cond_1
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 3

    .line 109
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->keyToSetting(Ljava/lang/String;)I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_hush_gesture"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz p0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->onViewVisible()V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 119
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_hush_gesture"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 123
    :goto_1
    iget-object v4, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eq v4, v2, :cond_2

    .line 124
    iget-object v4, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eq v2, v3, :cond_3

    .line 127
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    if-nez p1, :cond_4

    .line 131
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method
