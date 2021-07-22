.class public Lcom/android/settings/localepicker/OPLocalePicker;
.super Lcom/android/settings/localepicker/OPLocalePickerBase;
.source "OPLocalePicker.java"

# interfaces
.implements Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/localepicker/OPLocalePickerBase;-><init>()V

    .line 58
    invoke-virtual {p0, p0}, Lcom/android/settings/localepicker/OPLocalePickerBase;->setLocaleSelectionListener(Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleSelectionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/localepicker/OPLocalePicker;)Ljava/util/Locale;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object p0
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "locale"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mTargetLocale:Ljava/util/Locale;

    :cond_0
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$string;->language_picker_title_o2:I

    goto :goto_0

    .line 121
    :cond_0
    sget v1, Lcom/android/settings/R$string;->language_picker_title:I

    :goto_0
    new-instance v2, Lcom/android/settings/localepicker/OPLocalePicker$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/localepicker/OPLocalePicker$1;-><init>(Lcom/android/settings/localepicker/OPLocalePicker;I)V

    .line 119
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    const p1, 0x102000a

    .line 75
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const/4 p3, 0x0

    .line 76
    invoke-static {p2, p0, p1, p3}, Lcom/android/settings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    return-object p0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 3

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 88
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en-US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    new-array p0, v1, [Ljava/util/Locale;

    aput-object p1, p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/util/Locale;

    aput-object p1, p0, v2

    .line 94
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    aput-object p1, p0, v1

    .line 96
    :goto_0
    new-instance p1, Landroid/os/LocaleList;

    invoke-direct {p1, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 97
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 98
    invoke-static {p1}, Lcom/android/settings/localepicker/OPLocalePickerBase;->updateLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "locale"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/settings/localepicker/OPLocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method
