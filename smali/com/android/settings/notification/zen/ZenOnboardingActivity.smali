.class public Lcom/android/settings/notification/zen/ZenOnboardingActivity;
.super Landroid/app/Activity;
.source "ZenOnboardingActivity.java"


# static fields
.field static final ALWAYS_SHOW_THRESHOLD:J = 0x48190800L

.field static final PREF_KEY_SUGGESTION_FIRST_DISPLAY_TIME:Ljava/lang/String; = "pref_zen_suggestion_first_display_time_ms"


# instance fields
.field mKeepCurrentSetting:Landroid/view/View;

.field mKeepCurrentSettingButton:Landroid/widget/RadioButton;

.field private mMetrics:Lcom/android/internal/logging/MetricsLogger;

.field mNewSetting:Landroid/view/View;

.field mNewSettingButton:Landroid/widget/RadioButton;

.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 2

    .line 145
    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->wasZenUpdated(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->showSuggestion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->withinShowTimeThreshold(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static showSuggestion(Landroid/content/Context;)Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_zen_settings_suggestion"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static wasZenUpdated(Landroid/content/Context;)Z
    .locals 3

    .line 160
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 162
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 161
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "zen_settings_updated"

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method private static withinShowTimeThreshold(Landroid/content/Context;)Z
    .locals 6

    .line 182
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 184
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_zen_suggestion_first_display_time_ms"

    .line 188
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 192
    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :goto_0
    const-wide/32 v4, 0x48190800

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 198
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "still show zen suggestion based on time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenOnboardingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public launchSettings(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x563

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 118
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->setNotificationManager(Landroid/app/NotificationManager;)V

    .line 62
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "zen_settings_suggestion_viewed"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->setupUI()V

    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 4

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    or-int/lit8 v1, v1, 0x10

    const/4 v2, 0x2

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 131
    invoke-static {}, Landroid/app/NotificationManager$Policy;->getAllSuppressedVisualEffects()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x562

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x57e

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string/jumbo v1, "zen_settings_updated"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method protected setNotificationManager(Landroid/app/NotificationManager;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    return-void
.end method

.method protected setupUI()V
    .locals 3

    .line 73
    sget v0, Lcom/android/settings/R$layout;->zen_onboarding:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    sget v0, Lcom/android/settings/R$id;->zen_onboarding_new_setting:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    .line 76
    sget v0, Lcom/android/settings/R$id;->zen_onboarding_current_setting:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    .line 77
    sget v0, Lcom/android/settings/R$id;->zen_onboarding_new_setting_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    .line 78
    sget v0, Lcom/android/settings/R$id;->zen_onboarding_current_setting_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    .line 80
    new-instance v0, Lcom/android/settings/notification/zen/ZenOnboardingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenOnboardingActivity$1;-><init>(Lcom/android/settings/notification/zen/ZenOnboardingActivity;)V

    .line 88
    new-instance v1, Lcom/android/settings/notification/zen/ZenOnboardingActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenOnboardingActivity$2;-><init>(Lcom/android/settings/notification/zen/ZenOnboardingActivity;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x564

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method
