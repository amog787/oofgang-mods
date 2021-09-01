.class public Lcom/android/settings/applications/AppDomainsPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "AppDomainsPreference.java"


# instance fields
.field private mNumEntries:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget p1, Lcom/android/settings/R$layout;->app_domains_dialog:I

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 34
    sget p1, Lcom/android/settings/R$layout;->app_domains_item:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 45
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    if-nez v1, :cond_0

    .line 47
    sget p0, Lcom/android/settings/R$string;->domain_urls_summary_none:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    iget p0, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 53
    sget p0, Lcom/android/settings/R$string;->domain_urls_summary_one:I

    goto :goto_0

    .line 54
    :cond_1
    sget p0, Lcom/android/settings/R$string;->domain_urls_summary_some:I

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 55
    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 0

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    sget p2, Lcom/android/settings/R$id;->domain_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    return-void
.end method
