.class public Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionMoreOptionsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->captioning_more_options:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 1

    const-string v0, "captioning_locale"

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 86
    sget p0, Lcom/android/settings/R$string;->help_url_caption:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71c

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "captioning"

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 54
    sget p1, Lcom/android/settings/R$xml;->captioning_more_options:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->initializeAllPreferences()V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->updateAllPreferences()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->installUpdateListeners()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionMoreOptionsFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne p0, p1, :cond_0

    .line 77
    check-cast p2, Ljava/lang/String;

    const-string p0, "accessibility_captioning_locale"

    invoke-static {v0, p0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
