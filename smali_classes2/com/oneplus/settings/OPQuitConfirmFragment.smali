.class public abstract Lcom/oneplus/settings/OPQuitConfirmFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPQuitConfirmFragment.java"

# interfaces
.implements Lcom/oneplus/settings/OPOnBackPressedListener;


# instance fields
.field public mOnPressListener:Lcom/oneplus/settings/OnPressListener;

.field private mWarnDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPQuitConfirmFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private performBackEvent()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->needShowWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget v0, Lcom/android/settings/R$string;->oneplus_custom_drop_title:I

    sget v1, Lcom/android/settings/R$string;->menu_cancel:I

    sget v2, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/settings/OPQuitConfirmFragment;->showWarningDialog(III)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public doBack()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->performBackEvent()V

    return-void
.end method

.method protected abstract needShowWarningDialog()Z
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->performBackEvent()V

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 38
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setOnPressListener(Lcom/oneplus/settings/OnPressListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mOnPressListener:Lcom/oneplus/settings/OnPressListener;

    return-void
.end method

.method public showWarningDialog(III)V
    .locals 2

    .line 44
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/oneplus/settings/OPQuitConfirmFragment$2;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment$2;-><init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V

    .line 47
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/oneplus/settings/OPQuitConfirmFragment$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPQuitConfirmFragment$1;-><init>(Lcom/oneplus/settings/OPQuitConfirmFragment;)V

    .line 57
    invoke-virtual {v0, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPQuitConfirmFragment;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
