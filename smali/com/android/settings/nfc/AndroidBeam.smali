.class public Lcom/android/settings/nfc/AndroidBeam;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x45

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 112
    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_1

    .line 115
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 121
    :goto_1
    sget p0, Lcom/android/settings/R$string;->android_beam_settings_title:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->help_uri_beam:I

    .line 72
    const-class v0, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_outgoing_beam"

    .line 78
    invoke-static {p3, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 82
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 81
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 84
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p1, v1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    .line 87
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 90
    :cond_0
    sget p3, Lcom/android/settings/R$layout;->op_preference_footer:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    const p2, 0x1020016

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 96
    sget p2, Lcom/android/settings/R$string;->android_beam_explained:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 137
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result p1

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method
