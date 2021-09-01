.class public abstract Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;
.super Landroid/app/Activity;
.source "StyleSuggestionActivityBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static isWallpaperServiceEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected addExtras(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/android/settings/display/WallpaperPreferenceController;

    const-string v2, "dummy key"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Lcom/android/settings/display/WallpaperPreferenceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;->addExtras(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;->startFallbackSuggestion()V

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method startFallbackSuggestion()V
    .locals 1

    .line 68
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->wallpaper_suggestion_title:I

    .line 70
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x23

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/high16 p0, 0x2000000

    .line 72
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 73
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
