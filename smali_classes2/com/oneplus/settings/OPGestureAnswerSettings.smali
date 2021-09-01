.class public Lcom/oneplus/settings/OPGestureAnswerSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGestureAnswerSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final OPGUEST_ANSWER_CALLT_URI:Landroid/net/Uri;

.field private static final OPGUEST_ROUTE_AUDIO_URI:Landroid/net/Uri;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mGestureAnswerCall:Landroidx/preference/SwitchPreference;

.field private mGestureRouteAudio:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "opguest_answer_call"

    .line 26
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPGestureAnswerSettings;->OPGUEST_ANSWER_CALLT_URI:Landroid/net/Uri;

    const-string v0, "opguest_route_audio"

    .line 27
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPGestureAnswerSettings;->OPGUEST_ROUTE_AUDIO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPGestureAnswerSettings$1;-><init>(Lcom/oneplus/settings/OPGestureAnswerSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 16
    sget-object v0, Lcom/oneplus/settings/OPGestureAnswerSettings;->OPGUEST_ANSWER_CALLT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->isGestureAnswerOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .line 16
    sget-object v0, Lcom/oneplus/settings/OPGestureAnswerSettings;->OPGUEST_ROUTE_AUDIO_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->isGestureRouteAudio()Z

    move-result p0

    return p0
.end method

.method private isGestureAnswerOn()Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "opguest_answer_call"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isGestureRouteAudio()Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "opguest_route_audio"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setGestureAnswerOn(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "YXKF6G2OQE"

    const-string v2, "phone.answer"

    const-string v3, "gestureon"

    .line 114
    invoke-static {v1, v2, v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "opguest_answer_call"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setGestureAudioRoute(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "YXKF6G2OQE"

    const-string v2, "phone.answer"

    const-string v3, "gestureswitch"

    .line 123
    invoke-static {v1, v2, v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "opguest_route_audio"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lcom/android/settings/R$xml;->op_gesture_answercall_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "gesture_answer_call"

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    .line 38
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->isGestureAnswerOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 39
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 41
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->supportGestureAudioRoute()Z

    move-result p1

    const-string v0, "gesture_route_audio"

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    .line 43
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->isGestureRouteAudio()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 44
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->oneplus_gesture_of_answer_call_title:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 47
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    sget v1, Lcom/android/settings/R$string;->oneplus_gesture_of_answer_call_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 48
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 103
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->setGestureAnswerOn(Z)V

    return v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 106
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->setGestureAudioRoute(Z)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 56
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_answer_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opguest_route_audio"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureAnswerCall:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->isGestureAnswerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings;->mGestureRouteAudio:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->isGestureRouteAudio()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
