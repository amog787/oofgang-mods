.class public Lcom/android/settings/search/SearchFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SearchFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/search/SearchFeatureProvider;


# instance fields
.field private mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildReferrer(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    .line 77
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android-app"

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-interface {p0, p1}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 69
    invoke-static {p1, p2}, Lcom/android/settings/search/SearchFeatureProviderImpl;->buildReferrer(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.extra.REFERRER"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResources;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableResourcesMobile;

    invoke-direct {v0}, Lcom/android/settingslib/search/SearchIndexableResourcesMobile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResources;

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResources;

    return-object p0
.end method

.method protected isSignatureWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public verifyLaunchSearchResultPageCaller(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 45
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-interface {p0, p1}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 49
    :goto_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search/SearchFeatureProviderImpl;->isSignatureWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Search result intents must be called with from a whitelisted package."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    return-void

    .line 42
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ExternalSettingsTrampoline intents must be called with startActivityForResult"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
