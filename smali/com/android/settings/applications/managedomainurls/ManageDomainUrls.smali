.class public Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ManageDomainUrls.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->manage_domain_url_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ManageDomainUrls"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x8f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 51
    sget p0, Lcom/android/settings/R$xml;->manage_domain_url_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 46
    const-class p1, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->setFragment(Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;)V

    return-void
.end method
