.class public abstract Lcom/android/settings/widget/EmptyTextSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EmptyTextSettings.java"


# instance fields
.field private mEmpty:Lcom/google/android/material/emptyview/EmptyPageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102003f

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->op_control_margin_space4:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/emptyview/EmptyPageView;

    iput-object p1, p0, Lcom/android/settings/widget/EmptyTextSettings;->mEmpty:Lcom/google/android/material/emptyview/EmptyPageView;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->user_credential_none_installed:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/widget/EmptyTextSettings;->mEmpty:Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_empty:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/widget/EmptyTextSettings;->mEmpty:Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method protected setEmptyText(I)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/widget/EmptyTextSettings;->mEmpty:Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p0}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
